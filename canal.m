## Copyright (C) 2018 userir
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} canal (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: userir <userir@debian>
## Created: 2018-12-18

function tc = canal (th, f)
  [_ N] = size(th);
  tc = zeros(1,N);
  a = rand(1,N);
  for i = 1:N
     if a(i) < f
       tc(i) = mod(th(i)+1,2);
     else
       tc(i) = th(i);
     end
   end
endfunction
