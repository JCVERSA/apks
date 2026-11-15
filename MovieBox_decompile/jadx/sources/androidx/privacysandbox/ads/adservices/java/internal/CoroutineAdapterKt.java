package androidx.privacysandbox.ads.adservices.java.internal;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.r;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r0;

public abstract class CoroutineAdapterKt {
    public static final r b(final r0 r0Var, final Object obj) {
        Intrinsics.h(r0Var, "<this>");
        r rVarA = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.b() {
            @Override
            public final Object a(CallbackToFutureAdapter.a aVar) {
                return CoroutineAdapterKt.d(r0Var, obj, aVar);
            }
        });
        Intrinsics.g(rVarA, "getFuture { completer ->…        }\n    }\n    tag\n}");
        return rVarA;
    }

    public static r c(r0 r0Var, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = "Deferred.asListenableFuture";
        }
        return b(r0Var, obj);
    }

    public static final Object d(final r0 this_asListenableFuture, Object obj, final CallbackToFutureAdapter.a completer) {
        Intrinsics.h(this_asListenableFuture, "$this_asListenableFuture");
        Intrinsics.h(completer, "completer");
        this_asListenableFuture.invokeOnCompletion(new Function1<Throwable, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj2) {
                invoke((Throwable) obj2);
                return Unit.f64096a;
            }

            public final void invoke(Throwable th2) {
                if (th2 == null) {
                    completer.b(this_asListenableFuture.d());
                } else if (th2 instanceof CancellationException) {
                    completer.c();
                } else {
                    completer.e(th2);
                }
            }
        });
        return obj;
    }
}
