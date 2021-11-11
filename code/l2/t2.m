% Setting the seed back to the beginning for comparison sake
rand('seed',0)

% Crossover Operators
xFns = 'simpleXover';
xOpts = [.8];

% Mutation Operators
mFns = 'binaryMutation';
mOpts = [0.01];

% Termination Operators
termFns = 'maxGenTerm';
termOps = [200]; % 200 Generations

% Selection Function
selectFn = 'roulette'
selectOps = [];

% Evaluation Function
evalFn = 'f2';
evalOps = [];

% Bounds on the variables
bounds = [-100 100; -100 100];

% GA Options [epsilon float/binar display]
gaOpts=[1e-6 0 1];

% Generate an intialize population of size 20
startPop = initializega(100,bounds,'f2',[],[1e-6 0]);

[x endPop bestPop trace]=ga(bounds,evalFn,evalOps,startPop,gaOpts,...
    termFns,termOps,selectFn,selectOps,xFns,xOpts,mFns,mOpts);

% x is the best solution found
x