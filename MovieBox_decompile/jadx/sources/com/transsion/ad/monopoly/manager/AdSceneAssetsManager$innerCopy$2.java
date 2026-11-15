package com.transsion.ad.monopoly.manager;

import android.text.TextUtils;
import ci.f;
import com.transsion.ad.scene.d;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.monopoly.manager.AdSceneAssetsManager$innerCopy$2", f = "AdSceneAssetsManager.kt", l = {}, m = "invokeSuspend")
final class AdSceneAssetsManager$innerCopy$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;

    AdSceneAssetsManager$innerCopy$2(Continuation<? super AdSceneAssetsManager$innerCopy$2> continuation) {
        super(2, continuation);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AdSceneAssetsManager$innerCopy$2(continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        try {
            Result.Companion companion = Result.INSTANCE;
            d dVar = d.f41155a;
            if (dVar.e()) {
                xh.b.a.c(AdSceneAssetsManager.f41109b, 4, "innerCopy() --> 数据已经存在", null, false, 12, null);
                return Unit.f64096a;
            }
            String strB = f.f16936a.b("assets_scene.json");
            if (TextUtils.isEmpty(strB)) {
                xh.b.a.c(AdSceneAssetsManager.f41109b, 6, "innerCopy() --> assets数据 -- 保存数据库失败 -- fail fail fail -- readAssets = null", null, false, 12, null);
            } else {
                xh.b.a.c(AdSceneAssetsManager.f41109b, 4, "innerCopy() --> readAssets = " + strB, null, false, 12, null);
                dVar.f(strB);
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
            if (thM456exceptionOrNullimpl != null) {
                xh.b.a.c(AdSceneAssetsManager.f41109b, 6, "innerCopy() --> 保存本地数据异常 -- error error error --> it = " + thM456exceptionOrNullimpl, null, false, 12, null);
            }
            return Unit.f64096a;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AdSceneAssetsManager$innerCopy$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
