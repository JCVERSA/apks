package com.transsion.athena.data;

import java.util.concurrent.CopyOnWriteArrayList;

public class athena {

    private static int f41574a;

    private static CopyOnWriteArrayList<Integer> f41575b = new CopyOnWriteArrayList<>();

    public static boolean a(int i10) {
        if (f41575b.contains(Integer.valueOf(i10))) {
            return false;
        }
        return f41575b.add(Integer.valueOf(i10));
    }

    public static void b(int i10) {
        if (f41574a != 0) {
            com.transsion.athena.taaneh.aethna.a("The host appId has been set 2 times");
        }
        f41574a = i10;
    }

    public static boolean a(long j10) {
        return f41575b.contains(Integer.valueOf(com.transsion.athena.taaneh.anehat.a(j10)));
    }

    public static CopyOnWriteArrayList<Integer> a() {
        return f41575b;
    }

    public static int b() {
        return f41574a;
    }
}
