package defpackage;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.google.android.gms.internal.ads.j8;
import java.util.Objects;

public final class gxg {
    public MeasurementManagerFutures a;
    public final Context b;

    public gxg(Context context) {
        this.b = context;
    }

    public final im5 a() {
        try {
            MeasurementManagerFutures measurementManagerFuturesFrom = MeasurementManagerFutures.from(this.b);
            this.a = measurementManagerFuturesFrom;
            return measurementManagerFuturesFrom == null ? j8.g(new IllegalStateException("MeasurementManagerFutures is null")) : measurementManagerFuturesFrom.getMeasurementApiStatusAsync();
        } catch (Exception e) {
            return j8.g(e);
        }
    }

    public final im5 b(Uri uri, InputEvent inputEvent) {
        try {
            MeasurementManagerFutures measurementManagerFutures = this.a;
            Objects.requireNonNull(measurementManagerFutures);
            return measurementManagerFutures.registerSourceAsync(uri, inputEvent);
        } catch (Exception e) {
            return j8.g(e);
        }
    }
}
