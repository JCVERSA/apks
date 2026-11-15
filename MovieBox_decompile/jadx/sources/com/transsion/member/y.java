package com.transsion.member;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import com.transsion.member.bean.request.MemberPromoCodeReq;
import com.transsion.member.bean.request.MemberPromoCodeRes;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class y extends androidx.p009lifecycle.b {

    private final Lazy f45189b;

    private final androidx.p009lifecycle.b0 f45190c;

    public static final class a extends dg.a {
        a() {
        }

        @Override
        public void a(String str, String str2) {
            y.this.f45190c.q(new i0(false, str, str2, null));
        }

        @Override
        public void c(MemberPromoCodeRes memberPromoCodeRes) {
            super.c(memberPromoCodeRes);
            y.this.f45190c.q(new i0(true, null, null, memberPromoCodeRes));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f45189b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return y.g();
            }
        });
        this.f45190c = new androidx.p009lifecycle.b0();
    }

    private final fm.a f() {
        return (fm.a) this.f45189b.getValue();
    }

    public static final fm.a g() {
        return (fm.a) kg.c.f63982e.a().h(fm.a.class);
    }

    public final LiveData e() {
        return this.f45190c;
    }

    public final void h(String code) {
        Intrinsics.h(code, "code");
        fm.a.C0732a.g(f(), null, new MemberPromoCodeReq(code), 1, null).f(dg.d.f59034a.c()).subscribe(new a());
    }
}
