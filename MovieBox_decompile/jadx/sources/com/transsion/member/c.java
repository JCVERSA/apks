package com.transsion.member;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import com.transsion.memberapi.MemberTaskSubmitCheckInRes;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class c extends androidx.p009lifecycle.b {

    private final Lazy f45014b;

    private final androidx.p009lifecycle.b0 f45015c;

    public static final class a extends dg.a {
        a() {
        }

        @Override
        public void a(String str, String str2) {
            c.this.f45015c.q(null);
        }

        @Override
        public void c(MemberTaskSubmitCheckInRes memberTaskSubmitCheckInRes) {
            super.c(memberTaskSubmitCheckInRes);
            c.this.f45015c.q(memberTaskSubmitCheckInRes);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f45014b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return c.h();
            }
        });
        this.f45015c = new androidx.p009lifecycle.b0();
    }

    private final fm.a g() {
        return (fm.a) this.f45014b.getValue();
    }

    public static final fm.a h() {
        return (fm.a) kg.c.f63982e.a().h(fm.a.class);
    }

    public final void e() {
        fm.a.C0732a.h(g(), null, null, 3, null).f(dg.d.f59034a.c()).subscribe(new a());
    }

    public final LiveData f() {
        return this.f45015c;
    }
}
