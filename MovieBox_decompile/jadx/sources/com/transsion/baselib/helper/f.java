package com.transsion.baselib.helper;

import android.content.Context;
import android.view.OrientationEventListener;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class f extends OrientationEventListener {

    private final Function1 f42128a;

    private final int f42129b;

    private long f42130c;

    private int f42131d;

    private final int f42132e;

    private final int f42133f;

    private final int f42134g;

    private final int f42135h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Context context, Function1 callback) {
        super(context);
        Intrinsics.h(context, "context");
        Intrinsics.h(callback, "callback");
        this.f42128a = callback;
        this.f42129b = 500;
        this.f42131d = -1;
        this.f42132e = 1;
        this.f42133f = 2;
        this.f42134g = 3;
        this.f42135h = 4;
    }

    @Override
    public void onOrientationChanged(int i10) {
        if (i10 == -1 || System.currentTimeMillis() - this.f42130c < this.f42129b) {
            return;
        }
        this.f42130c = System.currentTimeMillis();
        if (i10 >= 335 || i10 < 25) {
            int i11 = this.f42131d;
            int i12 = this.f42132e;
            if (i11 != i12) {
                this.f42131d = i12;
                this.f42128a.invoke(Boolean.TRUE);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("竖屏：");
            sb2.append(i10);
            return;
        }
        if (65 <= i10 && i10 < 116) {
            int i13 = this.f42131d;
            int i14 = this.f42133f;
            if (i13 != i14) {
                this.f42131d = i14;
                this.f42128a.invoke(Boolean.FALSE);
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("横屏：");
            sb3.append(i10);
            return;
        }
        if (155 <= i10 && i10 < 206) {
            int i15 = this.f42131d;
            int i16 = this.f42134g;
            if (i15 != i16) {
                this.f42131d = i16;
                this.f42128a.invoke(Boolean.TRUE);
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("反向-竖屏：");
            sb4.append(i10);
            return;
        }
        if (245 > i10 || i10 >= 296) {
            return;
        }
        int i17 = this.f42131d;
        int i18 = this.f42135h;
        if (i17 != i18) {
            this.f42131d = i18;
            this.f42128a.invoke(Boolean.FALSE);
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append("反向-横屏：");
        sb5.append(i10);
    }
}
