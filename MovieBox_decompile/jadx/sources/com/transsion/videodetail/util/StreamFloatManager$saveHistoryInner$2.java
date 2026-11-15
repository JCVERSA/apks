package com.transsion.videodetail.util;

import com.transsion.baselib.db.video.VideoDetailPlayDao;
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
@DebugMetadata(c = "com.transsion.videodetail.util.StreamFloatManager$saveHistoryInner$2", f = "StreamFloatManager.kt", l = {87}, m = "invokeSuspend")
final class StreamFloatManager$saveHistoryInner$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final dw.a $floatBean;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StreamFloatManager$saveHistoryInner$2(dw.a aVar, Continuation<? super StreamFloatManager$saveHistoryInner$2> continuation) {
        super(2, continuation);
        this.$floatBean = aVar;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        StreamFloatManager$saveHistoryInner$2 streamFloatManager$saveHistoryInner$2 = new StreamFloatManager$saveHistoryInner$2(this.$floatBean, continuation);
        streamFloatManager$saveHistoryInner$2.L$0 = obj;
        return streamFloatManager$saveHistoryInner$2;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                dw.a aVar = this.$floatBean;
                if (aVar != null) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    wf.a.f74274a.c("VideoFloat", "stream-----saveHistory, subjectId:" + aVar.r() + " time:" + jCurrentTimeMillis + ",se:" + aVar.q() + " ep:" + aVar.c() + ", progress:" + aVar.n(), true);
                    Result.Companion companion = Result.INSTANCE;
                    VideoDetailPlayDao videoDetailPlayDaoN = StreamFloatManager.f55703b.n();
                    String strR = aVar.r();
                    int iQ = aVar.q();
                    int iC = aVar.c();
                    long jN = aVar.n();
                    this.label = 1;
                    if (videoDetailPlayDaoN.f(strR, iQ, iC, jCurrentTimeMillis, jN, this) == objF) {
                        return objF;
                    }
                }
                return Unit.f64096a;
            }
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "saveHistory--end", false, 4, null);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((StreamFloatManager$saveHistoryInner$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
