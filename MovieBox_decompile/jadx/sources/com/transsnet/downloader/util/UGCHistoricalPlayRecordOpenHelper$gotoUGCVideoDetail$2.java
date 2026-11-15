package com.transsnet.downloader.util;

import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.util.UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2", f = "UGCHistoricalPlayRecordOpenHelper.kt", l = {74}, m = "invokeSuspend")
final class UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Object $data;
    final String $logTag;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2(Object obj, String str, Continuation<? super UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2> continuation) {
        super(2, continuation);
        this.$data = obj;
        this.$logTag = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2(this.$data, this.$logTag, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        UGCHistoricalPlayRecordOpenHelper.a aVar;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            Object obj2 = this.$data;
            if (obj2 instanceof VideoDetailPlayBean) {
                aVar = new UGCHistoricalPlayRecordOpenHelper.a(((VideoDetailPlayBean) obj2).getSubjectId(), ((VideoDetailPlayBean) this.$data).getSubjectType(), ((VideoDetailPlayBean) this.$data).getId(), null, null, null, ((VideoDetailPlayBean) this.$data).getOps(), null);
            } else {
                if (!(obj2 instanceof UGCVideoDetailPlayBean)) {
                    return Unit.f64096a;
                }
                aVar = new UGCHistoricalPlayRecordOpenHelper.a(null, null, ((UGCVideoDetailPlayBean) this.$data).getUgcVideoId(), ((UGCVideoDetailPlayBean) this.$data).getUgcVideoId(), StringsKt.W(((UGCVideoDetailPlayBean) obj2).getCollectionId(), UGCVideoDetailPlayBean.SINGLE_VIDEO_PREFIX, false, 2, null) ? null : ((UGCVideoDetailPlayBean) this.$data).getCollectionId(), ((UGCVideoDetailPlayBean) this.$data).getType(), ((UGCVideoDetailPlayBean) this.$data).getOps(), ((UGCVideoDetailPlayBean) this.$data).getVideoStyle());
            }
            String strA = aVar.a();
            Integer numB = aVar.b();
            String strC = aVar.c();
            String strD = aVar.d();
            String strE = aVar.e();
            String strF = aVar.f();
            String strG = aVar.g();
            String strH = aVar.h();
            UGCHistoricalPlayRecordOpenHelper uGCHistoricalPlayRecordOpenHelper = UGCHistoricalPlayRecordOpenHelper.f57686a;
            String str = this.$logTag;
            this.label = 1;
            if (uGCHistoricalPlayRecordOpenHelper.f(strA, numB, strC, strD, strE, strF, strG, strH, str, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
