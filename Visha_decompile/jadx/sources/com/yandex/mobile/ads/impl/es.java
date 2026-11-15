package com.yandex.mobile.ads.impl;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.datasource.cache.ContentMetadata;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class es {
    private final HashMap a = new HashMap();
    private final ArrayList b = new ArrayList();

    public static void a(es esVar, long j) {
        esVar.a.put(ContentMetadata.KEY_CONTENT_LENGTH, Long.valueOf(j));
        esVar.b.remove(ContentMetadata.KEY_CONTENT_LENGTH);
    }

    public final List<String> b() {
        return Collections.unmodifiableList(new ArrayList(this.b));
    }

    public static void a(es esVar, @Nullable Uri uri) {
        if (uri == null) {
            esVar.b.add(ContentMetadata.KEY_REDIRECTED_URI);
            esVar.a.remove(ContentMetadata.KEY_REDIRECTED_URI);
            return;
        }
        String string = uri.toString();
        HashMap map = esVar.a;
        string.getClass();
        map.put(ContentMetadata.KEY_REDIRECTED_URI, string);
        esVar.b.remove(ContentMetadata.KEY_REDIRECTED_URI);
    }

    public final Map<String, Object> a() {
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
}
