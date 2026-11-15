package com.transsion.ad.hi;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.MBAd;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;

public final class HiSavanaAdManager {

    public static final HiSavanaAdManager f41090a = new HiSavanaAdManager();

    private static AtomicBoolean f41091b = new AtomicBoolean(false);

    private static AtomicBoolean f41092c = new AtomicBoolean(false);

    private static final Set f41093d = new LinkedHashSet();

    private HiSavanaAdManager() {
    }

    private final String c() {
        String simpleName = HiSavanaAdManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final boolean e() {
        tg.b bVar = tg.b.f72740a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return ((double) bVar.k(applicationA).totalMem) <= ((double) 1073741824) * ((double) com.transsion.ad.scene.b.f41153a.c());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(Continuation continuation) {
        HiSavanaAdManager$onInitSuccess$1 hiSavanaAdManager$onInitSuccess$1;
        if (continuation instanceof HiSavanaAdManager$onInitSuccess$1) {
            hiSavanaAdManager$onInitSuccess$1 = (HiSavanaAdManager$onInitSuccess$1) continuation;
            int i10 = hiSavanaAdManager$onInitSuccess$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                hiSavanaAdManager$onInitSuccess$1.label = i10 - Integer.MIN_VALUE;
            } else {
                hiSavanaAdManager$onInitSuccess$1 = new HiSavanaAdManager$onInitSuccess$1(this, continuation);
            }
        } else {
            hiSavanaAdManager$onInitSuccess$1 = new HiSavanaAdManager$onInitSuccess$1(this, continuation);
        }
        Object obj = hiSavanaAdManager$onInitSuccess$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = hiSavanaAdManager$onInitSuccess$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            MBAd.a aVarB = MBAd.f40749a.b();
            if (aVarB == null || aVarB.j()) {
                xh.a.c(xh.a.f75336a, c() + " --> initHiAdSdk() --> complete -- 媒体取消延时", 0, false, 6, null);
            } else {
                hiSavanaAdManager$onInitSuccess$1.label = 1;
                if (u0.a(5000L, hiSavanaAdManager$onInitSuccess$1) == objF) {
                    return objF;
                }
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        f41092c.set(true);
        xh.a.c(xh.a.f75336a, c() + " --> initHiAdSdk() --> complete -- isInitialized = " + f41092c.get(), 0, false, 6, null);
        Iterator it = f41093d.iterator();
        while (it.hasNext()) {
            ((b) it.next()).onInitSuccess();
        }
        return Unit.f64096a;
    }

    public final void b(b listener) {
        Intrinsics.h(listener, "listener");
        f41093d.add(listener);
    }

    public final Object d(String str, boolean z10, boolean z11, Continuation continuation) {
        if (e()) {
            xh.a.c(xh.a.f75336a, c() + " --> initHiAdSdk() --> 2g & 开关不打开直接关闭sdk初始化", 6, false, 4, null);
            return Unit.f64096a;
        }
        if (!f41091b.get()) {
            f41091b.set(true);
            Object objG = i.g(y0.b(), new HiSavanaAdManager$initHiAdSdk$2(str, z11, z10, null), continuation);
            return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
        }
        xh.a.c(xh.a.f75336a, c() + " --> initHiAdSdk() --> isInitializing == true", 6, false, 4, null);
        return Unit.f64096a;
    }

    public final boolean f() {
        return f41092c.get();
    }

    public final void h(b listener) {
        Intrinsics.h(listener, "listener");
        Set set = f41093d;
        if (!set.isEmpty() && set.contains(listener)) {
            set.remove(listener);
        }
    }
}
