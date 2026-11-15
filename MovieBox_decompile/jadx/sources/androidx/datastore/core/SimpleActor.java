package androidx.datastore.core;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

public final class SimpleActor {

    private final n0 f8288a;

    private final Function2 f8289b;

    private final kotlinx.coroutines.channels.d f8290c;

    private final b f8291d;

    public SimpleActor(n0 scope, final Function1 onComplete, final Function2 onUndeliveredElement, Function2 consumeMessage) {
        Intrinsics.h(scope, "scope");
        Intrinsics.h(onComplete, "onComplete");
        Intrinsics.h(onUndeliveredElement, "onUndeliveredElement");
        Intrinsics.h(consumeMessage, "consumeMessage");
        this.f8288a = scope;
        this.f8289b = consumeMessage;
        this.f8290c = kotlinx.coroutines.channels.g.b(Integer.MAX_VALUE, null, null, 6, null);
        this.f8291d = new b(0);
        t1 t1Var = (t1) scope.getCoroutineContext().get(t1.f65027m1);
        if (t1Var != null) {
            t1Var.invokeOnCompletion(new Function1<Throwable, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((Throwable) obj);
                    return Unit.f64096a;
                }

                public final void invoke(Throwable th2) {
                    Unit unit;
                    onComplete.invoke(th2);
                    this.f8290c.i(th2);
                    do {
                        Object objF = kotlinx.coroutines.channels.h.f(this.f8290c.c());
                        if (objF != null) {
                            onUndeliveredElement.invoke(objF, th2);
                            unit = Unit.f64096a;
                        } else {
                            unit = null;
                        }
                    } while (unit != null);
                }
            });
        }
    }

    public final void e(Object obj) throws Throwable {
        Object objA = this.f8290c.a(obj);
        if (objA instanceof kotlinx.coroutines.channels.h.a) {
            Throwable thE = kotlinx.coroutines.channels.h.e(objA);
            if (thE != null) {
                throw thE;
            }
            throw new ClosedSendChannelException("Channel was closed normally");
        }
        if (!kotlinx.coroutines.channels.h.i(objA)) {
            throw new IllegalStateException("Check failed.");
        }
        if (this.f8291d.c() == 0) {
            kotlinx.coroutines.k.d(this.f8288a, null, null, new SimpleActor$offer$2(this, null), 3, null);
        }
    }
}
