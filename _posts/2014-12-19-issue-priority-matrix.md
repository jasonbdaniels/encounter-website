---
author: jason
title: Issue Priority Matrix
image: /images/issue-priority-matrix.svg
layout: post
tags: [message]
---

## Background

A system defines how a goal is accomplished via computer code, and the correctness of the system is defined by whether or not a system accomplishes the goal. When a system falls short of accomplishing a goal it is declared to have an issue. Issue prioritization is important because it can impact the efficiency of reaching a more correct system. Thus an easy to understand and easy to determine prioritization system would aid in efficiently correcting other systems.

![Issue Priority Matrix]({{ page.image }})

## Overview

The Issue Priority Matrix<sup>TM</sup> is a visual way to see the errors or defects that are most crucial to fix for a given system. This is done by plotting the error or defect based upon two metrics, severity and reproducibility. Severity is a reflection of how severe an issue is in regards to the correctness of the system. Reproducibility is a reflection of how frequent the issue is reproduced within the system.

The intersection of an issue’s reproducibility value and severity value determines its priority relative to other issues derived from the same system. Issues that are contained within the Acceptable Region are issues that have low priority and have low impact on the correctness of the system. Issues outside the Acceptable Region should receive the most attention and the most resources before issues inside the Acceptable Region are fixed.

The priority value (Often, Middle) can be considered inside or outside the acceptable region. These are issues that reproduce often and have a severity level between low and high. Therefore issues with these value’s require more thought in declaring the issue inside or outside the acceptable region. Such thought is only constructive with knowledge about how the Issue Priority Matrix<sup>TM</sup> was designed.

## Design

Issues can be measured with various metrics, however severity and reproducibility are two universal metrics that are easy to understand and easy to determine. Therefore a system that is easy to understand and easy to determine should use these two metrics. As stated before, severity is a reflection of how severe an issue is in regards to the correctness of the system. Reproducibility is a reflection of how frequent the issue is reproduced within the system.

### Reproducibility Values

A reproducibility value of Rarely is declared to occur almost never, but does happen in the system. A Rarely reproducibility value may be given because it is not known how to reproduce the issue. If the issue is unknown how to reproduce this means the issue isn’t completely understood. However an issue may rarely occur under certain, known, conditions in which case the issue is completely understood. More often than not an issue that rarely occurs under certain conditions can be traced back to system concurrency.

A reproducibility value of Often is declared to occur more often than not within the system. An Often reproducibility value may not be completely understood, but the system can be handled in such a way that is, for the most part, understood. Usually an issue that occurs often has some sort of pattern associated with the use of the system.

A reproducibility value of Always is declared to occur all the time in the system. An Always reproducibility value is most often a must fix, because it always affects the correctness of the system. These issues are usually known how to reproduce within the system, so this also makes them easier to diagnose and fix. However there are issues that my always be reproducible but have a Low severity level. Such issues may fall into the Acceptable Region because the severity is so insignificant the issue has minimal impact on the correctness of the system.

### Severity Values

A severity value of Low is declared if the issue has almost no effect on the goal of the system. Such issues may self correct and therefore don’t always affect the correctness of the system. Furthermore the very question of whether or not the issue affects correctness may be a difference of interpretation. A Low severity issue is commonly related to User Interface components of a system, because the look and feel of components are highly judgmental. Low severity can also be declared for non UI components such as the number of bits used to track time. Take for example a signed 32 bit integer to store seconds since 1970 January 1, 12:00 AM. This is an issue once 2038 January 19 comes around, because of integer overflow, but years off from this date it’s a relatively low severity issue. This example also points out that the severity value of an issue can change as the system is used.

A severity value of Middle is declared if the issue isn’t more severe than High but is more severe than a Low priority issue. A Middle severity issue is easiest to coin by determining the issue is too severe to be considered Low and too insignificant to be considered High. The Middle severity value is something that must be given keen thought because it is usually on the cusp of the Acceptable Region.

A severity value of High is declared if the issue is detrimental to the correctness of the system. A High severity issue is more often than not a must fix issue because system correctness hinges on this type of issue. Although it is possible for High severity issues to fall inside the Acceptable Region. Such an example only intersects with a Rare reproducibility value, and it is this reason why the issue falls in the Acceptable Region. This is justified because issues that a rarely reproduced are difficult to diagnose and resources can be utilized more constructively elsewhere.
