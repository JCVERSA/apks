package androidx.core.provider;

import android.content.Context;
import android.net.Uri;
import android.os.Build;

public abstract class c {
    public static d.a a(Context context, Uri uri) {
        return Build.VERSION.SDK_INT < 24 ? new d.b(context, uri) : new d.c(context, uri);
    }
}
