# search.py
# ---------
# Licensing Information:  You are free to use or extend these projects for
# educational purposes provided that (1) you do not distribute or publish
# solutions, (2) you retain this notice, and (3) you provide clear
# attribution to UC Berkeley, including a link to http://ai.berkeley.edu.
# 
# Attribution Information: The Pacman AI projects were developed at UC Berkeley.
# The core projects and autograders were primarily created by John DeNero
# (denero@cs.berkeley.edu) and Dan Klein (klein@cs.berkeley.edu).
# Student side autograding was added by Brad Miller, Nick Hay, and
# Pieter Abbeel (pabbeel@cs.berkeley.edu).


"""
In search.py, you will implement generic search algorithms which are called by
Pacman agents (in searchAgents.py).
"""

from cmath import inf
from curses.ascii import FF
from itertools import accumulate
from queue import PriorityQueue
from sys import maxsize
import util


class SearchProblem:
    """
    This class outlines the structure of a search problem, but doesn't implement
    any of the methods (in object-oriented terminology: an abstract class).

    You do not need to change anything in this class, ever.
    """

    def getStartState(self):
        """
        Returns the start state for the search problem.
        """
        util.raiseNotDefined()

    def isGoalState(self, state):
        """
          state: Search state

        Returns True if and only if the state is a valid goal state.
        """
        util.raiseNotDefined()

    def getSuccessors(self, state):
        """
          state: Search state

        For a given state, this should return a list of triples, (successor,
        action, stepCost), where 'successor' is a successor to the current
        state, 'action' is the action required to get there, and 'stepCost' is
        the incremental cost of expanding to that successor.
        """
        util.raiseNotDefined()

    def getCostOfActions(self, actions):
        """
         actions: A list of actions to take

        This method returns the total cost of a particular sequence of actions.
        The sequence must be composed of legal moves.
        """
        util.raiseNotDefined()


def tinyMazeSearch(problem):
    """
    Returns a sequence of moves that solves tinyMaze.  For any other maze, the
    sequence of moves will be incorrect, so only use this for tinyMaze.
    """
    from game import Directions
    s = Directions.SOUTH
    w = Directions.WEST
    return  [s, s, w, s, w, w, s, w]

def depthFirstSearch(problem):
    """
    Search the deepest nodes in the search tree first.

    Your search algorithm needs to return a list of actions that reaches the
    goal. Make sure to implement a graph search algorithm.

    To get started, you might want to try some of these simple commands to
    understand the search problem that is being passed in:

    print("Start:", problem.getStartState())
    print("Is the start a goal?", problem.isGoalState(problem.getStartState()))
    print("Start's successors:", problem.getSuccessors(problem.getStartState()))
    """
    "*** YOUR CODE HERE ***"

    print("Start:", problem.getStartState())
    print("Is the start a goal?", problem.isGoalState(problem.getStartState()))
    print("Start's successors:", problem.getSuccessors(problem.getStartState()))

    initialNode = problem.getStartState()
    if problem.isGoalState(initialNode):
        return[]
    
    myQueue = util.Stack()
    visitedNodes = []

    # push nodes and actions
    myQueue.push((initialNode, []))

    while not myQueue.isEmpty():
        currentNode, actions = myQueue.pop()
        if currentNode not in visitedNodes:
            visitedNodes.append(currentNode)

            if problem.isGoalState(currentNode):
                return actions
            
            for nextNode, action, cost in problem.getSuccessors(currentNode):
                newAction = actions + [action]
                myQueue.push((nextNode, newAction))

    util.raiseNotDefined()

def breadthFirstSearch(problem):
    """Search the shallowest nodes in the search tree first."""
    "*** YOUR CODE HERE ***"
    initialNode = problem.getStartState()
    if problem.isGoalState(initialNode):
        return[]
    
    myQueue = util.Queue()
    visitedNodes = []

    myQueue.push((initialNode, []))

    while not myQueue.isEmpty():
        currentNode, actions = myQueue.pop()
        if currentNode not in visitedNodes:
            visitedNodes.append(currentNode)

            if problem.isGoalState(currentNode):
                return actions
            
            for nextNode, action, cost in problem.getSuccessors(currentNode):
                newAction = actions + [action]
                myQueue.push((nextNode, newAction))

    util.raiseNotDefined()

