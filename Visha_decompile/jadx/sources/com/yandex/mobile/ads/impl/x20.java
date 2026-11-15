package com.yandex.mobile.ads.impl;

import android.net.Uri;
import defpackage.y45;

public final class x20 {
    private final Uri a;

    public x20(Uri uri) {
        y45.j(uri, "url");
        this.a = uri;
    }

    public final Uri a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x20) && y45.e(this.a, ((x20) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "DivKitClickExtensionData(url=" + this.a + ")";
    }
}
