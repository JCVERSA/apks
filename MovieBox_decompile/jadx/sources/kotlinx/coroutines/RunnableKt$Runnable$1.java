package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
public final class RunnableKt$Runnable$1 implements Runnable {
    final Function0<Unit> $block;

    public RunnableKt$Runnable$1(Function0<Unit> function0) {
        this.$block = function0;
    }

    @Override
    public final void run() {
        this.$block.invoke();
    }
}
