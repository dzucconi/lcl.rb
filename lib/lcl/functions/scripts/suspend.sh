#!/bin/bash

# Written by Filip Oščádal <filip@mxd.cz> <http://mxd.cz/>
# Distributed under license GPLv3+ GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY. YOU USE AT YOUR OWN RISK. THE AUTHOR
# WILL NOT BE LIABLE FOR DATA LOSS, DAMAGES, LOSS OF PROFITS OR ANY
# OTHER  KIND OF LOSS WHILE USING OR MISUSING THIS SOFTWARE.
# See the GNU General Public License for more details.

which pmi >/dev/null 2>&1
if [ $? -eq 1 ]
then
  sudo apt-get install powermanagement-interface
fi
which powermanagement-interface >/dev/null 2>&1
if [ $? -eq 1 ]
then
  exit 1
fi

sync

pmi action suspend

exit 0
