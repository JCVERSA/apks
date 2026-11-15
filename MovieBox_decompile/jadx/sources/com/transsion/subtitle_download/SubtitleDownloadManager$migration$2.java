package com.transsion.subtitle_download;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.subtitle_download.db.SubtitleDownloadDatabase;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.subtitle_download.utils.b;
import kotlin.Metadata;
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
@DebugMetadata(c = "com.transsion.subtitle_download.SubtitleDownloadManager$migration$2", f = "SubtitleDownloadManager.kt", l = {244}, m = "invokeSuspend")
final class SubtitleDownloadManager$migration$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final SubtitleDownloadTable $dbBean;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubtitleDownloadManager$migration$2(SubtitleDownloadTable subtitleDownloadTable, Continuation<? super SubtitleDownloadManager$migration$2> continuation) {
        super(2, continuation);
        this.$dbBean = subtitleDownloadTable;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubtitleDownloadManager$migration$2(this.$dbBean, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            SubtitleDownloadDatabase.Companion companion = SubtitleDownloadDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            if (companion.b(applicationA).l0().c(this.$dbBean.getId(), this.$dbBean.getResourceStreamType()) == null) {
                Application applicationA2 = Utils.a();
                Intrinsics.g(applicationA2, "getApp(...)");
                qt.a aVarL0 = companion.b(applicationA2).l0();
                SubtitleDownloadTable subtitleDownloadTable = this.$dbBean;
                this.label = 1;
                if (aVarL0.e(subtitleDownloadTable, this) == objF) {
                    return objF;
                }
            } else {
                b.f53009a.a(SubtitleDownloadManager.f52963a.i() + " --> migration() --> 字幕迁移 --> 已经存在 --> 不需要插入数据库");
            }
            return Unit.f64096a;
        }
        if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        b.f53009a.a(SubtitleDownloadManager.f52963a.i() + " --> migration() --> 字幕迁移 --> 插入数据库 -- success");
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubtitleDownloadManager$migration$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
