package com.transsion.subtitle.viewmodel;

import com.transsion.subtitle.h;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$getDownloadedList$1", f = "SubtitleDownloadViewModel.kt", l = {Sdk$SDKError.Reason.TPAT_ERROR_VALUE}, m = "invokeSuspend")
@SourceDebugExtension
final class SubtitleDownloadViewModel$getDownloadedList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $subtitleResId;
    int label;
    final SubtitleDownloadViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubtitleDownloadViewModel$getDownloadedList$1(String str, SubtitleDownloadViewModel subtitleDownloadViewModel, Continuation<? super SubtitleDownloadViewModel$getDownloadedList$1> continuation) {
        super(2, continuation);
        this.$subtitleResId = str;
        this.this$0 = subtitleDownloadViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubtitleDownloadViewModel$getDownloadedList$1(this.$subtitleResId, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            h hVarB = h.f52857a.b();
            String str = this.$subtitleResId;
            this.label = 1;
            obj = hVarB.a(str, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        List<ht.a> list = (List) obj;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (list != null) {
            for (ht.a aVar : list) {
                linkedHashMap.put(aVar.b().getId(), aVar);
            }
        }
        this.this$0.m().n(linkedHashMap);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubtitleDownloadViewModel$getDownloadedList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
