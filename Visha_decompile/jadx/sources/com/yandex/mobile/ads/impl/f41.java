package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.concurrent.ThreadFactory;

public final class f41 implements ThreadFactory {
    private static final String b = "YandexAds.UrlTracker";
    public static final String c = "YandexAds.BaseController";
    public static final String d = "YandexAds.AdvertisingId";
    private final String a;

    public f41(String str) {
        y45.j(str, "threadName");
        this.a = str;
    }

    @Override
    public final Thread newThread(Runnable runnable) {
        y45.j(runnable, "runnable");
        return new Thread(runnable, this.a);
    }
}
