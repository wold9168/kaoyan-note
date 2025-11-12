#import "../../deps.typ": *

=== Cheatsheet
==== 极限逼近

当$x -> 1$时，下式成立：

$x \~ sin x \~ cos x \~ arcsin x \~ arccos x \~ e^x-1 \~ ln(x+1)$ \
$1/2 x^2 \~ 1 - cos x \~ x - ln (1+x); a^x\~x ln a; (x+1)^a -1 \~ a x$ \
$1/2 x^3 \~ tan x - sin x$ #footnote[「$tan x$在$sin x$前得正，$tan x$式当比$sin x$式大」，此式顺序亦可以用来记忆下二式] \
$1/6 x^3 \~ x - sin x \~ arcsin x - x$ \
$1/3 x^3 \~ tan x - x \~ x - arctan x$

==== 基本函数导数公式

#grid(
  columns: (auto, auto, 1fr),
  gutter: 1em,
  [$C'=0$], [$d C=0$], [],
  [$(x^mu)'=mu x^(mu-1)$], [$d x^mu = mu x^(mu-1) d x$], [],
  [$(a^x)'= a^x ln a$], [$d a^x = a^x ln a d x$], [],
  [$(e^x)'= e^x$], [$d e^x=e^x d x$], [],
  [$(log_a x)' = 1/(x ln a)$], [$d log_a x = 1/(x ln a) d x$], [],
  [$(ln x)' = 1/x$], [$d ln x=1/x d x$], [],
  [$(sin x)' = cos x$], [$d sin x = cos x d x$], [],
  [$(cos x)' = - sin x$],
  [$d cos x = - sin x d x$],
  grid.cell(
    rowspan: 4,
  )[可以观察到几乎所有和余弦$cos$余切$cot$余割$csc$相关的导数都要加个负号],
  [$(tan x)' = 1 / (cos^2 x) = sec^2 x$],
  [$d tan x = 1/(cos^2) x d x = sec^2 x d x$],
  [$(cot x)' = - 1 / (sin^2 x) = - csc^2 x$],
  [$d cot x = -1/(sin^2 x) d x = -csc^2 x d x$],
  [$(sec x)' = sec x tan x$], [$d sec x = sec x tan x d x$],
  [$(csc x)' = - csc x cot x$], [$d csc x = - csc x cot x d x$], [],
  [$(arcsin x)' = 1/ sqrt(1-x^2)$], [$d arcsin x =1/sqrt(1-x^2) d x$], [],
  [$(arccos x)' = - 1/ sqrt(1-x^2)$], [$d arccos x =-1/sqrt(1-x^2) d x$], [],
  [$(arctan x)' = 1/(1+x^2)$], [$d arctan x =1/(1+x^2) d x$], [],
  [$(op("arccot") x)' = - 1/(1+x^2)$],
  [$d op("arccot") x = -1/(1+x^2) d x$],
)

==== 高阶导数和复合函数求导公式

$(e^(lambda x))^((n))= lambda^n e^(lambda x); (a^x)^((n))=a^x (ln a)^n$\
$(sin x)^((n))=sin(x+n dot pi/2);(cos x)^((n))=cos(x+n dot pi/2)$ #h(
  2em,
) #footnote[正弦和余弦的求导等同于自变量加 $pi/2$] \
$(x^mu)^((n))=mu dot (mu-1) dot ... dot (mu - n + 1 ) x^(mu-n)$ \
$[f(a x+b)]^((n))=a^n (f^(n)(a x +b))$ \
$(f dot g)^((n))=sum^n_(k=0) C_n^k f^((k))g^((n-k))$\
$(1/x)^((n))=((-1)^n n!) / x^(n+1); (ln x)^((n))=(1/x)^((n-1))=((-1)^(n-1) (n-1)!)/x^n$

==== 积分公式

$integral 0 d x = C$\
$integral 1 d x = x + C$\
$integral x^mu d x = 1/(mu+1) x^(mu+1) + C$\
$integral 1/x d x = ln |x| + C$\
$integral a^x d x =1/(ln a) a^x + C$\
$integral e^x d x =e^x + C$\
$integral sin x d x = - cos x + C$\
$integral cos x d x = sin x + C$\
$integral sec^2 x d x = integral 1/(cos^2 x) d x = tan x + C; integral sec x tan x d x = sec x + C$\
$integral sec x d x = ln |sec x + tan x| + C$\
$integral csc^2 x d x = integral 1/(sin^2 x) d x = - cot x + C; integral csc x cot x d x = - csc x + C$\
$integral csc x d x = - ln |csc x + cot x| + C$\
$integral 1/sqrt(1-x^2) d x = arcsin x + C;integral 1/sqrt(a^2-x^2) d x = arcsin x/a + C$\
$integral 1/(1+x^2) d x = arctan x + C; integral 1/(a^2+x^2) d x = 1/a arctan x/a + C$\
$integral 1/(x^2-a^2) d x = 1/(2a) ln |(x-a)/(x+a)| + C$\
$integral 1/sqrt(x^2 plus.minus a^2) = ln |x+sqrt(x^2 plus.minus a^2)| + C$\

==== 泰勒展开式

$e^x = 1 + x + x^2/2! + ... + x^n/n! + e^(theta x)/(n+1)! x^(n+1)$\
$sin x = x - x^3/3! + x^5/5! + ... + (-1)^n x^(2 m+1)/(2m+1)!+(-1)^(m+1) cos (theta x)/(2 m+3)! x^(2 m+3)$\
$cos x = 1 - x^2/2! + x^4/4! + ... + (-1)^m x^(2m)/(2m)! + (-1)^(m+1) cos(theta x)/(2m+2)! x^(2m+2)$\
$ln(1+x) = x - x^2/2 + x^3/3 + ... + (-1)^(n-1) x^n/n + (-1)^n x^(n+1)/((n+1)(1+theta x)^(n+1))$\
$(1+x)^mu = 1 + mu x + (mu(mu-1))/2! x^2 + ... + (mu(mu-1)...(mu-n+1))/n! x^n + (mu(mu-1)...(mu-n))/((n+1)!) (1+theta x)^(mu-n-1) x^(n+1)$

==== 一元函数和多元函数性质记忆

一元函数：$"可微" <-> "可导" -> "连续" -> "有极限"；\
  #h(7em)"连续" -> "可积" -> "有界"$\

#linebreak()

多元函数：$"一阶偏导连续" -> "可微" -> "连续" -> "有极限（全方位性）"；\
  #h(7em)"可微" -> "有偏导数/偏导数存在/可导"$
