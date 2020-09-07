function figure_cube(w,h,l)
    vert = [0 0 0;w 0 0;w l 0;0 l 0;0 0 h;w 0 h;w l h;0 l h];
    fac = [1 2 6 5;2 3 7 6;3 4 8 7;4 1 5 8;1 2 3 4;5 6 7 8];
    patch('Vertices',vert,'Faces',fac,...
          'FaceVertexCData',hsv(1),'FaceColor',	'#4DBEEE')
    view(3)
    axis vis3d
    rotate3d
    xlabel('szerokoœæ')
    ylabel('d³ugoœæ')
    zlabel('wysokoœæ')
end