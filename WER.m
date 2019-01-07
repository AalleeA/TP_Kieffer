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
## @deftypefn {} {@var{retval} =} WER (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: userir <userir@debian>
## Created: 2018-12-18

function wer = WER (p0, f,N)
   wer =  [0,0];
   err = 0;
   for i = 1:N
     t = generation(4,p0);
     th = Hamming(t);
     tc = canal(th, f);
     td = Decode(tc);
     err += evaluation(th,td);
     if err != 0
       wer(1)++;
     endif
     wer(2) += err;
     err = 0;
   endfor
   wer(1) = wer(1)/N;
   wer(2) = wer(2)/N/7;

endfunction
