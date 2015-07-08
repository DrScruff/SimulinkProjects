% Initialise Telescope Variables
% Add some text

Body.Tube.Length     = 1320;     % mm
Body.Tube.InnerRadius= 125;      % mm
Body.Tube.Thickness  = 1;        % mm
Body.Tube.RGB = [0.5 1 1];

BT = Body.Tube;

Body.Tube.XSection = [BT.InnerRadius 0; ...
                      BT.InnerRadius + BT.Thickness 0; ...
                      BT.InnerRadius + BT.Thickness BT.Length; ...
                      BT.InnerRadius BT.Length];

Body.Mirror.Radius   = 115;      % mm
Body.Mirror.Depth    = 35;       % mm

Body.Mirror.ZOffset  = 100 + Body.Mirror.Depth / 2; 

Body.Shaft.Left.Length    = 100;       % mm
Body.Shaft.Left.Radius    = 15;       % mm
Body.Shaft.Left.RGB       = [1 1 1];  % White

Body.Shaft.Left.XOffset = 0;
Body.Shaft.Left.YOffset = Body.Tube.InnerRadius + Body.Shaft.Left.Length /2;
Body.Shaft.Left.ZOffset = 430; % mm

Body.Shaft.Left.Translation =  [Body.Shaft.Left.XOffset ...
                                Body.Shaft.Left.YOffset ...
                                Body.Shaft.Left.ZOffset];

Body.Shaft.Right.Length    = 100;       % mm
Body.Shaft.Right.Radius    = 15;       % mm
Body.Shaft.Right.RGB       = [1 1 1];  % White
                            
Body.Shaft.Right.XOffset = 0;
Body.Shaft.Right.YOffset = -1 * (Body.Tube.InnerRadius + Body.Shaft.Right.Length /2);
Body.Shaft.Right.ZOffset = 430; % mm

Body.Shaft.Right.Translation =  [Body.Shaft.Right.XOffset ...
                                Body.Shaft.Right.YOffset ...
                                Body.Shaft.Right.ZOffset];
                            
Base.Cradle.Radius = 250; % mm
Base.Cradle.Depth = 25; % mm

Base.Plate.Radius = 400; % mm
Base.Plate.Depth = 25; % mm

Base.Cradle.Height = 550; % mm
Base.Cradle.Width = 300; % mm
Base.Cradle.Top = 50; % mm
Base.Cradle.Thickness = 25; % mm
Base.Cradle.SideOffset = Body.Tube.InnerRadius + Body.Tube.Thickness + 10;
Base.Cradle.XSection = [Base.Cradle.Width/2 0; ...
                        Base.Cradle.Top/2, Base.Cradle.Height; ...
                        Base.Cradle.Top/-2, Base.Cradle.Height; ...
                        Base.Cradle.Width/-2 0];