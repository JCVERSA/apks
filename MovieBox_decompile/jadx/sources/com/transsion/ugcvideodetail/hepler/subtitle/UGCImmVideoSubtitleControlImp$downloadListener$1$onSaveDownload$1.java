package com.transsion.ugcvideodetail.hepler.subtitle;

import androidx.p009lifecycle.b0;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.hepler.subtitle.UGCImmVideoSubtitleControlImp$downloadListener$1$onSaveDownload$1", f = "UGCImmVideoSubtitleControlImp.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class UGCImmVideoSubtitleControlImp$downloadListener$1$onSaveDownload$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final SubtitleDownloadTable $bean;
    int label;
    final UGCImmVideoSubtitleControlImp this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoSubtitleControlImp$downloadListener$1$onSaveDownload$1(UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp, SubtitleDownloadTable subtitleDownloadTable, Continuation<? super UGCImmVideoSubtitleControlImp$downloadListener$1$onSaveDownload$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCImmVideoSubtitleControlImp;
        this.$bean = subtitleDownloadTable;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoSubtitleControlImp$downloadListener$1$onSaveDownload$1(this.this$0, this.$bean, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        List arrayList;
        Object next;
        b0 b0VarD;
        b0 b0VarD2;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        a aVar = this.this$0.f54302e;
        if (aVar == null || (b0VarD2 = aVar.d()) == null || (arrayList = (List) b0VarD2.f()) == null) {
            arrayList = new ArrayList();
        }
        SubtitleDownloadTable subtitleDownloadTable = this.$bean;
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            ht.a aVar2 = (ht.a) next;
            if (Intrinsics.c(aVar2.b().getId(), subtitleDownloadTable.getId()) && aVar2.b().getResourceStreamType() == subtitleDownloadTable.getResourceStreamType()) {
                break;
            }
        }
        SubtitleDownloadTable subtitleDownloadTable2 = this.$bean;
        UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp = this.this$0;
        if (((ht.a) next) == null) {
            ht.a aVar3 = new ht.a(subtitleDownloadTable2);
            arrayList.add(aVar3);
            a aVar4 = uGCImmVideoSubtitleControlImp.f54302e;
            if (aVar4 != null && (b0VarD = aVar4.d()) != null) {
                b0VarD.q(arrayList);
            }
            uGCImmVideoSubtitleControlImp.f54301d.setSubtitlePath(subtitleDownloadTable2.getPath(), com.transsion.subtitle.helper.c.b(aVar3));
            wf.a.C0922a.f(wf.a.f74274a, uGCImmVideoSubtitleControlImp.f54305h, " onSaveDownload() --> " + arrayList.size() + ",  设置字幕：" + subtitleDownloadTable2.getName() + "," + subtitleDownloadTable2.getLanName(), false, 4, null);
        }
        wf.a.C0922a.f(wf.a.f74274a, this.this$0.f54305h, " onSaveDownload() --> 添加到数据库", false, 4, null);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCImmVideoSubtitleControlImp$downloadListener$1$onSaveDownload$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
