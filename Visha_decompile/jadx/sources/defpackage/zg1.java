package defpackage;

import android.net.Uri;
import androidx.media3.datasource.cache.ContentMetadata;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class zg1 {
    public final Map a = new HashMap();
    public final List b = new ArrayList();

    public static zg1 g(zg1 zg1Var, long j) {
        return zg1Var.e(ContentMetadata.KEY_CONTENT_LENGTH, j);
    }

    public static zg1 h(zg1 zg1Var, Uri uri) {
        return uri == null ? zg1Var.d(ContentMetadata.KEY_REDIRECTED_URI) : zg1Var.f(ContentMetadata.KEY_REDIRECTED_URI, uri.toString());
    }

    public final zg1 a(String str, Object obj) {
        this.a.put((String) zi.e(str), zi.e(obj));
        this.b.remove(str);
        return this;
    }

    public Map b() {
        HashMap map = new HashMap(this.a);
        for (Map.Entry entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                entry.setValue(Arrays.copyOf(bArr, bArr.length));
            }
        }
        return Collections.unmodifiableMap(map);
    }

    public List c() {
        return Collections.unmodifiableList(new ArrayList(this.b));
    }

    public zg1 d(String str) {
        this.b.add(str);
        this.a.remove(str);
        return this;
    }

    public zg1 e(String str, long j) {
        return a(str, Long.valueOf(j));
    }

    public zg1 f(String str, String str2) {
        return a(str, str2);
    }
}
