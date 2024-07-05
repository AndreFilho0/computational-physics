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

% Pontos de interesse
points_x = [16.5, 88.3];
points_y = [31.2, 76.4];

% Interpolação Linear
temperaturas_linear = interp2(x, y, temperaturas, points_x, points_y, 'linear');

% Interpolação Cúbica
temperaturas_cubic = interp2(x, y, temperaturas, points_x, points_y, 'cubic');

% Mostrando os resultados
disp('Temperaturas interpoladas linearmente:');
for i = 1:length(points_x)
    fprintf('Ponto (%.1f cm, %.1f cm): %.2f Celsius\n', points_x(i), points_y(i), temperaturas_linear(i));
end

disp('Temperaturas interpoladas cubicamente:');
for i = 1:length(points_x)
    fprintf('Ponto (%.1f cm, %.1f cm): %.2f Celsius\n', points_x(i), points_y(i), temperaturas_cubic(i));
end
