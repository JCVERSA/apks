package com.yandex.mobile.ads.impl;

import android.net.wifi.ScanResult;
import java.util.Comparator;

public final class hh1<T> implements Comparator {
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int compare(T t, T t2) {
        return kotlin.comparisons.a.d(Integer.valueOf(((ScanResult) t2).level), Integer.valueOf(((ScanResult) t).level));
    }
}
