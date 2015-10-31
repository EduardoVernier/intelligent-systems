F = load('lab1_3.mat')
seabass = F.p_seabass*0.75;
salmon = F.p_salmon*0.25;

figure
norm_seabass = (seabass-min(seabass))/(max(seabass)-min(seabass));
plot(norm_seabass);
hold on;
norm_salmon = (salmon-min(seabass))/(max(seabass)-min(seabass));
plot(norm_salmon,'color','r')
grid on
legend('sea bass','salmon')