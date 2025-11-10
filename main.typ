#import "@preview/ilm:1.4.1": *
#import "@preview/mitex:0.2.5": *

#set text(
  font: ((name: "IBM Plex Serif", covers: "latin-in-cjk"),
    "Source Han Serif"),
  lang: "zh",
  region: "cn",
  cjk-latin-spacing: auto
)

#show: ilm.with(
  title: [考研笔记],
  author: "wold9168",
  date: datetime.today(),
  abstract: [
    数一+英一+政治+408
  ],
  preface: [
    #align(center + horizon)[
      #strike[今年（2025）考不上了😭]

      但是明年大概没问题😋
    ]
  ],
  bibliography: bibliography("refs.bib"),
  figure-index: (enabled: true),
  table-index: (enabled: true),
  listing-index: (enabled: true),
)

#heading(numbering:none)[前言]

考研，学习微积分，写了大量的纸质笔记，然后现在要整理。发现还是 Typst+LaTeX 公式最合适。于是选择了 Typst+MiTeX 的组合。

我个人的时间很紧张，并且容易忘东西，所以需要一个大纲性质的东西反复去读。大而全自然是没有考虑的可能了，小而精倒是不得不考虑一下。

个人使用的略语非常多，因为本身就不是写给其他人看的，可能考研以后时间多的时候会作修订。对您造成的不便敬请谅解。

就这样。

#place(right+bottom)[wold9168 a.k.a. 阿寺#linebreak()2025年11月11日 凌晨 于学校宿舍]
= 数学
== 微积分
== 线性代数
== 概率论与数理统计
= 英一
== 需要回顾的知识点和语法
== 需要特别记忆的单词
== 写作题例文
= 政治
== 马克思主义基本原理概论
== 毛泽东思想与中国特色社会主义
== 新时代中国特色社会主义思想概论
== 中国近代史纲要
== 思想道德与政治
= 408
== 数据结构
== 计算机组成原理
== 操作系统
== 计算机网络
