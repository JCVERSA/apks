package com.facebook.ads.redexgen.core;

public final class C1327Vy {
    public static String[] A01 = {"0TBfSTrFZZIPTbjcv3YvZ5KQe5wh6M4Z", "Y", "skEIHJjGP8F0E9LHs3c03M6jOmkdnZrb", "lNiM6G1VkMzjPhI0VWbHd", "xoZoqEy9j11lJxTnOEXOmkmQN9dBXrj3", "0lNV7cA9G3CxYQK", "ZSiJ5Be21P36sCEypxWEkyax05PjjigP", "3dFveWP5h629GmfNhsyVO5v38YfKmNKK"};
    public static final ThreadLocal<C1327Vy> A02 = new ThreadLocal<>();
    public final C1310Vh A00 = new C1310Vh();

    public static C1310Vh A00() {
        return A02().A00;
    }

    public static C1310Vh A01(C1326Vx c1326Vx) {
        C1310Vh currentStackTraces = new C1310Vh(A00());
        currentStackTraces.add(c1326Vx);
        return currentStackTraces;
    }

    public static C1327Vy A02() {
        C1327Vy c1327Vy = A02.get();
        if (c1327Vy == null) {
            C1327Vy c1327Vy2 = new C1327Vy();
            A02.set(c1327Vy2);
            return c1327Vy2;
        }
        return c1327Vy;
    }

    public static void A03(AbstractRunnableC1322Vt abstractRunnableC1322Vt) {
        C1310Vh c1310VhA06 = abstractRunnableC1322Vt.A06();
        if (c1310VhA06 != null) {
            C1310Vh createRunnableAsyncStackTrace = A02().A00;
            createRunnableAsyncStackTrace.addAll(c1310VhA06);
        }
    }

    public static void A04(AbstractRunnableC1322Vt abstractRunnableC1322Vt) {
        C1310Vh c1310VhA06 = abstractRunnableC1322Vt.A06();
        if (c1310VhA06 != null) {
            C1310Vh c1310Vh = A02().A00;
            String[] strArr = A01;
            if (strArr[1].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            A01[0] = "6tfOksRsBjIBNQljvPHCCYkD1Hr87lb7";
            c1310Vh.removeAll(c1310VhA06);
        }
    }
}
