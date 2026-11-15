package io.reactivex.rxjava3.internal.util;

public abstract class g {
    public static int a(int i10) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i10 - 1));
    }
}
