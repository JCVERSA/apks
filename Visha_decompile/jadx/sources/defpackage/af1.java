package defpackage;

import io.reactivex.internal.operators.observable.ObservablePublishAlt;
import io.reactivex.internal.operators.observable.ObservableRefCount;

public abstract class af1 extends mc7 {
    public abstract void n0(zf1 zf1Var);

    /* JADX WARN: Multi-variable type inference failed */
    public final af1 o0() {
        return this instanceof gd7 ? yw8.l(new ObservablePublishAlt(((gd7) this).b())) : this;
    }

    public mc7 p0() {
        return yw8.o(new ObservableRefCount(o0()));
    }
}
