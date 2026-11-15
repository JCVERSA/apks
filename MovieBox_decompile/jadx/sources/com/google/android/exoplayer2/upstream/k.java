package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.util.Map;

public interface k extends g {

    public interface a {
        k createDataSource();
    }

    long a(n nVar);

    void close();

    void e(k0 k0Var);

    Map getResponseHeaders();

    Uri getUri();
}