def uniformCostSearch(problem):
    """Search the node of least total cost first."""
    "*** YOUR CODE HERE ***"

    initialNode = problem.getStartState()
    if problem.isGoalState(initialNode):
        return[]
    
    myQueue = util.PriorityQueue()
    visitedNodes = []

    myQueue.push((initialNode, [], 0),0)

    while not myQueue.isEmpty():
        currentNode, actions, prevCost = myQueue.pop()
        if currentNode not in visitedNodes:
            visitedNodes.append(currentNode)

            if problem.isGoalState(currentNode):
                return actions

            for nextNode, action, cost in problem.getSuccessors(currentNode):
                newAction = actions + [action]
                priority = prevCost + cost
                myQueue.push((nextNode, newAction, priority), priority)

    util.raiseNotDefined()

def nullHeuristic(state, problem=None):
    """
    A heuristic function estimates the cost from the current state to the nearest
    goal in the provided SearchProblem.  This heuristic is trivial.
    """
    return 0

# Please DO NOT change the following code, we will use it later
def aStarSearch(problem, heuristic=nullHeuristic):
    """Search the node that has the lowest combined cost and heuristic first."""
    "*** YOUR CODE HERE ***"
    myPQ = util.PriorityQueue()
    startState = problem.getStartState()
    startNode = (startState, '',0, [])
    myPQ.push(startNode,heuristic(startState,problem))
    visited = set()
    best_g = dict()
    while not myPQ.isEmpty():
        node = myPQ.pop()
        state, action, cost, path = node
        if (not state in visited) or cost < best_g.get(state):
            visited.add(state)
            best_g[state]=cost
            if problem.isGoalState(state):
                path = path + [(state, action)]
                actions = [action[1] for action in path]
                del actions[0]
                return actions
            for succ in problem.getSuccessors(state):
                succState, succAction, succCost = succ
                newNode = (succState, succAction, cost + succCost, path + [(state, action)])
                myPQ.push(newNode,heuristic(succState,problem)+cost+succCost)
    util.raiseNotDefined()

def hillClimbing(problem, heuristic=nullHeuristic):
    """classic hill climbing method just for practice."""
    "*** YOUR CODE HERE ***"

    initialNode = problem.getStartState()
    currentNode, actions, prevCost = initialNode, [], heuristic(initialNode, problem)

    while True:
        print("assessing currentNode: ", currentNode)
        if problem.isGoalState(currentNode):
            return actions
        
        myQueue = util.PriorityQueue()
        for nextNode, action, cost in problem.getSuccessors(currentNode):
            newAction = actions + [action]
            priority = prevCost + cost + heuristic(nextNode,problem)
            print("h value is ", heuristic(nextNode,problem))
            myQueue.push((nextNode, newAction, priority), priority)
            print("adding this node to queue: ", nextNode, newAction, priority)
        
        
        currentNode, actions, prevCost = myQueue.pop()
    
    # put the below line at the end of your code or remove it
    util.raiseNotDefined()

def enforcedHillClimbing(problem, heuristic=nullHeuristic):
    """
    Local search with heuristic function.
    You DO NOT need to implement any heuristic, but you DO have to call it.
    The heuristic function is "manhattanHeuristic" from searchAgent.py.
    It will be pass to this function as second argument (heuristic).
    """
    "*** YOUR CODE HERE FOR TASK 1 ***"
    initialNode = problem.getStartState()
    initialAction = []
    while not problem.isGoalState(initialNode):

        # improve() part
        myQueue = util.Queue()
        myQueue.push((initialNode, initialAction))
        visitedNodes = []

        while not myQueue.isEmpty():
            currentNode, currAction = myQueue.pop()
            if currentNode not in visitedNodes:
                visitedNodes.append(currentNode)

                if heuristic(currentNode, problem) < heuristic(initialNode, problem):
                    initialNode, initialAction = currentNode, currAction
                    break
                for nextNode, action, cost in problem.getSuccessors(currentNode):
                    nextAction = currAction + [action]
                    myQueue.push((nextNode, nextAction))
    
    return initialAction
    # put the below line at the end of your code or remove it
    util.raiseNotDefined()

