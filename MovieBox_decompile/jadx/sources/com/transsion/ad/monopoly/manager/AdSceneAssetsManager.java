package com.transsion.ad.monopoly.manager;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;

public final class AdSceneAssetsManager extends c {

    public static final AdSceneAssetsManager f41109b = new AdSceneAssetsManager();

    private AdSceneAssetsManager() {
    }

    @Override
    public Object b(Continuation continuation) {
        Object objG = i.g(y0.b(), new AdSceneAssetsManager$innerCopy$2(null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }
}
