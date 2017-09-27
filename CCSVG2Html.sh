#!/usr/bin/sh
#
#  CCSVG2Html.sh
#  
#  Created by CC on 2017/09/27.
#  Copyright 2017 youhua deng (deng you hua | CC) <ccworld1000@gmail.com>
#  https://github.com/ccworld1000/CCSVG2Html
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
# 

echo "CCSVG2Html running ..."

html="CCTrending.html"

echo '' > "$html"

for f in `ls *.svg`
do
	name=`echo $f | awk -F. '{print $1}' `
	echo "[CC log] is handing  $name"
	echo "<iframe src=\"$f\" width=\"100%\" height=\"100%\"></iframe>" >> "$html"
	#echo "<img src=\"$f\" />" >> "$html"
done
