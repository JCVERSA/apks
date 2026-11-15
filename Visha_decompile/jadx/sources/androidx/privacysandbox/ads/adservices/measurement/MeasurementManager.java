package androidx.privacysandbox.ads.adservices.measurement;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.view.InputEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import com.lzy.okgo.model.Progress;
import defpackage.da6;
import defpackage.ea6;
import defpackage.pa6;
import defpackage.pt1;
import defpackage.qa6;
import defpackage.ra6;
import defpackage.sa6;
import defpackage.ta6;
import defpackage.ur1;
import defpackage.va6;
import defpackage.wa6;
import defpackage.wh1;
import defpackage.xa6;
import defpackage.y45;
import defpackage.ya6;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CancellableContinuationImpl;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b&\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001d\u001cB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H¦@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ%\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH§@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\tH§@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H§@ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0016H§@ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u0013\u0010\u001a\u001a\u00020\u0019H§@ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;", "", MethodDecl.initName, "()V", "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;", "deletionRequest", "Lzfb;", "deleteRegistrations", "(Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;Lwh1;)Ljava/lang/Object;", "Landroid/net/Uri;", "attributionSource", "Landroid/view/InputEvent;", "inputEvent", "registerSource", "(Landroid/net/Uri;Landroid/view/InputEvent;Lwh1;)Ljava/lang/Object;", "trigger", "registerTrigger", "(Landroid/net/Uri;Lwh1;)Ljava/lang/Object;", "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;", Progress.REQUEST, "registerWebSource", "(Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;Lwh1;)Ljava/lang/Object;", "Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;", "registerWebTrigger", "(Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;Lwh1;)Ljava/lang/Object;", "", "getMeasurementApiStatus", "(Lwh1;)Ljava/lang/Object;", "Companion", "Api33Ext5Impl", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class MeasurementManager {

    public static final Companion INSTANCE = new Companion(null);
    public static final int MEASUREMENT_API_STATE_DISABLED = 0;
    public static final int MEASUREMENT_API_STATE_ENABLED = 1;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager$Companion;", "", "()V", "MEASUREMENT_API_STATE_DISABLED", "", "MEASUREMENT_API_STATE_ENABLED", "obtain", "Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;", "context", "Landroid/content/Context;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        public final MeasurementManager obtain(Context context) {
            y45.j(context, "context");
            StringBuilder sb = new StringBuilder();
            sb.append("AdServicesInfo.version=");
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            sb.append(adServicesInfo.version());
            Log.d("MeasurementManager", sb.toString());
            if (adServicesInfo.version() >= 5) {
                return new Api33Ext5Impl(context);
            }
            return null;
        }

        private Companion() {
        }
    }

    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    public static final MeasurementManager obtain(Context context) {
        return INSTANCE.obtain(context);
    }

    public abstract Object deleteRegistrations(DeletionRequest deletionRequest, wh1<? super zfb> wh1Var);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    public abstract Object getMeasurementApiStatus(wh1<? super Integer> wh1Var);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    public abstract Object registerSource(Uri uri, InputEvent inputEvent, wh1<? super zfb> wh1Var);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    public abstract Object registerTrigger(Uri uri, wh1<? super zfb> wh1Var);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    public abstract Object registerWebSource(WebSourceRegistrationRequest webSourceRegistrationRequest, wh1<? super zfb> wh1Var);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    public abstract Object registerWebTrigger(WebTriggerRegistrationRequest webTriggerRegistrationRequest, wh1<? super zfb> wh1Var);

    @Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0004\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J#\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00122\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\n\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ#\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00122\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0012H\u0002¢\u0006\u0004\b\u001d\u0010\u0016J\u001b\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\tH\u0097@ø\u0001\u0000¢\u0006\u0004\b \u0010!J%\u0010&\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\"2\b\u0010%\u001a\u0004\u0018\u00010$H\u0097@ø\u0001\u0000¢\u0006\u0004\b&\u0010'J\u001b\u0010)\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\"H\u0097@ø\u0001\u0000¢\u0006\u0004\b)\u0010*J\u001b\u0010+\u001a\u00020\u001f2\u0006\u0010\n\u001a\u00020\u000eH\u0097@ø\u0001\u0000¢\u0006\u0004\b+\u0010,J\u001b\u0010-\u001a\u00020\u001f2\u0006\u0010\n\u001a\u00020\u0017H\u0097@ø\u0001\u0000¢\u0006\u0004\b-\u0010.J\u0013\u00100\u001a\u00020/H\u0097@ø\u0001\u0000¢\u0006\u0004\b0\u00101R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00102\u0082\u0002\u0004\n\u0002\b\u0019¨\u00063"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager$Api33Ext5Impl;", "Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;", "Landroid/adservices/measurement/MeasurementManager;", "mMeasurementManager", MethodDecl.initName, "(Landroid/adservices/measurement/MeasurementManager;)V", "Landroid/content/Context;", "context", "(Landroid/content/Context;)V", "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;", Progress.REQUEST, "Landroid/adservices/measurement/DeletionRequest;", "convertDeletionRequest", "(Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;)Landroid/adservices/measurement/DeletionRequest;", "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;", "Landroid/adservices/measurement/WebSourceRegistrationRequest;", "convertWebSourceRequest", "(Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;)Landroid/adservices/measurement/WebSourceRegistrationRequest;", "", "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;", "Landroid/adservices/measurement/WebSourceParams;", "convertWebSourceParams", "(Ljava/util/List;)Ljava/util/List;", "Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;", "Landroid/adservices/measurement/WebTriggerRegistrationRequest;", "convertWebTriggerRequest", "(Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;)Landroid/adservices/measurement/WebTriggerRegistrationRequest;", "Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerParams;", "Landroid/adservices/measurement/WebTriggerParams;", "convertWebTriggerParams", "deletionRequest", "Lzfb;", "deleteRegistrations", "(Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;Lwh1;)Ljava/lang/Object;", "Landroid/net/Uri;", "attributionSource", "Landroid/view/InputEvent;", "inputEvent", "registerSource", "(Landroid/net/Uri;Landroid/view/InputEvent;Lwh1;)Ljava/lang/Object;", "trigger", "registerTrigger", "(Landroid/net/Uri;Lwh1;)Ljava/lang/Object;", "registerWebSource", "(Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;Lwh1;)Ljava/lang/Object;", "registerWebTrigger", "(Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;Lwh1;)Ljava/lang/Object;", "", "getMeasurementApiStatus", "(Lwh1;)Ljava/lang/Object;", "Landroid/adservices/measurement/MeasurementManager;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    @RequiresExtension(extension = 1000000, version = 5)
    public static final class Api33Ext5Impl extends MeasurementManager {
        private final android.adservices.measurement.MeasurementManager mMeasurementManager;

        public Api33Ext5Impl(android.adservices.measurement.MeasurementManager measurementManager) {
            y45.j(measurementManager, "mMeasurementManager");
            this.mMeasurementManager = measurementManager;
        }

        public final android.adservices.measurement.DeletionRequest convertDeletionRequest(DeletionRequest request) {
            android.adservices.measurement.DeletionRequest deletionRequestBuild = ta6.a().setDeletionMode(request.getDeletionMode()).setMatchBehavior(request.getMatchBehavior()).setStart(request.getStart()).setEnd(request.getEnd()).setDomainUris(request.getDomainUris()).setOriginUris(request.getOriginUris()).build();
            y45.i(deletionRequestBuild, "Builder()\n              …\n                .build()");
            return deletionRequestBuild;
        }

        private final List<android.adservices.measurement.WebSourceParams> convertWebSourceParams(List<WebSourceParams> request) {
            ArrayList arrayList = new ArrayList();
            for (WebSourceParams webSourceParams : request) {
                sa6.a();
                android.adservices.measurement.WebSourceParams webSourceParamsBuild = ra6.a(webSourceParams.getRegistrationUri()).setDebugKeyAllowed(webSourceParams.getDebugKeyAllowed()).build();
                y45.i(webSourceParamsBuild, "Builder(param.registrati…                 .build()");
                arrayList.add(webSourceParamsBuild);
            }
            return arrayList;
        }

        public final android.adservices.measurement.WebSourceRegistrationRequest convertWebSourceRequest(WebSourceRegistrationRequest request) {
            wa6.a();
            android.adservices.measurement.WebSourceRegistrationRequest webSourceRegistrationRequestBuild = va6.a(convertWebSourceParams(request.getWebSourceParams()), request.getTopOriginUri()).setWebDestination(request.getWebDestination()).setAppDestination(request.getAppDestination()).setInputEvent(request.getInputEvent()).setVerifiedDestination(request.getVerifiedDestination()).build();
            y45.i(webSourceRegistrationRequestBuild, "Builder(\n               …\n                .build()");
            return webSourceRegistrationRequestBuild;
        }

        private final List<android.adservices.measurement.WebTriggerParams> convertWebTriggerParams(List<WebTriggerParams> request) {
            ArrayList arrayList = new ArrayList();
            for (WebTriggerParams webTriggerParams : request) {
                qa6.a();
                android.adservices.measurement.WebTriggerParams webTriggerParamsBuild = pa6.a(webTriggerParams.getRegistrationUri()).setDebugKeyAllowed(webTriggerParams.getDebugKeyAllowed()).build();
                y45.i(webTriggerParamsBuild, "Builder(param.registrati…                 .build()");
                arrayList.add(webTriggerParamsBuild);
            }
            return arrayList;
        }

        public final android.adservices.measurement.WebTriggerRegistrationRequest convertWebTriggerRequest(WebTriggerRegistrationRequest request) {
            ya6.a();
            android.adservices.measurement.WebTriggerRegistrationRequest webTriggerRegistrationRequestBuild = xa6.a(convertWebTriggerParams(request.getWebTriggerParams()), request.getDestination()).build();
            y45.i(webTriggerRegistrationRequestBuild, "Builder(\n               …\n                .build()");
            return webTriggerRegistrationRequestBuild;
        }

        @Override
        @DoNotInline
        public Object deleteRegistrations(DeletionRequest deletionRequest, wh1<? super zfb> wh1Var) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
            cancellableContinuationImpl.initCancellability();
            this.mMeasurementManager.deleteRegistrations(convertDeletionRequest(deletionRequest), new ur1(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result == z45.f() ? result : zfb.a;
        }

        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        public Object getMeasurementApiStatus(wh1<? super Integer> wh1Var) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
            cancellableContinuationImpl.initCancellability();
            this.mMeasurementManager.getMeasurementApiStatus(new ur1(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result;
        }

        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        public Object registerSource(Uri uri, InputEvent inputEvent, wh1<? super zfb> wh1Var) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
            cancellableContinuationImpl.initCancellability();
            this.mMeasurementManager.registerSource(uri, inputEvent, new ur1(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result == z45.f() ? result : zfb.a;
        }

        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        public Object registerTrigger(Uri uri, wh1<? super zfb> wh1Var) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
            cancellableContinuationImpl.initCancellability();
            this.mMeasurementManager.registerTrigger(uri, new ur1(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result == z45.f() ? result : zfb.a;
        }

        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        public Object registerWebSource(WebSourceRegistrationRequest webSourceRegistrationRequest, wh1<? super zfb> wh1Var) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
            cancellableContinuationImpl.initCancellability();
            this.mMeasurementManager.registerWebSource(convertWebSourceRequest(webSourceRegistrationRequest), new ur1(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result == z45.f() ? result : zfb.a;
        }

        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        public Object registerWebTrigger(WebTriggerRegistrationRequest webTriggerRegistrationRequest, wh1<? super zfb> wh1Var) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
            cancellableContinuationImpl.initCancellability();
            this.mMeasurementManager.registerWebTrigger(convertWebTriggerRequest(webTriggerRegistrationRequest), new ur1(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result == z45.f() ? result : zfb.a;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Api33Ext5Impl(Context context) {
            y45.j(context, "context");
            Object systemService = context.getSystemService((Class<Object>) da6.a());
            y45.i(systemService, "context.getSystemService…:class.java\n            )");
            this(ea6.a(systemService));
        }
    }
}
