package com.transsion.subtitle_download;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.subtitle_download.db.SubtitleDownloadDatabase;
import com.transsion.subtitle_download.utils.b;
import com.vungle.ads.internal.protos.Sdk$SDKError;
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
@DebugMetadata(c = "com.transsion.subtitle_download.SubtitleDownloadManager$deleteSubtitle$2", f = "SubtitleDownloadManager.kt", l = {Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE}, m = "invokeSuspend")
final class SubtitleDownloadManager$deleteSubtitle$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $resourceId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubtitleDownloadManager$deleteSubtitle$2(String str, Continuation<? super SubtitleDownloadManager$deleteSubtitle$2> continuation) {
        super(2, continuation);
        this.$resourceId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubtitleDownloadManager$deleteSubtitle$2(this.$resourceId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            b.f53009a.b(SubtitleDownloadManager.f52963a.i() + " --> deleteSubtitle() --> deleteByResourceId(resourceId) --> resourceId = " + this.$resourceId);
            SubtitleDownloadDatabase.Companion companion = SubtitleDownloadDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            qt.a aVarL0 = companion.b(applicationA).l0();
            String str = this.$resourceId;
            this.label = 1;
            if (aVarL0.b(str, this) == objF) {
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
        return ((SubtitleDownloadManager$deleteSubtitle$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
