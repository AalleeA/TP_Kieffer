## Copyright (C) 2018 alleea
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} Hamming (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: alleea <alleea@ES1556>
## Created: 2018-12-18

function [th] = Hamming (t)
  G = [[1 0 0 0 0 1 1];[0 1 0 0 1 0 1];[0 0 1 0 1 1 0];[0 0 0 1 1 1 1]];
  th = mod(t*G,2);

endfunction
