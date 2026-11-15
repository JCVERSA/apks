package kotlinx.coroutines.android;

import defpackage.cr0;
import defpackage.un4;
import kotlin.Metadata;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public final class HandlerDispatcherKt$awaitFrameSlowPath$lambda$3$$inlined$Runnable$1 implements Runnable {
    final cr0 $cont$inlined;

    public HandlerDispatcherKt$awaitFrameSlowPath$lambda$3$$inlined$Runnable$1(cr0 cr0Var) {
        this.$cont$inlined = cr0Var;
    }

    @Override
    public final void run() {
        un4.f(this.$cont$inlined);
    }
}
