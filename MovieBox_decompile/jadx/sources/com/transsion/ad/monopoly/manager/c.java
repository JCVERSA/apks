package com.transsion.ad.monopoly.manager;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

public abstract class c implements xh.b {

    private AtomicBoolean f41110a = new AtomicBoolean(false);

    public final Object a(Continuation continuation) {
        if (this.f41110a.get()) {
            return Unit.f64096a;
        }
        this.f41110a.set(true);
        Object objB = b(continuation);
        return objB == IntrinsicsKt.f() ? objB : Unit.f64096a;
    }

    public abstract Object b(Continuation continuation);

    @Override
    public String getClassTag() {
        return xh.b.a.a(this);
    }

    @Override
    public String getLogTag() {
        return "ad_init";
    }

    @Override
    public String getSceneId() {
        return "";
    }

    @Override
    public void onLog(int i10, String str, String str2, boolean z10) {
        xh.b.a.b(this, i10, str, str2, z10);
    }
}
