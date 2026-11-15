package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Set;

public final class j22 {
    private static boolean a(StackTraceElement stackTraceElement, Set set) {
        ArrayList<e60> arrayList = new ArrayList();
        for (Object obj : set) {
            if (((e60) obj).a() == f60.b) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        for (e60 e60Var : arrayList) {
            String string = stackTraceElement.toString();
            y45.i(string, "toString(...)");
            if (j1a.X(string, e60Var.b(), false, 2, null)) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(StackTraceElement[] stackTraceElementArr, Set set) {
        String className;
        StackTraceElement stackTraceElement;
        String className2;
        StackTraceElement stackTraceElement2;
        String className3;
        y45.j(stackTraceElementArr, "<this>");
        y45.j(set, "exclusions");
        ArrayList<e60> arrayList = new ArrayList();
        for (Object obj : set) {
            if (((e60) obj).a() == f60.c) {
                arrayList.add(obj);
            }
        }
        boolean z = false;
        if (!arrayList.isEmpty()) {
            for (e60 e60Var : arrayList) {
                String string = Arrays.toString(stackTraceElementArr);
                y45.i(string, "toString(...)");
                if (j1a.X(string, e60Var.b(), false, 2, null)) {
                    return false;
                }
            }
        }
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            }
            StackTraceElement stackTraceElement3 = stackTraceElementArr[i];
            String className4 = stackTraceElement3.getClassName();
            y45.i(className4, "getClassName(...)");
            if ((g1a.R(className4, "com.yandex.mobile.ads", false, 2, null) || g1a.R(className4, "com.monetization.ads", false, 2, null)) && !a(stackTraceElement3, set)) {
                break;
            }
            i++;
        }
        if (i == -1) {
            return false;
        }
        do {
            i++;
            StackTraceElement stackTraceElement4 = (StackTraceElement) defpackage.hi.f0(stackTraceElementArr, i);
            if (stackTraceElement4 == null || a(stackTraceElement4, set) || (stackTraceElement = (StackTraceElement) defpackage.hi.f0(stackTraceElementArr, i)) == null || (className2 = stackTraceElement.getClassName()) == null || ((!g1a.R(className2, "com.yandex.mobile.ads", false, 2, null) && !g1a.R(className2, "com.monetization.ads", false, 2, null)) || (stackTraceElement2 = (StackTraceElement) defpackage.hi.f0(stackTraceElementArr, i)) == null || (className3 = stackTraceElement2.getClassName()) == null)) {
                break;
            }
        } while (!y45.e(className3, CallbackStackTraceMarker.class.getName()));
        StackTraceElement stackTraceElement5 = (StackTraceElement) defpackage.hi.f0(stackTraceElementArr, i);
        if (stackTraceElement5 != null && (className = stackTraceElement5.getClassName()) != null && y45.e(className, CallbackStackTraceMarker.class.getName())) {
            z = true;
        }
        return !z;
    }
}
