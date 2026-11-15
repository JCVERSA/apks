package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import java.util.LinkedHashMap;
import java.util.Map;

final class FullSegmentEncryptionKeyCache {

    private final LinkedHashMap f25251a;

    public FullSegmentEncryptionKeyCache(final int i10) {
        this.f25251a = new LinkedHashMap<Uri, byte[]>(this, i10 + 1, 1.0f, false) {
            @Override
            protected boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
                return size() > i10;
            }
        };
    }

    public byte[] a(Uri uri) {
        if (uri == null) {
            return null;
        }
        return (byte[]) this.f25251a.get(uri);
    }

    public byte[] b(Uri uri, byte[] bArr) {
        return (byte[]) this.f25251a.put((Uri) com.google.android.exoplayer2.util.a.e(uri), (byte[]) com.google.android.exoplayer2.util.a.e(bArr));
    }

    public byte[] c(Uri uri) {
        return (byte[]) this.f25251a.remove(com.google.android.exoplayer2.util.a.e(uri));
    }
}
