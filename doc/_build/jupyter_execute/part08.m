data = readtable('data/co2_emissionen_worldwide.csv')

x = data{:,'Jahr'};
y = data{:,'Metrische_Tonnen_pro_Einwohner'};

disp(x);
disp(y);

figure();
scatter(x,y);
xlabel('Jahr');
ylabel('Metrische Tonnen pro Einwohner');
title('Weltweiter CO2-Ausstoß von 1990 bis 2018');

% Import Messdaten
data = readtable('data/co2_emissionen_worldwide.csv');
x = data{:,1};
y = data{:,2};

% Datenvisualisierung
figure();
scatter(x,y,'filled');
xlabel('Jahr'); ylabel('Metrische Tonnen pro Einwohner');
grid on;
title('Weltweiter CO2-Ausstoß von 1990 bis 2018')

% blaue y-Koordinaten = Messpunkte
y_blau = data{:,2};

% Berechnung der roten y-Koordinaten, indem wir x-Koordinaten der Messpunkte
% in die Modellfunktion y = m*x + b einsetzen
x = data{:,1};
y_rot = 0.0344 * x - 64.7516;

% Berechnung Gesamtfehler
N = size(x, 1);
gesamtfehler = 1/N * sum( (y_blau - y_rot).^2 );

fprintf('Der Gesamtfehler ist %g.', gesamtfehler);

y_mittelwert = mean(y_blau);
gesamtfehler_mittelwert = 1/N * sum( (y_blau - y_mittelwert).^2 );

fprintf('Der Gesamtfehler für den Mittelwert als Schätzung ist %g.', gesamtfehler_mittelwert);



relativer_fehler = gesamtfehler / gesamtfehler_mittelwert;

fprintf('Der relative Fehler der Modellfunktion im Verhältnis zum Fehler beim Mittelwert ist: %.4f', relativer_fehler);
fprintf('In Prozent umgerechnet ist das: %.2f %%.', relativer_fehler * 100);

x = [-1, 0, 1, 2,  4, 4, 5];
y = [5.4384, 14.3252, 19.2451, 23.3703, 18.2885, 13.8978, 3.7586];

figure();
scatter(x,y, 'filled');

p = polyfit(x, y, 2);

whos p
disp(p)

figure();
scatter(x,y);
hold on;
x_plot = linspace(-1, 5, 100);
y_plot = -2.0021 .* x_plot.^2 + 8.0906 .* x_plot + 14.7279;
plot(x_plot, y_plot);

y_modell = -2.0021 .* x.^2 + 8.0906 .* x + 14.7279;
fehler_modell = sum( (y - y_modell).^2 );

y_mittelwert = mean(y);
fehler_mittelwert = sum( (y - y_mittelwert).^2 );

R2 = 1 - fehler_modell / fehler_mittelwert;
fprintf('R2-Bestimmtheitsmaß: %.4f', R2);
