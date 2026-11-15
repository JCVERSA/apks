package com.yandex.mobile.ads.impl;

import android.util.SparseArray;
import java.lang.reflect.Constructor;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

public final class qz implements c40 {
    private static final SparseArray<Constructor<? extends b40>> c;
    private final wm.a a;
    private final Executor b;

    static {
        SparseArray<Constructor<? extends b40>> sparseArray = new SparseArray<>();
        try {
            sparseArray.put(0, a(Class.forName("com.monetization.ads.exo.source.dash.offline.DashDownloader")));
        } catch (ClassNotFoundException unused) {
        }
        try {
            sparseArray.put(2, a(Class.forName("com.monetization.ads.exo.source.hls.offline.HlsDownloader")));
        } catch (ClassNotFoundException unused2) {
        }
        try {
            sparseArray.put(1, a(Class.forName("com.monetization.ads.exo.source.smoothstreaming.offline.SsDownloader")));
        } catch (ClassNotFoundException unused3) {
        }
        c = sparseArray;
    }

    public qz(wm.a aVar, ExecutorService executorService) {
        this.a = (wm.a) hg.a(aVar);
        this.b = (Executor) hg.a(executorService);
    }

    public final b40 a(a40 a40Var) {
        int iA = f92.a(a40Var.c, a40Var.d);
        if (iA != 0 && iA != 1 && iA != 2) {
            if (iA == 4) {
                return new cm1(new jw0.a().a(a40Var.c).a(a40Var.g).a(), this.a, this.b);
            }
            throw new IllegalArgumentException(oe.a("Unsupported type: ", iA));
        }
        Constructor<? extends b40> constructor = c.get(iA);
        if (constructor == null) {
            throw new IllegalStateException(oe.a("Module missing for content type ", iA));
        }
        try {
            return constructor.newInstance(new jw0.a().a(a40Var.c).a(a40Var.e).a(a40Var.g).a(), this.a, this.b);
        } catch (Exception unused) {
            throw new IllegalStateException(oe.a("Failed to instantiate downloader for content type ", iA));
        }
    }

    private static Constructor<? extends b40> a(Class<?> cls) {
        try {
            return cls.asSubclass(b40.class).getConstructor(jw0.class, wm.a.class, Executor.class);
        } catch (NoSuchMethodException e) {
            throw new IllegalStateException("Downloader constructor missing", e);
        }
    }
}
