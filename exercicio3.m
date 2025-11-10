% digite seu codigo aqui
function [mu] = exercicio3(t, NC)
    % t: vetor de tempo com instâncias das medições
    % NC: medida do número de células a cada instante t
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    % digite seu codigo aqui
    idx1 = t <= 2;
    t1 = t(idx1);
    x1 = NC(idx1);

    idx2 = t >= 2 & t <= 6;
    t2 = t(idx2);
    x2 = NC(idx2);

    p1 = polyfit(t1, log(x1), 1);
    p2 = polyfit(t2, log(x2), 1);

    mu1 = p1(1);
    mu2 = p2(1);

    % Exibe os resultados
    printf("Taxa de crescimento nas primeiras 2 h: %.4f 1/h\n", mu1);
    printf("Taxa de crescimento de 2 a 6 h: %.4f 1/h\n", mu2);

    % mantenha essas duas linhas finais, subtituindo mu pelo valor que você calculou
    mu = mu2; % Define mu como a taxa do segundo período
    %%%%%%%%%%%%%%%%%%%%%%%%%%
endfunction

