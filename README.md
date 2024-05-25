# A code snipped to approximate Pi based on the Monte Carlo method.
## Based on randomly positioning points on a circle and doing checks to see if point is inside or outside the circle

  - Take a forth of a unit disk on a plane sides 1, with the center of this disk as the origin on the plane

![image (1)](https://github.com/MistiikDev/PiApproximationLua/assets/91028158/efff7757-62c9-45e8-a238-cb1b8612f2e5)
  - Distance from the origin of M, a point randomly placed on the plane is :
  
  ![image](https://github.com/MistiikDev/PiApproximationLua/assets/91028158/61f924a3-9ed1-42ad-9dbe-a42de24f3d69)
  - If M is inside the circle we can write:

![image](https://github.com/MistiikDev/PiApproximationLua/assets/91028158/7ade12e8-9a39-49ba-bff1-678e3aa30fc5)
  - The area of the entire circle is:

![image](https://github.com/MistiikDev/PiApproximationLua/assets/91028158/b7623df4-9ff9-4985-8ffa-6606fe02cc75)
  - We can isolate the area of the forth of the circle, and with n the number of points inside the circle and k the total iterations we have:

![image](https://github.com/MistiikDev/PiApproximationLua/assets/91028158/2848b9a6-94e2-4724-8787-a29509df2672)

### Takes around 5 seconds to generate a value of pi +- 0.2 of the real value. Going beyond 20000 iterations breaks roblox studio

![image](https://github.com/MistiikDev/PiApproximationLua/assets/91028158/e69f9b2c-30d9-4f61-b0b8-6e8e16d78719)
![image](https://github.com/MistiikDev/PiApproximationLua/assets/91028158/c6448cd0-dc7f-46f8-9af3-ecbef6382174)
