package com.transsion.baseui.util;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class f implements View.OnClickListener {

    public static final a f42339c = new a(null);

    public static final int f42340d = 8;

    private int f42341a;

    private final Handler f42342b = new Handler(Looper.getMainLooper());

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    protected f() {
    }

    public static final void b(f fVar, View view) {
        int i10 = fVar.f42341a;
        if (i10 == 1) {
            fVar.d(view);
        } else if (i10 >= 2) {
            fVar.c(view);
        }
        fVar.f42342b.removeCallbacksAndMessages(null);
        fVar.f42341a = 0;
    }

    public abstract void c(View view);

    public abstract void d(View view);

    @Override
    public void onClick(final View v10) {
        Intrinsics.h(v10, "v");
        int i10 = this.f42341a + 1;
        this.f42341a = i10;
        if (i10 > 1) {
            return;
        }
        this.f42342b.postDelayed(new Runnable() {
            @Override
            public final void run() {
                f.b(this.f42337a, v10);
            }
        }, 300L);
    }
}
