package com.yandex.mobile.ads.impl;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class uf1 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.view.View, android.view.ViewGroup, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v2, types: [android.view.View] */
    public static ArrayList a(View view) {
        y45.j(view, "view");
        ArrayList arrayList = new ArrayList();
        int i = wh2.b;
        y45.j(view, "view");
        ViewParent parent = view.getParent();
        ?? r3 = view;
        ?? r2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        while (r2 != 0) {
            int childCount = r2.getChildCount();
            for (int iIndexOfChild = r2.indexOfChild(r3) + 1; iIndexOfChild < childCount; iIndexOfChild++) {
                View childAt = r2.getChildAt(iIndexOfChild);
                y45.g(childAt);
                arrayList.addAll(b(childAt));
            }
            y45.j(r2, "view");
            ViewParent parent2 = r2.getParent();
            ViewGroup viewGroup = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
            r3 = r2;
            r2 = viewGroup;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (view.getZ() <= ((View) obj).getZ()) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    private static List b(View view) {
        List listC = defpackage.x71.c();
        if (!wh2.d(view)) {
            if (!(view instanceof ViewGroup) || wh2.e(view)) {
                listC.add(view);
            } else {
                ViewGroup viewGroup = (ViewGroup) view;
                List listC2 = defpackage.x71.c();
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    y45.g(childAt);
                    listC2.addAll(b(childAt));
                }
                listC.addAll(defpackage.x71.a(listC2));
            }
        }
        return defpackage.x71.a(listC);
    }
}
