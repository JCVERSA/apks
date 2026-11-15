package com.transsion.audio.shortcut;

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
@nt1(c = "com.transsion.audio.shortcut.ShortcutObserver$onChange$1$shortcutExists$1", f = "ShortcutObserver.kt", l = {}, m = "invokeSuspend")
public final class ShortcutObserver$onChange$1$shortcutExists$1 extends SuspendLambda implements s74 {
    int label;
    final ShortcutObserver this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortcutObserver$onChange$1$shortcutExists$1(ShortcutObserver shortcutObserver, wh1<? super ShortcutObserver$onChange$1$shortcutExists$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = shortcutObserver;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new ShortcutObserver$onChange$1$shortcutExists$1(this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super Boolean> wh1Var) {
        return ((ShortcutObserver$onChange$1$shortcutExists$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        ShortcutObserver shortcutObserver = this.this$0;
        return mk0.a(shortcutObserver.f(shortcutObserver.a, "visha_audio_shortcut"));
    }
}
