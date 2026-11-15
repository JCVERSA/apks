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
@DebugMetadata(c = "com.transsion.ugcvideodetail.hepler.subtitle.UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1", f = "UGCImmVideoSubtitleControlImp.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final SubtitleDownloadTable $stDownloadTable;
    int label;
    final UGCImmVideoSubtitleControlImp this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1(UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp, SubtitleDownloadTable subtitleDownloadTable, Continuation<? super UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCImmVideoSubtitleControlImp;
        this.$stDownloadTable = subtitleDownloadTable;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1(this.this$0, this.$stDownloadTable, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        List arrayList;
        Object obj2;
        Object next;
        b0 b0VarD;
        Object next2;
        b0 b0VarD2;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        if (!Intrinsics.c(this.this$0.u(), this.$stDownloadTable.getResourceId())) {
            wf.a.C0922a.f(wf.a.f74274a, this.this$0.f54305h, " onComplete() --> 字幕下载成功，不是当前视频，不做处理", false, 4, null);
            return Unit.f64096a;
        }
        a aVar = this.this$0.f54302e;
        if (aVar == null || (b0VarD2 = aVar.d()) == null || (arrayList = (List) b0VarD2.f()) == null) {
            arrayList = new ArrayList();
        }
        List list = arrayList;
        SubtitleDownloadTable subtitleDownloadTable = this.$stDownloadTable;
        Iterator it = list.iterator();
        while (true) {
            obj2 = null;
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
        SubtitleDownloadTable subtitleDownloadTable2 = this.$stDownloadTable;
        UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp = this.this$0;
        ht.a aVar3 = (ht.a) next;
        if (aVar3 != null) {
            aVar3.h(subtitleDownloadTable2);
        } else {
            ht.a aVar4 = new ht.a(subtitleDownloadTable2);
            arrayList.add(aVar4);
            a aVar5 = uGCImmVideoSubtitleControlImp.f54302e;
            if (aVar5 != null && (b0VarD = aVar5.d()) != null) {
                b0VarD.q(arrayList);
            }
            uGCImmVideoSubtitleControlImp.f54301d.setSubtitlePath(subtitleDownloadTable2.getPath(), com.transsion.subtitle.helper.c.b(aVar4));
        }
        SubtitleDownloadTable subtitleDownloadTable3 = this.$stDownloadTable;
        Iterator it2 = list.iterator();
        do {
            if (!it2.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it2.next();
        } while (!Intrinsics.c(((ht.a) next2).b().getId(), subtitleDownloadTable3.getId()));
        ht.a aVar6 = (ht.a) next2;
        if (aVar6 == null) {
            aVar6 = new ht.a(this.$stDownloadTable);
        }
        if (this.$stDownloadTable.getIsAutoDownload()) {
            String string = com.transsion.subtitle_download.utils.d.f53010a.b().getString("k_subtitle_select_lan", null);
            for (Object obj3 : list) {
                if (Intrinsics.c(((ht.a) obj3).b().getLan(), string)) {
                    obj2 = obj3;
                    break;
                }
            }
            if (((ht.a) obj2) == null || string == null || string.length() == 0 || Intrinsics.c(string, this.$stDownloadTable.getLan())) {
                aVar6.l(true);
            }
        } else {
            aVar6.l(true);
        }
        wf.a.C0922a.r(wf.a.f74274a, this.this$0.f54305h, new String[]{" onComplete() --> 字幕下载成功：" + this.$stDownloadTable.getName() + "," + this.$stDownloadTable.getLanName() + ", isSelect:" + aVar6.f()}, false, 4, null);
        this.this$0.f54301d.setSubtitlePath(this.$stDownloadTable.getPath(), com.transsion.subtitle.helper.c.b(aVar6));
        if (aVar6.f()) {
            this.this$0.f(aVar6);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
