package com.transsion.ad.scene;

import android.text.TextUtils;
import com.transsion.ad.strategy.u;
import com.transsion.ad.strategy.v;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import rh.f;

public final class SceneInterceptManager {

    public static final SceneInterceptManager f41151a = new SceneInterceptManager();

    private SceneInterceptManager() {
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, Continuation continuation) {
        SceneInterceptManager$intercept$1 sceneInterceptManager$intercept$1;
        if (continuation instanceof SceneInterceptManager$intercept$1) {
            sceneInterceptManager$intercept$1 = (SceneInterceptManager$intercept$1) continuation;
            int i10 = sceneInterceptManager$intercept$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                sceneInterceptManager$intercept$1.label = i10 - Integer.MIN_VALUE;
            } else {
                sceneInterceptManager$intercept$1 = new SceneInterceptManager$intercept$1(this, continuation);
            }
        } else {
            sceneInterceptManager$intercept$1 = new SceneInterceptManager$intercept$1(this, continuation);
        }
        Object objA = sceneInterceptManager$intercept$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = sceneInterceptManager$intercept$1.label;
        if (i11 == 0) {
            ResultKt.b(objA);
            if (TextUtils.isEmpty(str)) {
                return new Pair(Boxing.a(true), "sceneId is empty");
            }
            if (f.f71235a.b()) {
                return new Pair(Boxing.a(true), "客户端 全局关闭广告");
            }
            if (d.f41155a.b(str) == null) {
                return new Pair(Boxing.a(true), "场景配置为空");
            }
            if (!b.f41153a.k()) {
                return new Pair(Boxing.a(true), "全局场景关闭");
            }
            c cVar = c.f41154a;
            if (cVar.c(str)) {
                return new Pair(Boxing.a(true), "当前场景关闭");
            }
            if (u.f41195a.c()) {
                return new Pair(Boxing.a(true), "新用户保护期，不展示广告");
            }
            if (cVar.d(str)) {
                return new Pair(Boxing.a(true), "当前是会员,不展示广告");
            }
            AdSceneDisplayLimitManager adSceneDisplayLimitManager = AdSceneDisplayLimitManager.f41150a;
            if (str == null) {
                str = "";
            }
            sceneInterceptManager$intercept$1.label = 1;
            objA = adSceneDisplayLimitManager.a(str, sceneInterceptManager$intercept$1);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objA);
        }
        Pair pair = (Pair) objA;
        if (((Boolean) pair.getFirst()).booleanValue()) {
            return v.f41199a.a() ? new Pair(Boxing.a(true), "青少年模式，不展示广告") : new Pair(Boxing.a(false), "默认不拦截");
        }
        return new Pair(Boxing.a(true), pair.getSecond());
    }
}
