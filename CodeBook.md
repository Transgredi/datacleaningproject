Code Book for Data Cleaning project
===================

## Columns codes and their meaning

Figures for variables in columns 3:88 are mean values of the raw data provided in the train and test data sets.

Definition of **jerk** - body linear acceleration and angular velocity derived in time.

Column number |Column name | Column content
------------|------------|----------------
1. | activname | Name of the activity performed by the subject. Stored as factor variable with six levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
2. | subjects | Subject ID's stored as integers (1:30)
3. | tbodyaccmx | Body acceleration - mean value recorded for X axis
4. | tbodyaccmy | Body acceleration - mean value recorded for Y axis
5. | tbodyaccmz | Body acceleration - mean value recorded for Z axis
6. | tgravaccmx | Gravity acceleration - mean value recorded for X axis
7. | tgravaccmy | Gravity acceleration - mean value recorded for Y axis
8. | tgravaccmz | Gravity acceleration - mean value recorded for Z axis
9. | tbodyjerkaccmx | Body jerk acceleration - mean value recorded for X axis
10. | tbodyjerkaccmy | Body jerk acceleration - mean value recorded for Y axis
11. | tbodyjerkaccmz | Body jerk acceleration - mean value recorded for Z axis
12. | tbodygyromx | Gyroscope - mean value recorded for X axis
13. | tbodygyromy | Gyroscope - mean value recorded for Y axis
14. | tbodygyromz | Gyroscope - mean value recorded for Z axis
15. | tbodygyrojerkmx | Body jerk gyroscope - mean value recorded for X axis
16. | tbodygyrojerkmy | Body jerk gyroscope - mean value recorded for Y axis
17. | tbodygyrojerkmz | Body jerk gyroscope - mean value recorded for Z axis
18. | tbodyaccmagm | Body acceleration magnitude of three-dimensional signals of three-dimensional signals - mean value
19. | tgravaccmagm | Gravity acceleration magnitude of three-dimensional signals - mean value
20. | tbodyaccjerkmagm | Jerk acceleration magnitude of three-dimensional signals - mean value
21. | tbodygyromagm | Gyroscope magnitude of three-dimensional signals - mean value
22. | tbodygyrojerkmagm | Gyroscope jerk - mean value
23. | fbodyaccmx | Body acceleration - frequency domain signal mean value for X axis
24. | fbodyaccmy | Body acceleration - frequency domain signal mean value for Y axis
25. | fbodyaccmz | Body acceleration - frequency domain signal mean value for Z axis
26. | fbodyaccmfreqx | Body acceleration - frequency domain signal mean value for X axis (weighted average of the frequency components)
27. | fbodyaccmfreqy | Body acceleration - frequency domain signal mean value for Y axis (weighted average of the frequency components)
28. | fbodyaccmfreqz | Body acceleration - frequency domain signal mean value for Z axis (weighted average of the frequency components)
29. | fbodyaccjerkmx | Jerk acceleration - frequency domain signal mean value for X axis
30. | fbodyaccjerkmy | Jerk acceleration - frequency domain signal mean value for Y axis
31. | fbodyaccjerkmz | Jerk acceleration - frequency domain signal mean value for Z axis
32. | fbodyaccjerkmfreqx | Jerk acceleration - frequency domain signal mean value for X axis (weighted average of the frequency components)
33. | fbodyaccjerkmfreqy | Jerk acceleration - frequency domain signal mean value for Y axis (weighted average of the frequency components)
34. | fbodyaccjerkmfreqz | Jerk acceleration - frequency domain signal mean value for Z axis (weighted average of the frequency components)
35. | fbodygyromx | Gyroscope - frequency domain signal mean value for X axis
36. | fbodygyromy | Gyroscope - frequency domain signal mean value for Y axis
37. | fbodygyromz | Gyroscope - frequency domain signal mean value for Z axis
38. | fbodygyromfreqx | Gyroscope - frequency domain signal mean value for X axis (weighted average of the frequency components)
39. | fbodygyromfreqy | Gyroscope - frequency domain signal mean value for Y axis (weighted average of the frequency components)
40. | fbodygyromfreqz | Gyroscope - frequency domain signal mean value for Z axis (weighted average of the frequency components)
41. | fbodyaccmagm | Body acceleration magnitude of three-dimensional signals - frequency domain signal mean value
42. | fbodyaccmagmfreq | Body acceleration magnitude of three-dimensional signals - frequency domain signal mean value (weighted average of the frequency components)
43. | fbodyaccjerkmagm | Jerk acceleration magnitude of three-dimensional signals - frequency domain signal mean value
44. | fbodyaccjerkmagmfreq | Jerk acceleration magnitude of three-dimensional signals - frequency domain signal mean value (weighted average of the frequency components)
45. | fbodygyromagm | Gyroscope magnitude of three-dimensional signals - frequency domain signal mean value
46. | fbodygyromagmfreq | Gyroscope magnitude of three-dimensional signals - frequency domain signal mean value (weighted average of the frequency components)
47. | fbodygyrojerkmagm | Gyroscope magnitude of three-dimensional signals - frequency domain signal mean value
48. | fbodygyrojerkmagmfreq | Gyroscope jerk magnitude of three-dimensional signals - frequency domain signal mean value (weighted average of the frequency components)
49. | angletbodaccmgrav | Angle between body acceleration mean value and gravity
50. | angletbodyaccjerkmgravm | Angle between jerk acceleration mean and gravity mean
51. | angletbodygyromgravm | Angle between gyroscope mean and gravity mean
52. | angletbodygyrojerkmgravm | Angle between gyroscope jerk mean and gravity mean
53. | anglexgravm | Angle between X axis and gravity mean
54. | angleygravm | Angle between Y axis and gravity mean
55. | anglezgravm | Angle between Z axis and gravity mean
56. | tbodyaccsx | Body acceleration - standard deviation value recorded for X axis
57. | tbodyaccsy | Body acceleration - standard deviation value recorded for Y axis
58. | tbodyaccsz | Body acceleration - standard deviation value recorded for Z axis
59. | tgravaccsx | Gravity acceleration - standard deviation value recorded for X axis
60. | tgravaccsy | Gravity acceleration - standard deviation value recorded for Y axis
61. | tgravaccsz | Gravity acceleration - standard deviation value recorded for Z axis
62. | tbodyaccjerksx | Body acceleration jerk - standard deviation value recorded for X axis
63. | tbodyaccjerksy | Body acceleration jerk - standard deviation value recorded for Y axis
64. | tbodyaccjerksz | Body acceleration jerk - standard deviation value recorded for Z axis
65. | tbodygyrosx | Gyroscope - standard deviation value recorded for X axis
66. | tbodygyrosy | Gyroscope - standard deviation value recorded for Y axis
67. | tbodygyrosz | Gyroscope - standard deviation value recorded for Z axis
68. | tbodygyrojerksx | Gyroscope - body jerk - standard deviation value recorded for X axis
69. | tbodygyrojerksy | Gyroscope - body jerk - standard deviation value recorded for Y axis
70. | tbodygyrojerksz | Gyroscope - body jerk - standard deviation value recorded for Z axis
71. | tbodyaccmags | Body acceleration magnitude - standard deviation value
72. | tgravaccmags | Gravity acceleration magnitude - standard deviation value
73. | tbodyaccjerkmags | Body jerk - acceleration magnitude - standard deviation value
74. | tbodygyromags | Gyroscope magnitude - standard deviation value
75. | tbodygyrojerkmags | Gyroscope - body jerk - standard deviation value
76. | fbodyaccsx | Body acceleration - frequency domain signal standard deviation value for X axis
77. | fbodyaccsy | Body acceleration - frequency domain signal standard deviation value for Y axis
78. | fbodyaccsz | Body acceleration - frequency domain signal standard deviation value for Z axis
79. | fbodyaccjerksx | Jerk acceleration - frequency domain signal standard deviation value for X axis
80. | fbodyaccjerksy | Jerk acceleration - frequency domain signal standard deviation value for Y axis
81. | fbodyaccjerksz | Jerk acceleration - frequency domain signal standard deviation value for Z axis
82. | fbodygyrosx | Gyroscope - frequency domain signal standard deviation value for X axis
83. | fbodygyrosy | Gyroscope - frequency domain signal standard deviation value for Y axis
84. | fbodygyrosz | Gyroscope - frequency domain signal standard deviation value for Z axis
85. | fbodyaccmags | Body acceleration magnitude - frequency domain signal standard deviation value
86. | fbodyaccjerkmags | Jerk acceleration magnitude - frequency domain signal standard deviation value
87. | fobdygyromags | Gyroscope magnitude - frequency domain signal standard deviation value
88. | fbodygyrojerkmags | Gyroscope magnitude - body jerk - frequency domain signal standard deviation value