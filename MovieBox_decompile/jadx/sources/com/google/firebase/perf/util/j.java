package com.google.firebase.perf.util;

import java.net.URL;
import java.net.URLConnection;

public class j {

    private final URL f31555a;

    public j(URL url) {
        this.f31555a = url;
    }

    public URLConnection a() {
        return this.f31555a.openConnection();
    }

    public String toString() {
        return this.f31555a.toString();
    }
}
