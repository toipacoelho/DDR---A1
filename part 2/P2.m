%Parameters initialization:
N= 50;              % Number of mobile nodes
W= 40;              % Radio range (in meters)
S= 3;               % Maximum speed (in Km/h)
delta= 1;           % Difference between consecutive time instants (in seconds)
T= 3600;            % No. of time instants of the simulation
No = 1;             % No. of nodes

S= S/3.6;           % Conversion of maximum speed to m/s
results= zeros(1,T);% Initialization of the results array

% Generation of initial coordinates, speed and direction of mobile nodes:
[pos,vel, npos]= InitialRandom(N,S,No);
% Visualize node positions:
%{
figure(1)
hold on
plot(pos(:,1),pos(:,2),'o','MarkerEdgeColor','b','MarkerFaceColor','b')
plot(npos(:,1),npos(:,2),'s','MarkerEdgeColor','b','MarkerFaceColor','b','MarkerSize',15)
hold off
axis([0 300 0 200])
drawnow;
%}
% Simulation cycle running all time instants iter:
for iter= 1:T
    % Compute the node pairs with direct connections:
    cla
    L = ConnectedList(N,pos,W,No,npos);
    % Compute the no. of connected node pairs of time instant iter:
    results(iter)= AverageConnectedNodePairs(N,L,No);
    % Update node coordinates and speed values:
    [pos,vel]= UpdateCoordinates(pos,vel,delta);
    % Visualize updated node positions:
    %{
    hold on
    plot(pos(:,1),pos(:,2),'o','MarkerEdgeColor','b','MarkerFaceColor','b')
    plot(npos(:,1),npos(:,2),'s','MarkerEdgeColor','b','MarkerFaceColor','b','MarkerSize',15)
    hold off
    axis([0 300 0 200])
    drawnow;
    %}
end
% Plot in a different window the simulation results:
figure(2)
hold on
plot((1:T)',results')
cumavg = cumsum(results)./(1:T);
plot((1:T)',cumavg', 'r')
% Compute the final result: 
FinalResult = mean(results)
