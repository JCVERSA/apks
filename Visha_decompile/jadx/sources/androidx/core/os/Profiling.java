package androidx.core.os;

import android.content.Context;
import android.os.ProfilingManager;
import android.os.ProfilingResult;
import androidx.annotation.RequiresApi;
import defpackage.c74;
import defpackage.gh8;
import defpackage.nh8;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oh8;
import defpackage.s74;
import defpackage.sz3;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.channels.ProduceKt;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\u001a\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a-\u0010\u0004\u001a\u00020\n2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\bH\u0007¢\u0006\u0004\b\u0004\u0010\u000b\u001a%\u0010\f\u001a\u00020\n2\u0006\u0010\u0001\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\bH\u0007¢\u0006\u0004\b\f\u0010\r\u001a9\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bH\u0007¢\u0006\u0004\b\u0010\u0010\u0011\"\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014\"\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014\"\u0014\u0010\u0016\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014\"\u0014\u0010\u0017\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0014\"\u0014\u0010\u0018\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0014\"\u0014\u0010\u0019\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0014\"\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c\"\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001c¨\u0006\u001e"}, d2 = {"Landroid/content/Context;", "context", "Lnz3;", "Landroid/os/ProfilingResult;", "registerForAllProfilingResults", "(Landroid/content/Context;)Lnz3;", "Ljava/util/concurrent/Executor;", "executor", "Ljava/util/function/Consumer;", "listener", "Lzfb;", "(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V", "unregisterForAllProfilingResults", "(Landroid/content/Context;Ljava/util/function/Consumer;)V", "Landroidx/core/os/ProfilingRequest;", "profilingRequest", "requestProfiling", "(Landroid/content/Context;Landroidx/core/os/ProfilingRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V", "", Profiling.KEY_DURATION_MS, "Ljava/lang/String;", Profiling.KEY_SAMPLING_INTERVAL_BYTES, Profiling.KEY_TRACK_JAVA_ALLOCATIONS, Profiling.KEY_FREQUENCY_HZ, Profiling.KEY_SIZE_KB, Profiling.KEY_BUFFER_FILL_POLICY, "", "VALUE_BUFFER_FILL_POLICY_DISCARD", "I", "VALUE_BUFFER_FILL_POLICY_RING_BUFFER", "core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class Profiling {
    private static final String KEY_BUFFER_FILL_POLICY = "KEY_BUFFER_FILL_POLICY";
    private static final String KEY_DURATION_MS = "KEY_DURATION_MS";
    private static final String KEY_FREQUENCY_HZ = "KEY_FREQUENCY_HZ";
    private static final String KEY_SAMPLING_INTERVAL_BYTES = "KEY_SAMPLING_INTERVAL_BYTES";
    private static final String KEY_SIZE_KB = "KEY_SIZE_KB";
    private static final String KEY_TRACK_JAVA_ALLOCATIONS = "KEY_TRACK_JAVA_ALLOCATIONS";
    private static final int VALUE_BUFFER_FILL_POLICY_DISCARD = 1;
    private static final int VALUE_BUFFER_FILL_POLICY_RING_BUFFER = 2;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lgh8;", "Landroid/os/ProfilingResult;", "Lzfb;", "<anonymous>", "(Lgh8;)V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.core.os.Profiling$registerForAllProfilingResults$1", f = "Profiling.kt", l = {79}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final Context $context;
        private Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Context context, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$context = context;
        }

        public static final void invokeSuspend$lambda$0(gh8 gh8Var, ProfilingResult profilingResult) {
            y45.i(profilingResult, "result");
            gh8Var.f(profilingResult);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$context, wh1Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(gh8 gh8Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(gh8Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                final gh8 gh8Var = (gh8) this.L$0;
                final Consumer consumer = new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        Profiling.AnonymousClass1.invokeSuspend$lambda$0(gh8Var, (ProfilingResult) obj2);
                    }
                };
                final ProfilingManager profilingManagerA = oh8.a(this.$context.getSystemService(nh8.a()));
                profilingManagerA.registerForAllProfilingResults(new Executor() {
                    @Override
                    public final void execute(Runnable runnable) {
                        runnable.run();
                    }
                }, consumer);
                c74 c74Var = new c74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m41invoke();
                        return zfb.a;
                    }

                    public final void m41invoke() {
                        profilingManagerA.unregisterForAllProfilingResults(consumer);
                    }
                };
                this.label = 1;
                if (ProduceKt.a(gh8Var, c74Var, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    @RequiresApi(api = 35)
    public static final nz3 registerForAllProfilingResults(Context context) {
        y45.j(context, "context");
        return sz3.d(new AnonymousClass1(context, null));
    }

    @RequiresApi(api = 35)
    public static final void requestProfiling(Context context, ProfilingRequest profilingRequest, Executor executor, Consumer<ProfilingResult> consumer) {
        y45.j(context, "context");
        y45.j(profilingRequest, "profilingRequest");
        oh8.a(context.getSystemService(nh8.a())).requestProfiling(profilingRequest.getProfilingType(), profilingRequest.getParams(), profilingRequest.getTag(), profilingRequest.getCancellationSignal(), executor, consumer);
    }

    @RequiresApi(api = 35)
    public static final void unregisterForAllProfilingResults(Context context, Consumer<ProfilingResult> consumer) {
        y45.j(context, "context");
        y45.j(consumer, "listener");
        oh8.a(context.getSystemService(nh8.a())).unregisterForAllProfilingResults(consumer);
    }

    @RequiresApi(api = 35)
    public static final void registerForAllProfilingResults(Context context, Executor executor, Consumer<ProfilingResult> consumer) {
        y45.j(context, "context");
        y45.j(executor, "executor");
        y45.j(consumer, "listener");
        oh8.a(context.getSystemService(nh8.a())).registerForAllProfilingResults(executor, consumer);
    }
}
