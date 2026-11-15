package kotlinx.coroutines.channels;

import defpackage.u74;
import defpackage.zfb;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.coroutines.d;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public class BufferedChannel$bindCancellationFun$2 extends FunctionReferenceImpl implements u74 {
    public BufferedChannel$bindCancellationFun$2(Object obj) {
        super(3, obj, BufferedChannel.class, "onCancellationImplDoNotCall", "onCancellationImplDoNotCall(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0);
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3) throws IllegalAccessException, InvocationTargetException {
        invoke((Throwable) obj, obj2, (d) obj3);
        return zfb.a;
    }

    public final void invoke(Throwable th, Object obj, d dVar) throws IllegalAccessException, InvocationTargetException {
        ((BufferedChannel) this.receiver).E0(th, obj, dVar);
    }
}
