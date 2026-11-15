package com.transsion.shorttv.subtitle;

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
@DebugMetadata(c = "com.transsion.shorttv.subtitle.ShortTVSubtitleControlImp$downloadListener$1$onSaveDownload$1", f = "ShortTVSubtitleControlImp.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTVSubtitleControlImp$downloadListener$1$onSaveDownload$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final SubtitleDownloadTable $bean;
    int label;
    final ShortTVSubtitleControlImp this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTVSubtitleControlImp$downloadListener$1$onSaveDownload$1(ShortTVSubtitleControlImp shortTVSubtitleControlImp, SubtitleDownloadTable subtitleDownloadTable, Continuation<? super ShortTVSubtitleControlImp$downloadListener$1$onSaveDownload$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTVSubtitleControlImp;
        this.$bean = subtitleDownloadTable;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTVSubtitleControlImp$downloadListener$1$onSaveDownload$1(this.this$0, this.$bean, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object next;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        List arrayList = (List) this.this$0.f51056h.d().f();
        if (arrayList == null) {
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
            xr.b bVar = (xr.b) next;
            if (Intrinsics.c(bVar.a().getId(), subtitleDownloadTable.getId()) && bVar.a().getResourceStreamType() == subtitleDownloadTable.getResourceStreamType()) {
                break;
            }
        }
        SubtitleDownloadTable subtitleDownloadTable2 = this.$bean;
        ShortTVSubtitleControlImp shortTVSubtitleControlImp = this.this$0;
        if (((xr.b) next) == null) {
            xr.b bVar2 = new xr.b(subtitleDownloadTable2);
            arrayList.add(bVar2);
            shortTVSubtitleControlImp.f51056h.d().q(arrayList);
            shortTVSubtitleControlImp.f51051c.K.setSubtitlePath(subtitleDownloadTable2.getPath(), yr.a.b(bVar2));
            wf.a.C0922a.g(wf.a.f74274a, shortTVSubtitleControlImp.f51055g + " --> onSaveDownload() --> " + arrayList.size() + ",  设置字幕：" + subtitleDownloadTable2.getName() + "," + subtitleDownloadTable2.getLanName(), false, 2, null);
        }
        wf.a.C0922a.g(wf.a.f74274a, this.this$0.f51055g + " --> onSaveDownload() --> 添加到数据库", false, 2, null);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTVSubtitleControlImp$downloadListener$1$onSaveDownload$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
