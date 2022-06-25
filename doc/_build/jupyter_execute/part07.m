x = [-2, -1, 0, 1, 2];
y = [4, 1, 0, 1, 4];

figure();
plot(x,y);

x = linspace(-2, 2, 9);
whos x

y = x.^2;
disp(y)

figure();
plot(x,y);

% Erzeugung Wertetabelle
x = linspace(-2, 2, 101);
y = x.^2;

% Visualisierung
figure;
plot(x,y);

% Erzeugung Wertetabelle
x = linspace(-10,10,200);
y = sin(x);

% Visualisierung
figure();
plot(x,y);
xlabel('Zeit in Sekunden');
ylabel('Stromstärke in Ampere');

% Erzeugung Wertetabelle
x = linspace(-10,10,200);
y = sin(x);

% Visualisierung
figure();
plot(x,y);
xlabel('Zeit in Sekunden');
ylabel('Stromstärke in Ampere');
title('Wechselstrom');

% Erzeugung Wertetabelle
x = linspace(-10,10,200);
y = sin(x);

% Visualisierung
figure();
plot(x,y);
xlabel('Zeit in Sekunden');
ylabel('Stromstärke in Ampere');
title('Wechselstrom');
grid on;

% Erzeugung Wertetabelle
x = [-3, -2, -1, 0, 1, 2, 3];
y = -3 .* x + 7 + randn(1,7);

figure();
scatter(x,y);

% Erzeugung Wertetabelle
x = [-3, -2, -1, 0, 1, 2, 3];
y = -3 .* x + 7 + randn(1,7);

% Visualisierung
figure();
scatter(x,y);
grid on;
xlabel('x');
ylabel('f(x)');
title('f(x)=-3x+7 mit normalverteilter Störung');

% Erzeugung Wertetabelle
x = [1, 2, 3, 4, 5, 6];
y = randi([1, 49], 1, 6);

% Visualisierung
figure();
scatter(x, y, 10);
title('Lottozahlen');
xlabel('Nummer');
ylabel('gezogene Lottozahl');
grid on;

% Erzeugung Wertetabelle
x = [1, 2, 3, 4, 5, 6];
y = randi([1, 49], 1, 6);

% Visualisierung
figure();
scatter(x, y, [], 'red');
title('Lottozahlen');
grid on;

% Erzeugung Wertetabelle
x = linspace(1, 10, 10);
y = randi([-3, 3], 1, 10);

for marker = ['*', '+', 'd', 'p']
    fprintf('Jetzt kommt Markersymbol: %s', marker);
    
    figure();
    scatter(x, y, marker);
end

% Erzeugung Wertetabelle
x  = linspace(-2*pi,2*pi, 200);
y1 = sin(x);
y2 = cos(x);

% Visualisierung
figure();
plot(x,y1);
hold on;
plot(x,y2);

% Erzeugung Wertetabelle
x  = linspace(-2*pi,2*pi, 200);
y1 = sin(x);
y2 = cos(x);

% Visualisierung
figure();
plot(x,y1);
hold on;
plot(x,y2);
legend('Sinus','Kosinus');

% Erzeugung Wertetabelle
anzahl_views = [8.58, 7.53, 5.31, 5.31, 5.1, 4.44, 4.18, 4.06, 4.05, 4.03];

% Visualisierung
figure();
bar(anzahl_views);

% Erzeugung Wertetabelle
youtuber = categorical({'Pinkfong', 'Lius Fonsi', 'LooLoo Kids', 'Ed Sheeran',...
    'Wiz Khalifa', 'Get Movies', 'Mark Ronson', 'Psy', 'Miroshka TV', 'Cocomelon'});
anzahl_views = [8.58, 7.53, 5.31, 5.31, 5.1, 4.44, 4.18, 4.06, 4.05, 4.03];

% Visualisierung
figure();
bar(youtuber, anzahl_views);

% Erzeugung Wertetabelle
anzahl_views = [8.58, 7.53, 5.31, 5.31, 5.1, 4.44, 4.18, 4.06, 4.05, 4.03];
youtuber = reordercats(categorical({'Pinkfong', 'Lius Fonsi', 'LooLoo Kids', 'Ed Sheeran',...
    'Wiz Khalifa', 'Get Movies', 'Mark Ronson', 'Psy', 'Miroshka TV', 'Cocomelon'}) , {'Ed Sheeran', 'Pinkfong', 'Lius Fonsi', 'LooLoo Kids',...
    'Wiz Khalifa', 'Get Movies', 'Mark Ronson', 'Psy', 'Miroshka TV', 'Cocomelon'});

% Visualisierung
figure();
bar(youtuber, anzahl_views);

figure();
bar(youtuber, anzahl_views);
xlabel('YouTuber');
ylabel('Anzahl Views in Mrd.');
title('YouTube-Streams 2021');
