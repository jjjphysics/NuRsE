function Figure3abcdef
%% plot figure 3 a-f

simsize = 2;

%% node TYB
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24);
box(axes1,'on');
hold(axes1,'on');
load TYB_node_a2
outputs_node = outputs;
[m,n,z] = size(outputs_node);
node = 1:-1/60:0;
for i = 3:4:500
    output_one_node(1:n,1:z) = outputs_node(i,:,:);
    plot(1-node(1:n),output_one_node(:,1),'-rs','MarkerSize',simsize,'MarkerFaceColor','r','MarkerEdgeColor','r','LineWidth',0.01)
    hold on
end
i = 10;
output_one_node(1:n,1:z) = outputs_node(i,:,:);
plot(1-node(1:n),output_one_node(:,1),'-ks','MarkerSize',simsize,'MarkerFaceColor','k','MarkerEdgeColor','k','LineWidth',2)
hold on
xlabel('f_n','FontSize',36);ylabel('x','FontSize',36)


%% link TYB
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24);
box(axes1,'on');
hold(axes1,'on');
load TYB_link_a2
outputs_link = outputs;
[m,n,z] = size(outputs_link);
link = 1:-3/207:0;
for i = 2:4:500
    output_one_link(1:n,1:z) = outputs_link(i,:,:);
    plot(1-link(1:n),output_one_link(:,1),'-go','MarkerSize',simsize,'MarkerFaceColor','g','MarkerEdgeColor','g','LineWidth',0.01)
    hold on
end
i = 18;
output_one_link(1:n,1:z) = outputs_link(i,:,:);
plot(1-link(1:n),output_one_link(:,1),'-ko','MarkerSize',simsize,'MarkerFaceColor','k','MarkerEdgeColor','k','LineWidth',2)
  
% xlim([0,1]);ylim([0,1]);
xlabel('f_l','FontSize',36);ylabel('x','FontSize',36)

%% weight TYB
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24);
box(axes1,'on');
hold(axes1,'on');
load TYB_weight_a2
outputs_weight = outputs;
[m,n,z] = size(outputs_weight);
weight = 1:-0.04:0;
for i = 5:5:500
    output_one_weight(1:n,1:z) = outputs_weight(i,:,:);
%     pause
    plot(1-weight(1:n),output_one_weight(:,1),'-b^','MarkerSize',simsize,'MarkerFaceColor','b','MarkerEdgeColor','b','LineWidth',0.01)
    hold on
end
i = 10;
output_one_weight(1:n,1:z) = outputs_weight(i,:,:);
plot(1-weight(1:n),output_one_weight(:,1),'-k^','MarkerSize',simsize,'MarkerFaceColor','k','MarkerEdgeColor','k','LineWidth',2)

xlabel('f_w','FontSize',36);ylabel('x','FontSize',36)


%% node TECB
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24);
box(axes1,'on');
hold(axes1,'on');

load TECB_node_a2
outputs_node = outputs;
[m,n,z] = size(outputs_node);
node = 1:-1/15:0;
node = node(1:n);
output_one_node = [];
for i = 1:4:m
    output_one_node(1:n,1:z) = outputs_node(i,:,:);
    plot(1-node(1:n),output_one_node(:,1),'-rs','MarkerSize',simsize,'MarkerFaceColor','r','MarkerEdgeColor','r','LineWidth',0.01)
    hold on
end
i = 10;
output_one_node(1:n,1:z) = outputs_node(i,:,:);
plot(1-node(1:n),output_one_node(:,1),'-ks','MarkerSize',simsize,'MarkerFaceColor','k','MarkerEdgeColor','k','LineWidth',2)
  
xlabel('f_n','FontSize',36);ylabel('x','FontSize',36)

%% link TECB
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24);
box(axes1,'on');
hold(axes1,'on');
load TECB_link_a2
outputs_link = outputs;
[m,n,z] = size(outputs_link)
link = 1:-1/38:0;
link = link(1:n);
output_one_link = [];
for i = 2:4:500
    output_one_link(1:n,1:z) = outputs_link(i,:,:);
    1-link
    output_one_link(:,1)
    plot(1-link,output_one_link(:,1),'-go','MarkerSize',simsize,'MarkerFaceColor','g','MarkerEdgeColor','g','LineWidth',0.01)
    hold on
end
i = 10;
output_one_link(1:n,1:z) = outputs_link(i,:,:);
plot(1-link,output_one_link(:,1),'-ko','MarkerSize',simsize,'MarkerFaceColor','k','MarkerEdgeColor','k','LineWidth',2)  
xlabel('f_l','FontSize',36);ylabel('x','FontSize',36)

%% weight TECB
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24);
box(axes1,'on');
hold(axes1,'on');
load TECB_weight_a2
outputs_weight = outputs;
[m,n,z] = size(outputs_weight);
weight = 1:-0.04:0;
weight = weight(1:n);
output_one_weight = [];
for i = 2:5:m
    output_one_weight(1:n,1:z) = outputs_weight(i,:,:);
    plot(1-weight,output_one_weight(:,1),'-bo','MarkerSize',simsize,'MarkerFaceColor','b','MarkerEdgeColor','b','LineWidth',0.01)
    hold on
end
i = 52;
output_one_weight(1:n,1:z) = outputs_weight(i,:,:);
plot(1-weight,output_one_weight(:,1),'-ko','MarkerSize',simsize,'MarkerFaceColor','k','MarkerEdgeColor','k','LineWidth',2)
   
xlabel('f_w','FontSize',36);ylabel('x','FontSize',36)


