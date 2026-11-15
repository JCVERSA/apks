package androidx.core.os;

import defpackage.c74;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lzfb;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 8, 0})
public final class HandlerKt$postAtTime$runnable$1 implements Runnable {
    final c74 $action;

    public HandlerKt$postAtTime$runnable$1(c74 c74Var) {
        this.$action = c74Var;
    }

    @Override
    public final void run() {
        this.$action.invoke();
    }
}
