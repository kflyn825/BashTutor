
# Table: Search Patterns and Usage Examples
# Search Patterns	Usage
#      .(dot)	    Match any single character
#      a|z	        Match a or z
#      $	        Match end of a line
#      ^	        Match beginning of a line
#      *	        Match preceding item 0 or more times


# Command	Usage
# a..	    matches azy
# b.|j.	    matches both br and ju
# ..$	    matches og
# l.*	    matches lazy dog
# l.*y	    matches lazy
# the.*	    matches the whole sentence



t="MULTI: primary virtual IP for xyz/x.x.x.x:44595: 10.0.0.12"
searchstring="IP for "

rest=${t#*$searchstring}
echo $rest
echo $(( ${#t} - ${#rest} - ${#searchstring} ))

prefix=${t%%$searchstring*}
echo ${#prefix}
echo prefix is $prefix