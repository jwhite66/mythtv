#!/bin/sh

cat << EOF > strings.h
/* WARNING - Don't edit this file!
 * This file should be automatically generated by $0
 */

void strings_null() {
	// For Day-of-week
	String::DayOfWeek::tr("MON");
	String::DayOfWeek::tr("TUE");
	String::DayOfWeek::tr("WED");
	String::DayOfWeek::tr("THU");
	String::DayOfWeek::tr("FRI");
	String::DayOfWeek::tr("SAT");
	String::DayOfWeek::tr("SUN");

	// For Wind Direction
	String::WindDirection::tr("N");
	String::WindDirection::tr("NNE");
	String::WindDirection::tr("NE");
	String::WindDirection::tr("ENE");
	String::WindDirection::tr("E");
	String::WindDirection::tr("ESE");
	String::WindDirection::tr("SE");
	String::WindDirection::tr("SSE");
	String::WindDirection::tr("S");
	String::WindDirection::tr("SSW");
	String::WindDirection::tr("SW");
	String::WindDirection::tr("WSW");
	String::WindDirection::tr("W");
	String::WindDirection::tr("WNW");
	String::WindDirection::tr("NW");
	String::WindDirection::tr("NNW");
EOF


cat << EOF >> strings.h
	
	// WeatherTypes.dat
EOF
cat ../mythweather/weathertypes.dat | cut -f2 -d, | while read a ; do
	echo '	String::WeatherType::tr("'$a'");' >> strings.h
done

#
#cat << EOF >> strings.h
#	
#	// Accid.dat
#EOF
##29::CHXX0243::Abag Qi, China
#cat ../mythweather/accid.dat | grep "::" | cut -f5 -d: | while read a ; do
#	echo '	String::Accid::tr("'$a'");' >> strings.h
#done
#
#

cat << EOF >> strings.h
}
EOF
