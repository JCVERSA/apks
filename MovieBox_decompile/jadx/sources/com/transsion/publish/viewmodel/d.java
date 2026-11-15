package com.transsion.publish.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class d extends androidx.p009lifecycle.b {

    private final Lazy f48681b;

    private b0 f48682c;

    private final b0 f48683d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f48681b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return d.d();
            }
        });
        this.f48682c = new b0();
        this.f48683d = new b0(Boolean.FALSE);
    }

    public static final oo.b d() {
        return new oo.b();
    }
}
