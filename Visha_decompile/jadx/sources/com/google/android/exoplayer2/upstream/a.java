package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import defpackage.ms1;
import defpackage.u5b;
import java.util.Collections;
import java.util.Map;

public interface a extends ms1 {

    public interface InterfaceC0084a {
        a createDataSource();
    }

    long a(b bVar);

    void b(u5b u5bVar);

    void close();

    default Map getResponseHeaders() {
        return Collections.emptyMap();
    }

    Uri getUri();
}
