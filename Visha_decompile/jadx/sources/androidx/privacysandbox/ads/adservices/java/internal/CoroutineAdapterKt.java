package androidx.privacysandbox.ads.adservices.java.internal;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.lzy.okgo.model.Progress;
import defpackage.d72;
import defpackage.e74;
import defpackage.im5;
import defpackage.y45;
import defpackage.zfb;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a1\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0000¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"T", "Ld72;", "", Progress.TAG, "Lim5;", "asListenableFuture", "(Ld72;Ljava/lang/Object;)Lim5;", "ads-adservices-java_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class CoroutineAdapterKt {
    public static final <T> im5 asListenableFuture(final d72 d72Var, final Object obj) {
        y45.j(d72Var, "<this>");
        im5 future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() {
            @Override
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return CoroutineAdapterKt.asListenableFuture$lambda$0(d72Var, obj, completer);
            }
        });
        y45.i(future, "getFuture { completer ->…        }\n    }\n    tag\n}");
        return future;
    }

    public static im5 asListenableFuture$default(d72 d72Var, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = "Deferred.asListenableFuture";
        }
        return asListenableFuture(d72Var, obj);
    }

    public static final Object asListenableFuture$lambda$0(final d72 d72Var, Object obj, final CallbackToFutureAdapter.Completer completer) {
        y45.j(d72Var, "$this_asListenableFuture");
        y45.j(completer, "completer");
        d72Var.invokeOnCompletion(new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj2) {
                invoke((Throwable) obj2);
                return zfb.a;
            }

            /* JADX WARN: Type inference incomplete: some casts might be missing */
            public final void invoke(Throwable th) {
                if (th == null) {
                    completer.set((T) d72Var.d());
                } else if (th instanceof CancellationException) {
                    completer.setCancelled();
                } else {
                    completer.setException(th);
                }
            }
        });
        return obj;
    }
}
