package androidx.privacysandbox.ads.adservices.java.measurement;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.r;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import v3.n;
import v3.o;
import v3.p;

public abstract class MeasurementManagerFutures {

    public static final a f13708a = new a(null);

    static final class Api33Ext5JavaImpl extends MeasurementManagerFutures {

        private final n f13709b;

        public Api33Ext5JavaImpl(n mMeasurementManager) {
            Intrinsics.h(mMeasurementManager, "mMeasurementManager");
            this.f13709b = mMeasurementManager;
        }

        @Override
        public r b() {
            return CoroutineAdapterKt.c(k.b(o0.a(y0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1(this, null), 3, null), null, 1, null);
        }

        @Override
        public r c(Uri trigger) {
            Intrinsics.h(trigger, "trigger");
            return CoroutineAdapterKt.c(k.b(o0.a(y0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1(this, trigger, null), 3, null), null, 1, null);
        }

        public r e(v3.a deletionRequest) {
            Intrinsics.h(deletionRequest, "deletionRequest");
            return CoroutineAdapterKt.c(k.b(o0.a(y0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1(this, deletionRequest, null), 3, null), null, 1, null);
        }

        public r f(Uri attributionSource, InputEvent inputEvent) {
            Intrinsics.h(attributionSource, "attributionSource");
            return CoroutineAdapterKt.c(k.b(o0.a(y0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1(this, attributionSource, inputEvent, null), 3, null), null, 1, null);
        }

        public r g(o request) {
            Intrinsics.h(request, "request");
            return CoroutineAdapterKt.c(k.b(o0.a(y0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1(this, request, null), 3, null), null, 1, null);
        }

        public r h(p request) {
            Intrinsics.h(request, "request");
            return CoroutineAdapterKt.c(k.b(o0.a(y0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebTriggerAsync$1(this, request, null), 3, null), null, 1, null);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MeasurementManagerFutures a(Context context) {
            Intrinsics.h(context, "context");
            n nVarA = n.f73447a.a(context);
            if (nVarA != null) {
                return new Api33Ext5JavaImpl(nVarA);
            }
            return null;
        }

        private a() {
        }
    }

    public static final MeasurementManagerFutures a(Context context) {
        return f13708a.a(context);
    }

    public abstract r b();

    public abstract r c(Uri uri);
}
