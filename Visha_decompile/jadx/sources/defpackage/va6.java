package defpackage;

import android.adservices.measurement.WebSourceRegistrationRequest;
import android.net.Uri;
import java.util.List;

public abstract class va6 {
    public static WebSourceRegistrationRequest.Builder a(List list, Uri uri) {
        return new WebSourceRegistrationRequest.Builder(list, uri);
    }
}
