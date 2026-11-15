package com.transsion.ad.ps.attribution;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.pslink.AttributionPoint;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;

public class BaseAttributionProvider {

    public static final a f41133b = new a(null);

    private final Lazy f41134a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return BaseAttributionProvider.i();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final com.transsion.ad.db.pslink.a f() {
        return (com.transsion.ad.db.pslink.a) this.f41134a.getValue();
    }

    public static final com.transsion.ad.db.pslink.a i() {
        MbAdDatabase.Companion companion = MbAdDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).w0();
    }

    protected final Object c(AttributionPoint attributionPoint, Continuation continuation) {
        Object objG = i.g(y0.b(), new BaseAttributionProvider$delete$2(this, attributionPoint, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }

    protected final Object d(Continuation continuation) {
        MbAdDatabase.Companion companion = MbAdDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).w0().d(System.currentTimeMillis(), 5000L, continuation);
    }

    protected final String e() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    protected final Object g(String str, AttributionPoint.AttributionType attributionType, String str2, Continuation continuation) {
        Object objG = i.g(y0.b(), new BaseAttributionProvider$insert$2(this, str2, str, attributionType, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }

    protected final Object h(String str, AttributionPoint.AttributionType attributionType, String str2, Continuation continuation) {
        return i.g(y0.b(), new BaseAttributionProvider$isAttributionPointExists$2(this, str, attributionType, str2, null), continuation);
    }

    protected final Object j(AttributionPoint attributionPoint, Continuation continuation) {
        Object objG = i.g(y0.b(), new BaseAttributionProvider$update$2(attributionPoint, this, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }
}