from math import inf as INF   
def bidirectionalAStarEnhanced(problem, heuristic=nullHeuristic, backwardsHeuristic=nullHeuristic):
    
    """
    Bidirectional global search with heuristic function.
    You DO NOT need to implement any heuristic, but you DO have to call them.
    The heuristic functions are "manhattanHeuristic" and "backwardsManhattanHeuristic" from searchAgent.py.
    It will be pass to this function as second and third arguments.
    You can call it by using: heuristic(state,problem) or backwardsHeuristic(state,problem)
    """
    "*** YOUR CODE HERE FOR TASK 2 ***"
    # The problem passed in going to be BidirectionalPositionSearchProblem  

    fQueue = util.PriorityQueue()
    fInitState = problem.getStartState()
    
    # currNodePosition, currentAction, accumulatedCost, fullPath, initialState
    fNode = (fInitState, '', 0, [])
    fQueue.push(fNode, heuristic(fInitState, problem))
    fVisited = set()
    best_g_f = dict()

    # when having multiple goals
    bQueue = util.PriorityQueue()

    bInitState = problem.getGoalStates()
    for goal in bInitState:
        bNode = (goal, '', 0, [])
        bQueue.push(bNode, backwardsHeuristic(goal, problem))
    bVisited = set()
    best_g_b = dict()

    lowerBound = 0
    upperBound = maxsize
    bestPath = []

    forward = True
    while not fQueue.isEmpty() and not bQueue.isEmpty():
        currMinCostF = fQueue.getMinimumPriority()
        currMinCostB = bQueue.getMinimumPriority()
        lowerBound = (currMinCostF + currMinCostB) / 2

        if forward:
            currNode, currAction, currCost, currPath = fQueue.pop()
            fVisited.add(currNode)
            best_g_f[currNode] = (currCost, currPath)

            # if currNode sit on both fw and bw's edge, meaning we have a connection
            if currNode in best_g_b:
                oppoCost, oppoPath = best_g_b.get(currNode)
                if currCost + oppoCost < upperBound:
                    upperBound = currCost + oppoCost
                    oppoPath.reverse()
                    bestPath = currPath + oppoPath
                    
            if lowerBound >= upperBound:
                return bestPath

            for nextNode, nextAction, nextCost in problem.getSuccessors(currNode):
                if nextNode not in fVisited:
                    fn = nextCost + currCost + heuristic(nextNode, problem)
                    dn = nextCost + currCost - backwardsHeuristic(nextNode, problem)
                    baeScore = fn + dn
                    fQueue.push((nextNode, nextAction, nextCost + currCost, currPath + [nextAction]), baeScore)
        
            forward = False
        
        else:

            currNode, currAction, currCost, currPath = bQueue.pop()
            bVisited.add(currNode)
            best_g_b[currNode] = (currCost, currPath)

            # if currNode sit on both fw and bw's edge, meaning we have a connection
            if currNode in best_g_f:
                oppoCost, oppoPath = best_g_f.get(currNode)
                if currCost + oppoCost < upperBound:
                    upperBound = currCost + oppoCost
                    currPath.reverse()
                    bestPath = oppoPath + currPath
            
            if lowerBound >= upperBound:
                return bestPath

            for nextNode, nextAction, nextCost in problem.getBackwardsSuccessors(currNode):
                if nextNode not in bVisited:
                    fn = nextCost + currCost + backwardsHeuristic(nextNode, problem)
                    dn = nextCost + currCost - heuristic(nextNode, problem)
                    baeScore = fn + dn
                    bQueue.push((nextNode, nextAction, nextCost + currCost, currPath + [nextAction]), baeScore)
        
            forward = True

    return bestPath 

    
    # # put the below line at the end of your code or remove it
    util.raiseNotDefined()


# Abbreviations
bfs = breadthFirstSearch
dfs = depthFirstSearch
astar = aStarSearch
ucs = uniformCostSearch

hc = hillClimbing
ehc = enforcedHillClimbing
bae = bidirectionalAStarEnhanced


