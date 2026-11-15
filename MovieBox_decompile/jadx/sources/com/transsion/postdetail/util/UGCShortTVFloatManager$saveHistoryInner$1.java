package com.transsion.postdetail.util;

import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.util.UGCShortTVFloatManager$saveHistoryInner$1", f = "UGCShortTVFloatManager.kt", l = {59, 63}, m = "invokeSuspend")
final class UGCShortTVFloatManager$saveHistoryInner$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function0<Unit> $callback;
    final dw.a $floatBean;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCShortTVFloatManager$saveHistoryInner$1(dw.a aVar, Function0<Unit> function0, Continuation<? super UGCShortTVFloatManager$saveHistoryInner$1> continuation) {
        super(2, continuation);
        this.$floatBean = aVar;
        this.$callback = function0;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        UGCShortTVFloatManager$saveHistoryInner$1 uGCShortTVFloatManager$saveHistoryInner$1 = new UGCShortTVFloatManager$saveHistoryInner$1(this.$floatBean, this.$callback, continuation);
        uGCShortTVFloatManager$saveHistoryInner$1.L$0 = obj;
        return uGCShortTVFloatManager$saveHistoryInner$1;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00d0 A[RETURN] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlin.jvm.functions.Function0] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    @Override
    public final Object invokeSuspend(Object obj) {
        ?? r10;
        a2 a2VarC;
        UGCShortTVFloatManager$saveHistoryInner$1$1$2 uGCShortTVFloatManager$saveHistoryInner$1$1$2;
        String strR;
        String ugcVideoId;
        UGCVideoBelongToCollection belongToCollection;
        Object objF = IntrinsicsKt.f();
        ?? r11 = this.label;
        try {
            if (r11 == 0) {
                ResultKt.b(obj);
                dw.a aVar = this.$floatBean;
                if (aVar != null) {
                    Function0<Unit> function0 = this.$callback;
                    wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "shorttv-----saveHistory, ep:" + aVar.c() + ", progress:" + aVar.n(), false, 4, null);
                    Result.Companion companion = Result.INSTANCE;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    UGCVideo uGCVideoV = aVar.v();
                    if (uGCVideoV == null || (belongToCollection = uGCVideoV.getBelongToCollection()) == null || (strR = belongToCollection.getCollectionId()) == null) {
                        strR = aVar.r();
                    }
                    String str = strR;
                    UGCVideo uGCVideoV2 = aVar.v();
                    r11 = function0;
                    if (uGCVideoV2 != null && (ugcVideoId = uGCVideoV2.getUgcVideoId()) != null) {
                        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoI = UGCShortTVFloatManager.f48062b.i();
                        long jN = aVar.n();
                        this.L$0 = function0;
                        this.label = 1;
                        if (uGCVideoDetailPlayDaoI.k(str, ugcVideoId, jCurrentTimeMillis, jN, this) == objF) {
                            r11 = function0;
                            r11 = function0;
                            return objF;
                        }
                    }
                    r11 = function0;
                    r11 = function0;
                    r11 = function0;
                    wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "shorttv--saveHistory--end", false, 4, null);
                    Result.m453constructorimpl(Unit.f64096a);
                    r10 = r11;
                    a2VarC = y0.c();
                    uGCShortTVFloatManager$saveHistoryInner$1$1$2 = new UGCShortTVFloatManager$saveHistoryInner$1$1$2(r10, null);
                    this.L$0 = null;
                    this.label = 2;
                    if (kotlinx.coroutines.i.g(a2VarC, uGCShortTVFloatManager$saveHistoryInner$1$1$2, this) == objF) {
                        return objF;
                    }
                }
            } else if (r11 == 1) {
                Function0 function1 = (Function0) this.L$0;
                ResultKt.b(obj);
                r11 = function1;
                r11 = function0;
                r11 = function0;
                r11 = function0;
                wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "shorttv--saveHistory--end", false, 4, null);
                Result.m453constructorimpl(Unit.f64096a);
                r10 = r11;
                a2VarC = y0.c();
                uGCShortTVFloatManager$saveHistoryInner$1$1$2 = new UGCShortTVFloatManager$saveHistoryInner$1$1$2(r10, null);
                this.L$0 = null;
                this.label = 2;
                if (kotlinx.coroutines.i.g(a2VarC, uGCShortTVFloatManager$saveHistoryInner$1$1$2, this) == objF) {
                    return objF;
                }
            } else {
                if (r11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
            r10 = r11;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCShortTVFloatManager$saveHistoryInner$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
