settings.outformat="pdf";
unitsize(.3cm);

// Parameters
defaultpen(.8); // linewidth
defaultpen(fontsize(15pt));
real p=10; // length of rays
real s=1.5; // size of detectors
arrowbar arrow = ArcArrow(HookHead, 4); // arrowstyle


// Beam splitter
path beam_splitter=box((-8,-1.5), (8.0, 1.5)); // horizontal rectangle
path silvering=box((-8.0,-1.5), (8.0, 0)); // horizontal rectangle

fill(rotate(45)*(beam_splitter), lightcyan); // rotation by 45 degree
fill(rotate(45)*(silvering), mediumgrey); // rotation by 45 degree

// Light rays
draw((-p,0)--(0,0), arrow);
draw((0,0)--(p,0), arrow);
draw((0,0)--(0,p), arrow);
draw((0,-p)--(0,0), arrow);

//detectors
filldraw(shift(p,-s/2)*scale(s)*unitsquare, grey);
filldraw(shift(-s/2,p)*scale(s)*unitsquare, grey);

//labels
label("Signal", (-p,0), W);
label("Local Oscillator", (0,-p), S);
label("$\hat{a}$", (-p/2,0), N);
label("$\hat{a}_{out}$", (p/2,0), S);
label("$\hat{b}_{out}$", (0,p/2), W);
label("$\hat{b}$", (0,-p/2), E);
label("$D_1$", (p+s,0), E);
label("$D_2$", (0,p+s), N);