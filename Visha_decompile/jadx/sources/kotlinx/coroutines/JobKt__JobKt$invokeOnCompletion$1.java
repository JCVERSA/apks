package kotlinx.coroutines;

import defpackage.e74;
import defpackage.o95;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public class JobKt__JobKt$invokeOnCompletion$1 extends FunctionReferenceImpl implements e74 {
    public JobKt__JobKt$invokeOnCompletion$1(Object obj) {
        super(1, obj, o95.class, "invoke", "invoke(Ljava/lang/Throwable;)V", 0);
    }

    @Override
    public Object invoke(Object obj) {
        invoke((Throwable) obj);
        return zfb.a;
    }

    public final void invoke(Throwable th) {
        ((o95) this.receiver).v(th);
    }
}
