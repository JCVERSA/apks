package g;

import android.net.Uri;
import android.os.ParcelFileDescriptor;

public final class a {

    public final Uri f798a;

    public final String f799b;

    public final ParcelFileDescriptor f800c;

    public final String f801d;

    public long f802e;

    public boolean f803f;

    public a(Uri uri, String str, ParcelFileDescriptor parcelFileDescriptor) {
        this.f798a = uri;
        this.f799b = str;
        this.f800c = parcelFileDescriptor;
        this.f801d = null;
        this.f803f = true;
        this.f802e = -1L;
    }

    public a(String str) {
        this.f798a = null;
        this.f799b = null;
        this.f801d = str;
        this.f800c = null;
        this.f803f = true;
        this.f802e = -1L;
    }
}
