package c5;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Type;

public class h implements z0 {

    public static final h f16562a = new h();

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        if (b.a(obj)) {
            j1Var.y('{', AppMeasurementSdk.ConditionalUserProperty.VALUE, c.a(obj).longValue());
            j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
        } else if (e.a(obj)) {
            j1Var.w('{', AppMeasurementSdk.ConditionalUserProperty.VALUE, f.a(obj).doubleValue());
            j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
        }
    }
}
