% Setting the seed back to the beginning for comparison sake
rand('seed',0)

% Crossover Operators
xFns = 'simpleXover';
xOpts = [.4];

% Mutation Operators
mFns = 'binaryMutation';

mOpts = [0.005];

% Termination Operators
termFns = 'GenTerm';
termOps = [200]; % 200 Generations

% Selection Function
selectFn = 'roulette'
selectOps = [];

% Evaluation Function
evalFn = 'F6';
evalOps = [];

% Bounds on the variables
bounds = [-10 10; -10 10];

% GA Options [epsilon float/binar display]
gaOpts=[1e-6 0 1];

% Generate an intialize population of size 20
startPop = initializega(20,bounds,'F6',[],[1e-6 0]);

[x endPop bestPop trace]=ga(bounds,evalFn,evalOps,startPop,gaOpts,...
    termFns,termOps,selectFn,selectOps,xFns,xOpts,mFns,mOpts);
