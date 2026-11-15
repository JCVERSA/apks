package com.transsion.search.speech;

import androidx.appcompat.widget.AppCompatTextView;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.search.speech.SpeechRecognizerDialog$onResult$1", f = "SpeechRecognizerDialog.kt", l = {Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE}, m = "invokeSuspend")
final class SpeechRecognizerDialog$onResult$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $resultStr;
    int label;
    final SpeechRecognizerDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SpeechRecognizerDialog$onResult$1(SpeechRecognizerDialog speechRecognizerDialog, String str, Continuation<? super SpeechRecognizerDialog$onResult$1> continuation) {
        super(2, continuation);
        this.this$0 = speechRecognizerDialog;
        this.$resultStr = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SpeechRecognizerDialog$onResult$1(this.this$0, this.$resultStr, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        AppCompatTextView appCompatTextView;
        com.transsion.search_pugc.speech.SpeechRecognizerVolumeCircleView speechRecognizerVolumeCircleView;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            vp.b bVar = this.this$0.bind;
            if (bVar != null && (speechRecognizerVolumeCircleView = bVar.f73693g) != null) {
                speechRecognizerVolumeCircleView.setMicState(com.transsion.search_pugc.speech.SpeechRecognizerVolumeCircleView.MicState.LOADING);
            }
            vp.b bVar2 = this.this$0.bind;
            if (bVar2 != null && (appCompatTextView = bVar2.f73691e) != null) {
                appCompatTextView.setText("");
            }
            this.label = 1;
            if (u0.a(1500L, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        Function1 function1 = this.this$0.mCallback;
        if (function1 != null) {
        }
        this.this$0.mCallback = null;
        this.this$0.dismissAllowingStateLoss();
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SpeechRecognizerDialog$onResult$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
