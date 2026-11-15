package com.transsion.fission;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import com.tn.lib.net.bean.BaseDto;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

public final class f extends t0 {

    private final Lazy f42962a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return f.f();
        }
    });

    private final b0 f42963b = new b0();

    public static final class a extends dg.a {
        a() {
        }

        @Override
        public void a(String str, String str2) {
            b0 b0Var = f.this.f42963b;
            if (str2 == null) {
                str2 = "";
            }
            if (str == null) {
                str = "";
            }
            b0Var.q(new BaseDto(str2, str, null, ""));
        }

        @Override
        public void d(BaseDto baseDto) {
            Intrinsics.h(baseDto, "baseDto");
            super.d(baseDto);
            f.this.f42963b.q(baseDto);
        }
    }

    private final gk.a d() {
        return (gk.a) this.f42962a.getValue();
    }

    public static final gk.a f() {
        return (gk.a) kg.c.f63982e.a().h(gk.a.class);
    }

    public final LiveData e() {
        return this.f42963b;
    }

    public final void g(String code) {
        io.reactivex.rxjava3.core.j jVarA;
        io.reactivex.rxjava3.core.j jVarF;
        Intrinsics.h(code, "code");
        String str = "{\"inviteCode\": \"" + code + "\"}";
        gk.a aVarD = d();
        if (aVarD == null || (jVarA = gk.a.C0741a.a(aVarD, null, RequestBody.INSTANCE.create(str, MediaType.INSTANCE.parse("application/json")), 1, null)) == null || (jVarF = jVarA.f(dg.d.f59034a.c())) == null) {
            return;
        }
        jVarF.subscribe(new a());
    }
}
