package kotlinx.coroutines.channels;

import defpackage.u74;
import defpackage.zfb;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.coroutines.d;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public class BufferedChannel$bindCancellationFunResult$1 extends FunctionReferenceImpl implements u74 {
    public BufferedChannel$bindCancellationFunResult$1(Object obj) {
        super(3, obj, BufferedChannel.class, "onCancellationChannelResultImplDoNotCall", "onCancellationChannelResultImplDoNotCall-5_sEAP8(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0);
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3) throws IllegalAccessException, InvocationTargetException {
        m296invoke5_sEAP8((Throwable) obj, ((a) obj2).k(), (d) obj3);
        return zfb.a;
    }

    public final void m296invoke5_sEAP8(Throwable th, Object obj, d dVar) throws IllegalAccessException, InvocationTargetException {
        ((BufferedChannel) this.receiver).D0(th, obj, dVar);
    }
}
