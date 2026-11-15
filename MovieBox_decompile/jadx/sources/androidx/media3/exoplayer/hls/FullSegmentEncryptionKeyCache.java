package androidx.media3.exoplayer.hls;

import android.net.Uri;
import java.util.LinkedHashMap;
import java.util.Map;

final class FullSegmentEncryptionKeyCache {

    private final LinkedHashMap f11348a;

    public FullSegmentEncryptionKeyCache(final int i10) {
        this.f11348a = new LinkedHashMap<Uri, byte[]>(i10 + 1, 1.0f, false) {
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
        return (byte[]) this.f11348a.get(uri);
    }

    public byte[] b(Uri uri, byte[] bArr) {
        return (byte[]) this.f11348a.put((Uri) androidx.media3.common.util.a.e(uri), (byte[]) androidx.media3.common.util.a.e(bArr));
    }

    public byte[] c(Uri uri) {
        return (byte[]) this.f11348a.remove(androidx.media3.common.util.a.e(uri));
    }
}
