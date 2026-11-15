package androidx.media3.datasource.cache;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class n {

    private final Map f10547a = new HashMap();

    private final List f10548b = new ArrayList();

    private n a(String str, Object obj) {
        this.f10547a.put((String) androidx.media3.common.util.a.e(str), androidx.media3.common.util.a.e(obj));
        this.f10548b.remove(str);
        return this;
    }

    public static n g(n nVar, long j10) {
        return nVar.e("exo_len", j10);
    }

    public static n h(n nVar, Uri uri) {
        return uri == null ? nVar.d("exo_redir") : nVar.f("exo_redir", uri.toString());
    }

    public Map b() {
        HashMap map = new HashMap(this.f10547a);
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
        return Collections.unmodifiableList(new ArrayList(this.f10548b));
    }

    public n d(String str) {
        this.f10548b.add(str);
        this.f10547a.remove(str);
        return this;
    }

    public n e(String str, long j10) {
        return a(str, Long.valueOf(j10));
    }

    public n f(String str, String str2) {
        return a(str, str2);
    }
}
