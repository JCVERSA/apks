package com.transsion.usercenter.setting;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class b0 extends androidx.p009lifecycle.b {

    private final androidx.p009lifecycle.b0 f55234b;

    private final androidx.p009lifecycle.b0 f55235c;

    private final androidx.p009lifecycle.b0 f55236d;

    private final Lazy f55237e;

    private io.reactivex.rxjava3.disposables.c f55238f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f55234b = new androidx.p009lifecycle.b0();
        this.f55235c = new androidx.p009lifecycle.b0();
        this.f55236d = new androidx.p009lifecycle.b0();
        this.f55237e = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return b0.d();
            }
        });
    }

    public static final mv.c d() {
        return new mv.c();
    }

    private final void e() {
        io.reactivex.rxjava3.disposables.c cVar;
        io.reactivex.rxjava3.disposables.c cVar2 = this.f55238f;
        if (cVar2 == null || cVar2.isDisposed() || (cVar = this.f55238f) == null) {
            return;
        }
        cVar.dispose();
    }

    public final LiveData f() {
        return this.f55234b;
    }

    public final LiveData g() {
        return this.f55235c;
    }

    public final LiveData h() {
        return this.f55236d;
    }

    @Override
    protected void onCleared() {
        super.onCleared();
        e();
    }
}
