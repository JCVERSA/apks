package com.snaptube.premium.preview.audio;

import androidx.view.Lifecycle;
import androidx.view.ViewTreeLifecycleOwner;
import com.snaptube.ads.nativead.AdView;
import com.snaptube.premium.utils.LifecycleKtxKt;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import o.bk1;
import o.mg8;
import o.pr3;
import o.rx2;
import o.w61;
import o.x24;
import o.ys2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lo/w61;", "Lo/mg8;", "<anonymous>", "(Lo/w61;)V"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "com.snaptube.premium.preview.audio.AudioPreviewAdController$setupAd$2", f = "AudioPreviewAdController.kt", i = {}, l = {94}, m = "invokeSuspend", n = {}, s = {})
public final class AudioPreviewAdController$setupAd$2 extends SuspendLambda implements rx2 {
    final AdView $adView;
    final ys2 $root;
    int label;
    final AudioPreviewAdController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioPreviewAdController$setupAd$2(AdView adView, AudioPreviewAdController audioPreviewAdController, ys2 ys2Var, Continuation<? super AudioPreviewAdController$setupAd$2> continuation) {
        super(2, continuation);
        this.$adView = adView;
        this.this$0 = audioPreviewAdController;
        this.$root = ys2Var;
    }

    @Override
    @NotNull
    public final Continuation<mg8> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new AudioPreviewAdController$setupAd$2(this.$adView, this.this$0, this.$root, continuation);
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return invoke((w61) obj, (Continuation<? super mg8>) obj2);
    }

    @Nullable
    public final Object invoke(@NotNull w61 w61Var, @Nullable Continuation<? super mg8> continuation) {
        return ((AudioPreviewAdController$setupAd$2) create(w61Var, continuation)).invokeSuspend(mg8.a);
    }

    @Override
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
        Lifecycle lifecycle;
        Object objF = pr3.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            this.label = 1;
            if (bk1.a(3000L, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        AudioPreviewAdController$setupAd$2$realShowAd$1 audioPreviewAdController$setupAd$2$realShowAd$1 = new AudioPreviewAdController$setupAd$2$realShowAd$1(this.$adView, this.this$0, this.$root);
        x24 x24VarA = ViewTreeLifecycleOwner.a(this.$adView);
        if (x24VarA != null && (lifecycle = x24VarA.getLifecycle()) != null) {
            LifecycleKtxKt.b(lifecycle, audioPreviewAdController$setupAd$2$realShowAd$1);
        }
        return mg8.a;
    }
}
