# -*- coding: utf-8 -*-
import math
h,w = map(int, raw_input().split())
str = "#EFGABD##C##"
lst = [

  ] #迷路
queue = ["A"] #キュー！
check = ["A"] #チェック済みリスト
count = 0 #処理のの回数を数える
for i in range(h):
    x = map(str,raw_input().split())
    lst.append(x) #迷路の読み込み
for j in range(h):
    if "A" in lst[j]:
        hNow, wNow = j, lst[j].index("A") #開始地点Aの位置の読み込み
hNow2, wNow2 = hNow, wNow
while 1:
    count += 1
    for k in range(h):
        if queue[0] in lst[k]:
            hNow, wNow = k,lst[k].index(queue[0]) #取り出す
    if len(queue) != 0:
        if queue[0] == "G":
            break # ゴールか判定
    queue.pop(0)
    if hNow < h-1:
        if lst[hNow+1][wNow] != "#":
            if lst[hNow+1][wNow] not in check:
                queue.extend(lst[hNow+1][wNow])
                check.append(lst[hNow+1][wNow])
    if wNow < w-1:
        if lst[hNow][wNow+1] != "#":
            if lst[hNow][wNow+1] not in check:
                queue.extend(lst[hNow][wNow+1])
                check.append(lst[hNow][wNow+1])
    if hNow > 0:
        if lst[hNow-1][wNow] != "#":
            if lst[hNow-1][wNow] not in check:
                queue.extend(lst[hNow-1][wNow])
                check.append(lst[hNow-1][wNow])
    if wNow > 0:
        if lst[hNow][wNow-1] != "#":
            if lst[hNow][wNow-1] not in check:
                queue.extend(lst[hNow][wNow-1])
                check.append(lst[hNow][wNow-1]) #近いやつを入れる
print "ゴールまでの距離は"+str(abs(hNow - hNow2) + abs(wNow - wNow2))
print "かかった処理の回数は"+str(count)
