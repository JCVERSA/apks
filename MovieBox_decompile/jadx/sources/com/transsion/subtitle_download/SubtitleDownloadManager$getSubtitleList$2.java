package com.transsion.subtitle_download;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.subtitle_download.db.SubtitleDownloadDatabase;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.subtitle_download.utils.e;
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

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "", "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/util/List;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subtitle_download.SubtitleDownloadManager$getSubtitleList$2", f = "SubtitleDownloadManager.kt", l = {127}, m = "invokeSuspend")
@SourceDebugExtension
final class SubtitleDownloadManager$getSubtitleList$2 extends SuspendLambda implements Function2<n0, Continuation<? super List<SubtitleDownloadTable>>, Object> {
    final String $resourceId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubtitleDownloadManager$getSubtitleList$2(String str, Continuation<? super SubtitleDownloadManager$getSubtitleList$2> continuation) {
        super(2, continuation);
        this.$resourceId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubtitleDownloadManager$getSubtitleList$2(this.$resourceId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            SubtitleDownloadDatabase.Companion dVar = SubtitleDownloadDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            qt.a aVarL0 = dVar.b(applicationA).l0();
            String str = this.$resourceId;
            this.label = 1;
            obj = aVarL0.a(str, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        List<SubtitleDownloadTable> list = (List) obj;
        if (list != null) {
            for (SubtitleDownloadTable subtitleDownloadTable : list) {
                if (!e.f53012a.i(subtitleDownloadTable.getPath())) {
                    subtitleDownloadTable.setStatus(0);
                }
            }
        }
        return list;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super List<SubtitleDownloadTable>> continuation) {
        return ((SubtitleDownloadManager$getSubtitleList$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
