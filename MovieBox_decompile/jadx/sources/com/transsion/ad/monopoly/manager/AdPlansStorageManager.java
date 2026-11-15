package com.transsion.ad.monopoly.manager;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class AdPlansStorageManager {

    public static final AdPlansStorageManager f41107a = new AdPlansStorageManager();

    private static final Lazy f41108b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return AdPlansStorageManager.b();
        }
    });

    private AdPlansStorageManager() {
    }

    public static final uh.a b() {
        MbAdDatabase.Companion mVar = MbAdDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return mVar.b(applicationA).y0();
    }

    public static Object e(AdPlansStorageManager adPlansStorageManager, String str, Map map, String str2, AdPlanSourceManager.AdPlanEnum[] adPlanEnumArr, Continuation continuation, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = "";
        }
        return adPlansStorageManager.d(str, map, str2, adPlanEnumArr, continuation);
    }

    private final uh.a f() {
        return (uh.a) f41108b.getValue();
    }

    public final Object c(String str, Continuation continuation) {
        Object objD = f().d(str, continuation);
        return objD == IntrinsicsKt.f() ? objD : Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:49:0x0116 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:52:0x011f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0127  */
    /* JADX WARN: Code duplicated, block: B:55:0x0137  */
    /* JADX WARN: Code duplicated, block: B:56:0x0170  */
    /* JADX WARN: Code duplicated, block: B:59:0x0174  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0114 -> B:13:0x004a). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object d(java.lang.String r21, java.util.Map r22, java.lang.String r23, com.transsion.ad.monopoly.plan.AdPlanSourceManager.AdPlanEnum[] r24, kotlin.coroutines.Continuation r25) {
        /*
            Method dump skipped, instruction units count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.ad.monopoly.manager.AdPlansStorageManager.d(java.lang.String, java.util.Map, java.lang.String, com.transsion.ad.monopoly.plan.AdPlanSourceManager$AdPlanEnum[], kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object g(Continuation continuation) {
        return f().a(continuation);
    }

    public final Object h(String str, Continuation continuation) {
        return f().f(str, continuation);
    }

    public final Object i(String str, Continuation continuation) {
        return f().h(str, continuation);
    }

    public final Object j(MbAdDbPlans mbAdDbPlans, Continuation continuation) {
        Object objC = f().c(mbAdDbPlans, continuation);
        return objC == IntrinsicsKt.f() ? objC : Unit.f64096a;
    }

    public final Object k(List list, Continuation continuation) {
        Object objB = f().b(list, continuation);
        return objB == IntrinsicsKt.f() ? objB : Unit.f64096a;
    }

    public final Object l(boolean z10, String str, Continuation continuation) {
        Object objE = f().e(z10, str, continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f64096a;
    }
}
