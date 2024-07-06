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

% Encontrando a temperatura máxima e seu índice
[max_temp, max_index] = max(temperaturas(:));
[row_max, col_max] = ind2sub(size(temperaturas), max_index);

% Encontrando a temperatura mínima e seu índice
[min_temp, min_index] = min(temperaturas(:));
[row_min, col_min] = ind2sub(size(temperaturas), min_index);

% Convertendo os índices para coordenadas na placa
x_values = 10:10:100;
y_values = 10:10:100;
x_max = x_values(col_max);
y_max = y_values(row_max);
x_min = x_values(col_min);
y_min = y_values(row_min);

% Mostrando os resultados
fprintf('Região mais quente: (%.1f cm, %.1f cm) com temperatura de %.2f °C\n', x_max, y_max, max_temp);
fprintf('Região mais fria: (%.1f cm, %.1f cm) com temperatura de %.2f °C\n', x_min, y_min, min_temp);
