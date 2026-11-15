package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

final class zzcx extends zzcy {
    @Override
    public final URLConnection zza(URL url, String str) throws IOException {
        return url.openConnection();
    }

    private zzcx() {
    }
}
