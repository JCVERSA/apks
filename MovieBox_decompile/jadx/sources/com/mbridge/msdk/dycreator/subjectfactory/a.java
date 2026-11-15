package com.mbridge.msdk.dycreator.subjectfactory;

import com.mbridge.msdk.dycreator.viewobserver.c;
import com.mbridge.msdk.dycreator.viewobserver.d;
import com.mbridge.msdk.dycreator.viewobserver.f;
import com.mbridge.msdk.dycreator.viewobserver.h;

public final class a {

    private static volatile a f34055a;

    static class C0452a {

        static final int[] f34056a;

        static {
            int[] iArr = new int[b.values().length];
            f34056a = iArr;
            try {
                iArr[b.VIEW_OBSERVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34056a[b.CLICK_OBSERVER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34056a[b.EFFECT_OBSERVER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34056a[b.REPORT_OBSERVER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum b {
        VIEW_OBSERVER,
        CLICK_OBSERVER,
        EFFECT_OBSERVER,
        REPORT_OBSERVER
    }

    private a() {
    }

    public static a a() {
        if (f34055a == null) {
            synchronized (a.class) {
                try {
                    if (f34055a == null) {
                        f34055a = new a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f34055a;
    }

    public <T extends com.mbridge.msdk.dycreator.viewobserver.a> T a(b bVar) {
        int i10 = C0452a.f34056a[bVar.ordinal()];
        if (i10 == 1) {
            return new d();
        }
        if (i10 == 2) {
            return new c();
        }
        if (i10 == 3) {
            return new f();
        }
        if (i10 != 4) {
            return null;
        }
        return new h();
    }
}
