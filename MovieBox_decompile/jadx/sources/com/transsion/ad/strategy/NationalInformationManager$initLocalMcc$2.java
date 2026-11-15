package com.transsion.ad.strategy;

import android.content.Context;
import com.google.gson.reflect.TypeToken;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.mcc.LocalMcc;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.strategy.NationalInformationManager$initLocalMcc$2", f = "NationalInformationManager.kt", l = {39, Sdk$SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE}, m = "invokeSuspend")
final class NationalInformationManager$initLocalMcc$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Context $context;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NationalInformationManager$initLocalMcc$2(Context context, Continuation<? super NationalInformationManager$initLocalMcc$2> continuation) {
        super(2, continuation);
        this.$context = context;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NationalInformationManager$initLocalMcc$2(this.$context, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00d1  */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x00d1, please report this as an issue */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        Throwable thM456exceptionOrNullimpl;
        Context context;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    context = (Context) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                xh.a.c(xh.a.f75336a, NationalInformationManager.f41173a.c() + " --> initLocalMcc() --> assets数据 -- 保存数据库成功 -- success", 0, false, 6, null);
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl != null) {
                    xh.a.c(xh.a.f75336a, NationalInformationManager.f41173a.c() + " --> initLocalMcc() --> assets数据 -- 保存数据库失败 -- error -- it = " + thM456exceptionOrNullimpl, 6, false, 4, null);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            context = this.$context;
            Result.Companion companion = Result.INSTANCE;
            th.a aVarX0 = MbAdDatabase.INSTANCE.b(context).x0();
            this.L$0 = context;
            this.label = 1;
            obj = aVarX0.d(this);
            if (obj == objF) {
                return objF;
            }
            if (((LocalMcc) obj) != null) {
                xh.a.c(xh.a.f75336a, NationalInformationManager.f41173a.c() + " --> initLocalMcc() --> 数据库已存在 --> success", 0, false, 6, null);
                return Unit.f64096a;
            }
            List list = (List) com.blankj.utilcode.util.o.e(ci.f.f16936a.b("local_mcc.json"), new TypeToken<List<? extends LocalMcc>>() {
            }.getType());
            th.a aVarX1 = MbAdDatabase.INSTANCE.b(context).x0();
            Intrinsics.e(list);
            this.L$0 = null;
            this.label = 2;
            if (aVarX1.b(list, this) == objF) {
                return objF;
            }
            xh.a.c(xh.a.f75336a, NationalInformationManager.f41173a.c() + " --> initLocalMcc() --> assets数据 -- 保存数据库成功 -- success", 0, false, 6, null);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
            if (thM456exceptionOrNullimpl != null) {
                xh.a.c(xh.a.f75336a, NationalInformationManager.f41173a.c() + " --> initLocalMcc() --> assets数据 -- 保存数据库失败 -- error -- it = " + thM456exceptionOrNullimpl, 6, false, 4, null);
            }
            return Unit.f64096a;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((NationalInformationManager$initLocalMcc$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
