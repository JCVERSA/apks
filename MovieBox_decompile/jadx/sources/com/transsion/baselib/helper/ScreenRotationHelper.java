package com.transsion.baselib.helper;

import android.content.Context;
import android.os.Handler;
import android.provider.Settings;
import java.lang.ref.WeakReference;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class ScreenRotationHelper {

    private final Context f42115a;

    private final Function0 f42116b;

    private final Function1 f42117c;

    private boolean f42118d;

    private final Lazy f42119e;

    private final Lazy f42120f;

    public ScreenRotationHelper(Context context, Function0 isCloseAutoRotationCallback, Function1 rotationCallback) {
        Intrinsics.h(context, "context");
        Intrinsics.h(isCloseAutoRotationCallback, "isCloseAutoRotationCallback");
        Intrinsics.h(rotationCallback, "rotationCallback");
        this.f42115a = context;
        this.f42116b = isCloseAutoRotationCallback;
        this.f42117c = rotationCallback;
        this.f42119e = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ScreenRotationHelper.k(this.f42136a);
            }
        });
        this.f42120f = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ScreenRotationHelper.i(this.f42137a);
            }
        });
    }

    public final void e(boolean z10) {
        if (!((Boolean) this.f42116b.invoke()).booleanValue() && this.f42118d && com.blankj.utilcode.util.c.j()) {
            this.f42117c.invoke(Boolean.valueOf(z10));
        }
    }

    private final j f() {
        return (j) this.f42120f.getValue();
    }

    private final f g() {
        return (f) this.f42119e.getValue();
    }

    public static final j i(final ScreenRotationHelper screenRotationHelper) {
        return new j(new Handler(), new WeakReference(screenRotationHelper.f42115a), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ScreenRotationHelper.j(this.f42138a, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit j(ScreenRotationHelper screenRotationHelper, boolean z10) {
        screenRotationHelper.f42118d = z10;
        return Unit.f64096a;
    }

    public static final f k(ScreenRotationHelper screenRotationHelper) {
        return new f(screenRotationHelper.f42115a, new ScreenRotationHelper$orientationListener$2$1(screenRotationHelper));
    }

    public final void h() {
        this.f42115a.getContentResolver().registerContentObserver(Settings.System.getUriFor("accelerometer_rotation"), true, f());
        this.f42118d = f().a(this.f42115a);
        f fVarG = g();
        if (fVarG.canDetectOrientation()) {
            fVarG.enable();
        }
    }

    public final void l() {
        try {
            Result.Companion companion = Result.INSTANCE;
            this.f42115a.getContentResolver().unregisterContentObserver(f());
            g().disable();
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }
}
