package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class n {

    private final Map f26606a = new HashMap();

    private final List f26607b = new ArrayList();

    private n a(String str, Object obj) {
        this.f26606a.put((String) com.google.android.exoplayer2.util.a.e(str), com.google.android.exoplayer2.util.a.e(obj));
        this.f26607b.remove(str);
        return this;
    }

    public static n g(n nVar, long j10) {
        return nVar.e("exo_len", j10);
    }

    public static n h(n nVar, Uri uri) {
        return uri == null ? nVar.d("exo_redir") : nVar.f("exo_redir", uri.toString());
    }

    public Map b() {
        HashMap map = new HashMap(this.f26606a);
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
        return Collections.unmodifiableList(new ArrayList(this.f26607b));
    }

    public n d(String str) {
        this.f26607b.add(str);
        this.f26606a.remove(str);
        return this;
    }

    public n e(String str, long j10) {
        return a(str, Long.valueOf(j10));
    }

    public n f(String str, String str2) {
        return a(str, str2);
    }
}
