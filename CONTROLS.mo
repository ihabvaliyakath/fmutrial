model CONTROLS
  Modelica.Blocks.Continuous.PID PID(k = 1, Ti = 10, Td = 0, initType = Modelica.Blocks.Types.Init.InitialOutput)  annotation(
    Placement(transformation(origin = {22, 10}, extent = {{-10, 10}, {10, -10}}, rotation = -0)));
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(transformation(origin = {-26, 10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.SecondOrder secondOrder(k = 2, w = 1, D = 0.7)  annotation(
    Placement(transformation(origin = {82, 10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Step step(height = 1)  annotation(
    Placement(transformation(origin = {-70, 10}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(PID.y, secondOrder.u) annotation(
    Line(points = {{33, 10}, {70, 10}}, color = {0, 0, 127}));
  connect(secondOrder.y, feedback.u2) annotation(
    Line(points = {{94, 10}, {112, 10}, {112, -46}, {-26, -46}, {-26, 2}}, color = {0, 0, 127}));
  connect(feedback.y, PID.u) annotation(
    Line(points = {{-16, 10}, {10, 10}}, color = {0, 0, 127}));
  connect(step.y, feedback.u1) annotation(
    Line(points = {{-58, 10}, {-34, 10}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "4.0.0")));
end CONTROLS;
