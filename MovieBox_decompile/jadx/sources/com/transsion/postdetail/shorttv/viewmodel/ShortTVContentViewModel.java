package com.transsion.postdetail.shorttv.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.ShortTVPlayDao;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class ShortTVContentViewModel extends androidx.p009lifecycle.b {

    private final Lazy f47195b;

    private final Lazy f47196c;

    private final b0 f47197d;

    private final b0 f47198e;

    private final b0 f47199f;

    private final b0 f47200g;

    private final b0 f47201h;

    private final b0 f47202i;

    private final Lazy f47203j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTVContentViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f47195b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTVContentViewModel.m();
            }
        });
        this.f47196c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTVContentViewModel.n();
            }
        });
        this.f47197d = new b0();
        this.f47198e = new b0();
        this.f47199f = new b0();
        this.f47200g = new b0();
        this.f47201h = new b0();
        this.f47202i = new b0();
        this.f47203j = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTVContentViewModel.g();
            }
        });
    }

    public static final n0 g() {
        return o0.a(y0.b());
    }

    public final ao.b k() {
        return (ao.b) this.f47195b.getValue();
    }

    public static final ao.b m() {
        return (ao.b) kg.c.f63982e.a().h(ao.b.class);
    }

    public static final ShortTVPlayDao n() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).w1();
        }
        return null;
    }

    public final b0 h() {
        return this.f47199f;
    }

    public final b0 i() {
        return this.f47200g;
    }

    public final b0 j() {
        return this.f47202i;
    }

    public final void l(String nextPage, int i10, boolean z10) {
        Intrinsics.h(nextPage, "nextPage");
        k.d(u0.a(this), null, null, new ShortTVContentViewModel$getShortTVFavoriteList$1(this, nextPage, i10, z10, null), 3, null);
    }
}
