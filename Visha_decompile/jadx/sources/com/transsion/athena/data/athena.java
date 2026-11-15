package com.transsion.athena.data;

import com.transsion.athena.taaneh.a;
import defpackage.c4d;
import java.util.concurrent.CopyOnWriteArrayList;

public class athena {
    private static int a;
    private static CopyOnWriteArrayList<Integer> b = new CopyOnWriteArrayList<>();

    public static boolean a(int i) {
        if (b.contains(Integer.valueOf(i))) {
            return false;
        }
        return b.add(Integer.valueOf(i));
    }

    public static void b(int i) {
        if (a != 0) {
            c4d.b("The host appId has been set 2 times");
        }
        a = i;
    }

    public static boolean a(long j) {
        return b.contains(Integer.valueOf(a.a(j)));
    }

    public static CopyOnWriteArrayList<Integer> a() {
        return b;
    }

    public static int b() {
        return a;
    }
}
