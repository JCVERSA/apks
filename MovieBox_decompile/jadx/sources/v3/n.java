package v3;

import android.adservices.measurement.DeletionRequest;
import android.adservices.measurement.MeasurementManager;
import android.adservices.measurement.WebSourceRegistrationRequest;
import android.adservices.measurement.WebTriggerRegistrationRequest;
import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.core.os.r;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

public abstract class n {

    public static final b f73447a = new b(null);

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final n a(Context context) {
            Intrinsics.h(context, "context");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AdServicesInfo.version=");
            u3.a aVar = u3.a.f72998a;
            sb2.append(aVar.a());
            if (aVar.a() >= 5) {
                return new a(context);
            }
            return null;
        }

        private b() {
        }
    }

    public abstract Object a(v3.a aVar, Continuation continuation);

    public abstract Object b(Continuation continuation);

    public abstract Object c(Uri uri, InputEvent inputEvent, Continuation continuation);

    public abstract Object d(Uri uri, Continuation continuation);

    public abstract Object e(o oVar, Continuation continuation);

    public abstract Object f(p pVar, Continuation continuation);

    private static final class a extends n {

        private final MeasurementManager f73448b;

        public a(MeasurementManager mMeasurementManager) {
            Intrinsics.h(mMeasurementManager, "mMeasurementManager");
            this.f73448b = mMeasurementManager;
        }

        public final DeletionRequest k(v3.a aVar) {
            k.a();
            throw null;
        }

        public final WebSourceRegistrationRequest l(o oVar) {
            l.a();
            throw null;
        }

        public final WebTriggerRegistrationRequest m(p pVar) {
            c.a();
            throw null;
        }

        @Override
        public Object a(v3.a aVar, Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.f73448b.deleteRegistrations(k(aVar), new m(), r.a(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result == IntrinsicsKt.f() ? result : Unit.f64096a;
        }

        @Override
        public Object b(Continuation<? super Integer> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.f73448b.getMeasurementApiStatus(new m(), r.a(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result;
        }

        @Override
        public Object c(Uri uri, InputEvent inputEvent, Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.f73448b.registerSource(uri, inputEvent, new m(), r.a(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result == IntrinsicsKt.f() ? result : Unit.f64096a;
        }

        @Override
        public Object d(Uri uri, Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.f73448b.registerTrigger(uri, new m(), r.a(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result == IntrinsicsKt.f() ? result : Unit.f64096a;
        }

        @Override
        public Object e(o oVar, Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.f73448b.registerWebSource(l(oVar), new m(), r.a(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result == IntrinsicsKt.f() ? result : Unit.f64096a;
        }

        @Override
        public Object f(p pVar, Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.f73448b.registerWebTrigger(m(pVar), new m(), r.a(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result == IntrinsicsKt.f() ? result : Unit.f64096a;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public a(Context context) {
            Intrinsics.h(context, "context");
            Object systemService = context.getSystemService((Class<Object>) f.a());
            Intrinsics.g(systemService, "context.getSystemService…:class.java\n            )");
            this(g.a(systemService));
        }
    }
}
