package androidx.p003activity;

import defpackage.c74;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public class OnBackPressedDispatcher$addCancellableCallback$1 extends FunctionReferenceImpl implements c74 {
    public OnBackPressedDispatcher$addCancellableCallback$1(Object obj) {
        super(0, obj, OnBackPressedDispatcher.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0);
    }

    @Override
    public Object invoke() {
        m5invoke();
        return zfb.a;
    }

    public final void m5invoke() {
        ((OnBackPressedDispatcher) this.receiver).updateEnabledCallbacks();
    }
}
