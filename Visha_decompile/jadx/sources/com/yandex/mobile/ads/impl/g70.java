package com.yandex.mobile.ads.impl;

public final class g70 extends RuntimeException {
    public g70(int i) {
        super(a(i));
    }

    private static String a(int i) {
        if (i == 1) {
            return "Player release timed out.";
        }
        if (i != 2) {
            return i != 3 ? "Undefined timeout." : "Detaching surface timed out.";
        }
        return "Setting foreground mode timed out.";
    }
}
