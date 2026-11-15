package com.facebook.ads.redexgen.core;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

public final class CE {
    public static final AtomicLong A07 = new AtomicLong();
    public final long A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final Uri A04;
    public final AnonymousClass56 A05;
    public final Map<String, List<String>> A06;

    /* JADX WARN: Illegal instructions before constructor call */
    public CE(long j, AnonymousClass56 anonymousClass56, long j2) {
        Uri uri;
        if (anonymousClass56 != null) {
            uri = anonymousClass56.A06;
        } else {
            uri = null;
        }
        this(j, anonymousClass56, uri, Collections.emptyMap(), j2, 0L, 0L);
    }

    public CE(long j, AnonymousClass56 anonymousClass56, Uri uri, Map<String, List<String>> responseHeaders, long j2, long j3, long j4) {
        this.A03 = j;
        this.A05 = anonymousClass56;
        this.A04 = uri;
        this.A06 = responseHeaders;
        this.A01 = j2;
        this.A02 = j3;
        this.A00 = j4;
    }

    public static long A00() {
        return A07.getAndIncrement();
    }
}
