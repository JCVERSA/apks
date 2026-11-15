package com.yandex.mobile.ads.impl;

import android.graphics.Rect;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

public final class rf1 {
    public static int a(Rect rect, List list) {
        y45.j(rect, "viewRect");
        y45.j(list, "overlappingRects");
        TreeSet treeSet = new TreeSet();
        treeSet.add(Integer.valueOf(rect.left));
        treeSet.add(Integer.valueOf(rect.right));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Rect rect2 = (Rect) it.next();
            treeSet.add(Integer.valueOf(rect2.left));
            treeSet.add(Integer.valueOf(rect2.right));
        }
        ArrayList arrayList = new ArrayList(treeSet);
        TreeSet treeSet2 = new TreeSet();
        treeSet2.add(Integer.valueOf(rect.top));
        treeSet2.add(Integer.valueOf(rect.bottom));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            Rect rect3 = (Rect) it2.next();
            treeSet2.add(Integer.valueOf(rect3.top));
            treeSet2.add(Integer.valueOf(rect3.bottom));
        }
        ArrayList arrayList2 = new ArrayList(treeSet2);
        rect.left = Collections.binarySearch(arrayList, Integer.valueOf(rect.left));
        rect.top = Collections.binarySearch(arrayList2, Integer.valueOf(rect.top));
        rect.right = Collections.binarySearch(arrayList, Integer.valueOf(rect.right));
        rect.bottom = Collections.binarySearch(arrayList2, Integer.valueOf(rect.bottom));
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            Rect rect4 = (Rect) it3.next();
            rect4.left = Collections.binarySearch(arrayList, Integer.valueOf(rect4.left));
            rect4.top = Collections.binarySearch(arrayList2, Integer.valueOf(rect4.top));
            rect4.right = Collections.binarySearch(arrayList, Integer.valueOf(rect4.right));
            rect4.bottom = Collections.binarySearch(arrayList2, Integer.valueOf(rect4.bottom));
        }
        int size = arrayList.size() - 1;
        byte[][] bArr = new byte[size][];
        for (int i = 0; i < size; i++) {
            bArr[i] = new byte[arrayList2.size() - 1];
        }
        Iterator it4 = list.iterator();
        while (it4.hasNext()) {
            Rect rect5 = (Rect) it4.next();
            int i2 = rect5.right;
            for (int i3 = rect5.left; i3 < i2; i3++) {
                int i4 = rect5.bottom;
                for (int i5 = rect5.top; i5 < i4; i5++) {
                    bArr[i3][i5] = 1;
                }
            }
        }
        int size2 = arrayList.size() - 1;
        int iIntValue = 0;
        for (int i6 = 0; i6 < size2; i6++) {
            int size3 = arrayList2.size() - 1;
            for (int i7 = 0; i7 < size3; i7++) {
                if (bArr[i6][i7] == 1) {
                    iIntValue = ((((Number) arrayList2.get(i7 + 1)).intValue() - ((Number) arrayList2.get(i7)).intValue()) * (((Number) arrayList.get(i6 + 1)).intValue() - ((Number) arrayList.get(i6)).intValue())) + iIntValue;
                }
            }
        }
        return iIntValue;
    }
}
