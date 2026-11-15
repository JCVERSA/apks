package defpackage;

import android.adservices.measurement.WebTriggerRegistrationRequest;
import android.net.Uri;
import java.util.List;

public abstract class xa6 {
    public static WebTriggerRegistrationRequest.Builder a(List list, Uri uri) {
        return new WebTriggerRegistrationRequest.Builder(list, uri);
    }
}
