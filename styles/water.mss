
.lakes[ScaleRank<3][zoom=3],
.lakes[ScaleRank<4][zoom=4],
.lakes[ScaleRank<5][zoom=5],
.lakes[ScaleRank<6][zoom>=6] {
  polygon-fill: @water;
  line-color: @coast;
  line-width: 0.3 + @lake-border;
}
.lakes[ScaleRank<3][zoom=3] {
  line-width: 0.4 + @lake-border;
}
.lakes[ScaleRank<4][zoom=4] {
  line-width: 0.5 + @lake-border;
}
.lakes[ScaleRank<5][zoom=5] {
  line-width: 0.6 + @lake-border;
}
.lakes[ScaleRank<6][zoom>=6] {
  line-width: 0.8 + @lake-border;
}

.rivers[SCALERANK=1][zoom>=3],
.rivers[SCALERANK=2][zoom>=4],
.rivers[SCALERANK=3][zoom>=5],
.rivers[SCALERANK=4][zoom>=5],
.rivers[SCALERANK=5][zoom>=6],
.rivers[SCALERANK=6][zoom>=6],
.rivers[SCALERANK=7][zoom>=7],
.rivers[SCALERANK=8][zoom>=7],
.rivers[SCALERANK=9][zoom>=8] {
  line-color: @coast;
  line-join: round;
}
.rivers[SCALERANK=1][zoom=3],
.rivers[SCALERANK=2][zoom=4],
.rivers[SCALERANK=3][zoom=5],
.rivers[SCALERANK=4][zoom=5],
.rivers[SCALERANK=5][zoom=6],
.rivers[SCALERANK=6][zoom=6],
.rivers[SCALERANK=7][zoom=7],
.rivers[SCALERANK=8][zoom=7],
.rivers[SCALERANK=9][zoom=8] {
  line-width: 0.2 + @river-width;
  line-opacity: 0.6;
}
.rivers[SCALERANK=1][zoom=4],
.rivers[SCALERANK=2][zoom=5],
.rivers[SCALERANK=3][zoom=6],
.rivers[SCALERANK=4][zoom=6],
.rivers[SCALERANK=5][zoom=7],
.rivers[SCALERANK=6][zoom=7],
.rivers[SCALERANK=7][zoom=8],
.rivers[SCALERANK=8][zoom=8],
.rivers[SCALERANK=9][zoom=9] {
  line-width: 0.4 + @river-width;
  line-opacity: 0.7;
}
.rivers[SCALERANK=1][zoom=5],
.rivers[SCALERANK=2][zoom=6],
.rivers[SCALERANK=3][zoom=7],
.rivers[SCALERANK=4][zoom=7],
.rivers[SCALERANK=5][zoom=8],
.rivers[SCALERANK=6][zoom=8],
.rivers[SCALERANK=7][zoom=9],
.rivers[SCALERANK=8][zoom=9],
.rivers[SCALERANK=9][zoom=10] {
  line-width: 0.6 + @river-width;
  line-opacity: 0.9;
}
.rivers[SCALERANK=1][zoom=6],
.rivers[SCALERANK=2][zoom=7],
.rivers[SCALERANK=3][zoom=8],
.rivers[SCALERANK=4][zoom=8],
.rivers[SCALERANK=5][zoom=9],
.rivers[SCALERANK=6][zoom=9],
.rivers[SCALERANK=7][zoom=10],
.rivers[SCALERANK=8][zoom=10],
.rivers[SCALERANK=9][zoom=11] {
  line-width: 0.8 + @river-width;
  line-opacity: 1;
}
