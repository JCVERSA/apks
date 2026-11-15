package com.transsnet.downloader.popup;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.audio.AudioBean;
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
@DebugMetadata(c = "com.transsnet.downloader.popup.PopupManager$audioAddPlayList$1", f = "PopupManager.kt", l = {Sdk$SDKError.Reason.AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE}, m = "invokeSuspend")
final class PopupManager$audioAddPlayList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final AudioBean $audioBean;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PopupManager$audioAddPlayList$1(AudioBean audioBean, Continuation<? super PopupManager$audioAddPlayList$1> continuation) {
        super(2, continuation);
        this.$audioBean = audioBean;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PopupManager$audioAddPlayList$1(this.$audioBean, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            AppDatabase.Companion companion = AppDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            si.a aVarN1 = companion.b(applicationA).n1();
            AudioBean audioBean = this.$audioBean;
            this.label = 1;
            if (aVarN1.h(audioBean, this) == objF) {
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
        return ((PopupManager$audioAddPlayList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
