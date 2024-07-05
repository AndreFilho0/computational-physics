% Definindo os valores das temperaturas
temperaturas = [
    95, 96, 99, 99, 77, 46, 23, 23, 23, 15;
    95, 98, 99, 99, 77, 48, 23, 23, 23, 15;
    97, 97, 199, 199, 98, 79, 48, 23, 23, 15;
    100, 100, 105, 105, 77, 70, 48, 30, 23, 24;
    104, 105, 110, 110, 87, 70, 48, 48, 35, 30;
    113, 115, 117, 110, 99, 89, 67, 63, 57, 57;
    114, 116, 118, 118, 110, 100, 87, 83, 80, 79;
    117, 120, 120, 120, 118, 110, 99, 93, 85, 97;
    117, 120, 140, 120, 118, 110, 105, 100, 99, 97;
    115, 119, 120, 120, 117, 105, 105, 100, 98, 96
];

% Definindo os pontos na superfície da placa
[x, y] = meshgrid(10:10:100, 10:10:100);

% Pontos de interpolação
[xq, yq] = meshgrid(10:1:100, 10:1:100);

% Interpolação cúbica
temperaturas_interp = interp2(x, y, temperaturas, xq, yq, 'cubic');

% Criando o gráfico 3D com interpolação
figure;
surf(xq, yq, temperaturas_interp);

% Definindo os rótulos dos eixos
xlabel('Comprimento (cm)');
ylabel('Largura (cm)');
zlabel('Temperatura (Celsius)');
title('Campo de Temperaturas em uma Placa de Aço com Interpolação Cúbica');

% Ajustando a visualização
colormap('viridis');
colorbar;
shading interp; % Suaviza o sombreamento
