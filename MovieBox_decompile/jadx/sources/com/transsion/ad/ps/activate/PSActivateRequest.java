package com.transsion.ad.ps.activate;

import android.os.SystemClock;
import com.transsion.ad.MBAd;
import com.transsion.ad.strategy.v;
import java.util.concurrent.atomic.AtomicBoolean;
import kg.c;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;

public final class PSActivateRequest {

    public static final PSActivateRequest f41124a = new PSActivateRequest();

    private static final Lazy f41125b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PSActivateRequest.i();
        }
    });

    private static final AtomicBoolean f41126c = new AtomicBoolean(false);

    private static long f41127d;

    private PSActivateRequest() {
    }

    public final String f() {
        String simpleName = PSActivateRequest.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final zh.a h() {
        return (zh.a) f41125b.getValue();
    }

    public static final zh.a i() {
        return (zh.a) c.f63982e.a().h(zh.a.class);
    }

    public final Object g(Continuation continuation) {
        MBAd mBAd = MBAd.f40749a;
        MBAd.a aVarB = mBAd.b();
        if (aVarB != null && !aVarB.i()) {
            xh.a aVar = xh.a.f75336a;
            String strF = f();
            MBAd.a aVarB2 = mBAd.b();
            xh.a.k(aVar, strF + " --> getPsActivateList() --> openPsActivateAd = " + (aVarB2 != null ? Boxing.a(aVarB2.i()) : null) + " --> 没有开启PS激活广告，直接返回", 0, false, 6, null);
            return Unit.f64096a;
        }
        if (v.f41199a.a()) {
            xh.a.k(xh.a.f75336a, f() + " --> getPsActivateList() --> 青少年模式不请求激活广告", 0, false, 6, null);
            return Unit.f64096a;
        }
        AtomicBoolean atomicBoolean = f41126c;
        if (atomicBoolean.get()) {
            xh.a.k(xh.a.f75336a, f() + " --> getPsActivateList() --> isRequesting = " + atomicBoolean, 0, false, 6, null);
            return Unit.f64096a;
        }
        atomicBoolean.set(true);
        if (f41127d <= 0 || SystemClock.elapsedRealtime() - f41127d >= 7200000) {
            f41127d = SystemClock.elapsedRealtime();
            Object objG = i.g(y0.b(), new PSActivateRequest$getPsActivateList$2(null), continuation);
            return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
        }
        xh.a.k(xh.a.f75336a, f() + " --> getPsActivateList() --> 两次请求小于2H", 0, false, 6, null);
        atomicBoolean.set(false);
        return Unit.f64096a;
    }
}
