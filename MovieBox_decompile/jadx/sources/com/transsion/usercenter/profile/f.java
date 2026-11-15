package com.transsion.usercenter.profile;

import androidx.p009lifecycle.t0;
import com.transsion.usercenter.profile.bean.ProfileNewMessage;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class f extends t0 {

    public static final a f54993d = new a(null);

    private static boolean f54994e;

    private final androidx.p009lifecycle.b0 f54995a = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f54996b = new androidx.p009lifecycle.b0();

    private final Lazy f54997c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return f.i();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends dg.a {
        b() {
        }

        @Override
        public void a(String str, String str2) {
            f.f54994e = false;
            f.this.g().n(null);
            f.this.h().q(0);
        }

        @Override
        public void c(ProfileNewMessage profileNewMessage) {
            f.f54994e = false;
            f.this.g().n(profileNewMessage);
            f.this.h().q(Integer.valueOf(profileNewMessage != null ? profileNewMessage.getSystemCnt() + profileNewMessage.getInteractiveCnt() : 0));
        }
    }

    private final com.transsion.usercenter.profile.b f() {
        return (com.transsion.usercenter.profile.b) this.f54997c.getValue();
    }

    public static final com.transsion.usercenter.profile.b i() {
        return (com.transsion.usercenter.profile.b) kg.c.f63982e.a().h(com.transsion.usercenter.profile.b.class);
    }

    public final void d() {
        if (f54994e) {
            return;
        }
        f54994e = true;
        com.transsion.usercenter.profile.b.a.a(f(), null, 1, null).f(dg.d.f59034a.c()).subscribe(new b());
    }

    public final void e() {
        this.f54995a.q(0);
    }

    public final androidx.p009lifecycle.b0 g() {
        return this.f54996b;
    }

    public final androidx.p009lifecycle.b0 h() {
        return this.f54995a;
    }
}
