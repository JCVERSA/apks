package com.transsion.subtitle.viewmodel;

import com.transsion.baselib.db.download.SubtitleLanguageMapBean;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import ui.d1;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$getLanguageAllList$1", f = "SubtitleDownloadViewModel.kt", l = {84}, m = "invokeSuspend")
final class SubtitleDownloadViewModel$getLanguageAllList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final SubtitleDownloadViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubtitleDownloadViewModel$getLanguageAllList$1(SubtitleDownloadViewModel subtitleDownloadViewModel, Continuation<? super SubtitleDownloadViewModel$getLanguageAllList$1> continuation) {
        super(2, continuation);
        this.this$0 = subtitleDownloadViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubtitleDownloadViewModel$getLanguageAllList$1(this.this$0, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0043  */
    @Override
    public final Object invokeSuspend(Object obj) {
        List list;
        ArrayList arrayList;
        List list2;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            d1 d1VarQ = this.this$0.q();
            if (d1VarQ != null) {
                this.label = 1;
                obj = d1VarQ.a(this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                list = null;
            }
            arrayList = new ArrayList();
            list2 = list;
            if (list2 != null || list2.isEmpty()) {
                arrayList.add(new SubtitleLanguageMapBean("en", "eng", "English", true));
            } else {
                arrayList.addAll(list2);
            }
            this.this$0.j().n(arrayList);
            return Unit.f64096a;
        }
        if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        list = (List) obj;
        arrayList = new ArrayList();
        list2 = list;
        if (list2 != null) {
            arrayList.add(new SubtitleLanguageMapBean("en", "eng", "English", true));
        } else {
            arrayList.add(new SubtitleLanguageMapBean("en", "eng", "English", true));
        }
        this.this$0.j().n(arrayList);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubtitleDownloadViewModel$getLanguageAllList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
