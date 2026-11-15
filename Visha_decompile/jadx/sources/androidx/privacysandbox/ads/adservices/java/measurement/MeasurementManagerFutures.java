package androidx.privacysandbox.ads.adservices.java.measurement;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.privacysandbox.ads.adservices.measurement.DeletionRequest;
import androidx.privacysandbox.ads.adservices.measurement.MeasurementManager;
import androidx.privacysandbox.ads.adservices.measurement.WebSourceRegistrationRequest;
import androidx.privacysandbox.ads.adservices.measurement.WebTriggerRegistrationRequest;
import com.lzy.okgo.model.Progress;
import defpackage.el0;
import defpackage.im5;
import defpackage.mc2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.d;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b&\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001e\u001dB\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\b\u0010\tJ'\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH'¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0010\u001a\u00020\nH'¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0014\u001a\u00020\u0013H'¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0014\u001a\u00020\u0017H'¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0006H'¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;", "", MethodDecl.initName, "()V", "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;", "deletionRequest", "Lim5;", "Lzfb;", "deleteRegistrationsAsync", "(Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;)Lim5;", "Landroid/net/Uri;", "attributionSource", "Landroid/view/InputEvent;", "inputEvent", "registerSourceAsync", "(Landroid/net/Uri;Landroid/view/InputEvent;)Lim5;", "trigger", "registerTriggerAsync", "(Landroid/net/Uri;)Lim5;", "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;", Progress.REQUEST, "registerWebSourceAsync", "(Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;)Lim5;", "Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;", "registerWebTriggerAsync", "(Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;)Lim5;", "", "getMeasurementApiStatusAsync", "()Lim5;", "Companion", "Api33Ext5JavaImpl", "ads-adservices-java_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class MeasurementManagerFutures {

    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0017¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0017¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0012\u001a\u00020\fH\u0017¢\u0006\u0004\b\u0013\u0010\u0014J\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0017¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0016\u001a\u00020\u0019H\u0017¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\bH\u0017¢\u0006\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001f¨\u0006 "}, d2 = {"Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl;", "Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;", "Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;", "mMeasurementManager", MethodDecl.initName, "(Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;)V", "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;", "deletionRequest", "Lim5;", "Lzfb;", "deleteRegistrationsAsync", "(Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;)Lim5;", "Landroid/net/Uri;", "attributionSource", "Landroid/view/InputEvent;", "inputEvent", "registerSourceAsync", "(Landroid/net/Uri;Landroid/view/InputEvent;)Lim5;", "trigger", "registerTriggerAsync", "(Landroid/net/Uri;)Lim5;", "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;", Progress.REQUEST, "registerWebSourceAsync", "(Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;)Lim5;", "Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;", "registerWebTriggerAsync", "(Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;)Lim5;", "", "getMeasurementApiStatusAsync", "()Lim5;", "Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;", "ads-adservices-java_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Api33Ext5JavaImpl extends MeasurementManagerFutures {
        private final MeasurementManager mMeasurementManager;

        public Api33Ext5JavaImpl(MeasurementManager measurementManager) {
            y45.j(measurementManager, "mMeasurementManager");
            this.mMeasurementManager = measurementManager;
        }

        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        public im5 deleteRegistrationsAsync(DeletionRequest deletionRequest) {
            y45.j(deletionRequest, "deletionRequest");
            return CoroutineAdapterKt.asListenableFuture$default(el0.b(d.a(mc2.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1(this, deletionRequest, null), 3, null), null, 1, null);
        }

        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        public im5 getMeasurementApiStatusAsync() {
            return CoroutineAdapterKt.asListenableFuture$default(el0.b(d.a(mc2.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1(this, null), 3, null), null, 1, null);
        }

        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        public im5 registerSourceAsync(Uri attributionSource, InputEvent inputEvent) {
            y45.j(attributionSource, "attributionSource");
            return CoroutineAdapterKt.asListenableFuture$default(el0.b(d.a(mc2.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1(this, attributionSource, inputEvent, null), 3, null), null, 1, null);
        }

        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        public im5 registerTriggerAsync(Uri trigger) {
            y45.j(trigger, "trigger");
            return CoroutineAdapterKt.asListenableFuture$default(el0.b(d.a(mc2.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1(this, trigger, null), 3, null), null, 1, null);
        }

        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        public im5 registerWebSourceAsync(WebSourceRegistrationRequest request) {
            y45.j(request, Progress.REQUEST);
            return CoroutineAdapterKt.asListenableFuture$default(el0.b(d.a(mc2.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1(this, request, null), 3, null), null, 1, null);
        }

        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        public im5 registerWebTriggerAsync(WebTriggerRegistrationRequest request) {
            y45.j(request, Progress.REQUEST);
            return CoroutineAdapterKt.asListenableFuture$default(el0.b(d.a(mc2.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebTriggerAsync$1(this, request, null), 3, null), null, 1, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Companion;", "", "()V", "from", "Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;", "context", "Landroid/content/Context;", "ads-adservices-java_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MeasurementManagerFutures from(Context context) {
            y45.j(context, "context");
            MeasurementManager measurementManagerObtain = MeasurementManager.INSTANCE.obtain(context);
            if (measurementManagerObtain != null) {
                return new Api33Ext5JavaImpl(measurementManagerObtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    public static final MeasurementManagerFutures from(Context context) {
        return INSTANCE.from(context);
    }

    public abstract im5 deleteRegistrationsAsync(DeletionRequest deletionRequest);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    public abstract im5 getMeasurementApiStatusAsync();

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    public abstract im5 registerSourceAsync(Uri attributionSource, InputEvent inputEvent);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    public abstract im5 registerTriggerAsync(Uri trigger);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    public abstract im5 registerWebSourceAsync(WebSourceRegistrationRequest request);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    public abstract im5 registerWebTriggerAsync(WebTriggerRegistrationRequest request);
}
