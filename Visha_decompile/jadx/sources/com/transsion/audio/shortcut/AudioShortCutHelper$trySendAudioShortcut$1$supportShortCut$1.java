package com.transsion.audio.shortcut;

import android.app.Activity;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "", "<anonymous>", "(Lnk1;)Z"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.audio.shortcut.AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1", f = "AudioShortCutHelper.kt", l = {}, m = "invokeSuspend")
public final class AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1 extends SuspendLambda implements s74 {
    final Activity $activity;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1(Activity activity, wh1<? super AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1> wh1Var) {
        super(2, wh1Var);
        this.$activity = activity;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1(this.$activity, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super Boolean> wh1Var) {
        return ((AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        return mk0.a(AudioShortCutHelper.e(this.$activity));
    }
}
