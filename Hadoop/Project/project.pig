input4 = load 'hdfs:///user/sasmita/inputs/episode4.txt' using PigStorage('\t') AS (name:chararry, line:chararray);
input5 = load 'hdfs:///user/sasmita/inputs/episode.txt' using PigStorage('\t') AS (name:chararry, line:chararray);
input6 = load 'hdfs:///user/sasmita/inputs/episode6.txt' using PigStorage('\t') AS (name:chararry, line:chararray);

inputdata = union input4, input5, input6;

groupbyname =group inputdata by name;

name = foreach groupbyName Generate $0 as name, count($1) as nooflines;
nameorder = order names by nooflines DESC;

