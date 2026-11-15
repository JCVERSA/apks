package kotlinx.coroutines.selects;

import defpackage.nf7;
import defpackage.xa9;
import defpackage.zfb;
import kotlin.Metadata;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public final class OnTimeout$register$$inlined$Runnable$1 implements Runnable {
    final xa9 $select$inlined;
    final nf7 this$0;

    public OnTimeout$register$$inlined$Runnable$1(xa9 xa9Var, nf7 nf7Var) {
        this.$select$inlined = xa9Var;
    }

    @Override
    public final void run() {
        this.$select$inlined.d(null, zfb.a);
    }
}
