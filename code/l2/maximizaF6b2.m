% Name: maximizaF6b2.m
% Description: Maximizes the function F6
%

% Definindo a semente no início para fins de comparação
rand('seed',0)

% domínio de x e y [-100, 100]
dominio = [-100 100; -100 100];
%         ^^^^^^^^   ^^^^^^^^
%         x          y
%

% Definindo precisação
% epsilon = 1e-06 (precisão);
epsilon  = 1e-06;
precisao = epsilon;

% Função de avaliação
% è a nossa função proposta no problema, levemente modificada para a API da
% biblioteca GAOT
evalFn  = 'F6';
evalOps = [];

% Operação de Crossover
taxa_de_crossover = .8;      % taxa de Crossover de 80%
xFns  = 'simpleXover';       % função de crossover selecionada
xOpts = [taxa_de_crossover]; % parâmetros da função de crossover

% Operação de mutação
taxa_de_mutacao = 0.01;    % taxa de Mutação de 1%
mFns = 'binaryMutation';   % função de mutação selecionada
mOpts = [taxa_de_mutacao]; % parâmetros da função de mutação

% Função de parada
termFns = 'maxGenTerm';
termOps = [20]; % 200 Generations

% Função de seleção (roulette weel)
selectFn = 'roulette'
selectOps = [];

% GA Options [epsilon float/binar display]
ga_opts=[precisao 0 1];

% Gera uma população inicial de tamanho 100
populacao = 100;
populacao_inicial = initializega(populacao, dominio,'F6', [], [precisao 0]);

[x endPop bestPop trace]=ga( ...
        dominio,             ...
        evalFn,              ...
        evalOps,             ...
        populacao_inicial,   ...
        ga_opts,             ...
        termFns,             ...
        termOps,             ...
        selectFn,            ...
        selectOps,           ...
        xFns,                ...
        xOpts,               ...
        mFns,                ...
        mOpts                ...
);

% x é a melhor solução encontrada
%x

trace

plot(trace(:,1),trace(:,2));

plot(trace(:,1),trace(:,3));