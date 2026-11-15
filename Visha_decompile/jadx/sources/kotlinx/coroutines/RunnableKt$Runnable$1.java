package kotlinx.coroutines;

import defpackage.c74;
import kotlin.Metadata;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
public final class RunnableKt$Runnable$1 implements Runnable {
    final c74 $block;

    public RunnableKt$Runnable$1(c74 c74Var) {
        this.$block = c74Var;
    }

    @Override
    public final void run() {
        this.$block.invoke();
    }
}
