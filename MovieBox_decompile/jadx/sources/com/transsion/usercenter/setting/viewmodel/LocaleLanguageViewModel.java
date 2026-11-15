package com.transsion.usercenter.setting.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b;
import androidx.p009lifecycle.b0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class LocaleLanguageViewModel extends b {

    private final Lazy f55334b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocaleLanguageViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f55334b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LocaleLanguageViewModel.f();
            }
        });
    }

    public static final b0 f() {
        return new b0();
    }

    public final void d() {
        k.d(o0.a(y0.b()), null, null, new LocaleLanguageViewModel$getList$1(this, null), 3, null);
    }

    public final b0 e() {
        return (b0) this.f55334b.getValue();
    }
}
