% Crossover Operations
crossOver = 'simpleXover';
crossOverOptions = .65;

% Mutation Operations
mutation = 'binaryMutation';
mutationOptions = .01;

% Evaluation Function
evaluation = 'f2';
evaluationOptions = [];

% Selection Function
selection = 'roulette';
selectionOptions = [];

% Termination Operations
termination = 'maxGenTerm';
terminationOptions = 100;

% Bounds on the variables
bounds = [0,10; 0 10];

% Ga Options [precision float/binar display]
precision = [1e-5];
gaOptions = [precision 0 1];

% generate an initialize population
PopSize = 50;
startPop = initializega(PopSize, bounds, 'f2', [], [precision 0]);


