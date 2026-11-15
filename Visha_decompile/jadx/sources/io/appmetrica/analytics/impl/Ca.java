package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public final class Ca extends M2 {
    public final C3035za b;
    public final C3035za c;
    public final Ba d;

    public Ca(int i, int i2, int i3) {
        this(i, new C3035za(i2), new C3035za(i3));
    }

    public Ca(int i, @NonNull C3035za c3035za, @NonNull C3035za c3035za2) {
        super(i);
        this.d = new Ba();
        this.b = c3035za;
        this.c = c3035za2;
    }

    @Override
    @NonNull
    public final C2649jn a(@Nullable Map<String, String> map) {
        HashMap map2;
        int bytesTruncated;
        int i = 0;
        if (map != null) {
            map2 = new HashMap();
            Set<Map.Entry<String, String>> setEntrySet = map.entrySet();
            Map.Entry[] entryArr = (Map.Entry[]) setEntrySet.toArray(new Map.Entry[setEntrySet.size()]);
            Arrays.sort(entryArr, this.d);
            int length = entryArr.length;
            bytesTruncated = 0;
            int i2 = 0;
            boolean z = false;
            int i3 = 0;
            while (i < length) {
                Map.Entry entry = entryArr[i];
                C2649jn c2649jnA = this.b.a((String) entry.getKey());
                C2649jn c2649jnA2 = this.c.a((String) entry.getValue());
                int utf8BytesLength = StringUtils.getUtf8BytesLength((String) entry.getValue()) + StringUtils.getUtf8BytesLength((String) entry.getKey());
                int utf8BytesLength2 = StringUtils.getUtf8BytesLength((String) c2649jnA2.a) + StringUtils.getUtf8BytesLength((String) c2649jnA.a);
                if (z || utf8BytesLength2 + i3 > this.a) {
                    i2++;
                    bytesTruncated += utf8BytesLength;
                    z = true;
                } else {
                    bytesTruncated = c2649jnA2.b.getBytesTruncated() + c2649jnA.b.getBytesTruncated() + bytesTruncated;
                    int utf8BytesLength3 = StringUtils.getUtf8BytesLength((String) c2649jnA2.a) + StringUtils.getUtf8BytesLength((String) c2649jnA.a) + i3;
                    map2.put((String) c2649jnA.a, (String) c2649jnA2.a);
                    i3 = utf8BytesLength3;
                }
                i++;
            }
            i = i2;
        } else {
            map2 = null;
            bytesTruncated = 0;
        }
        return new C2649jn(map2, new E4(i, bytesTruncated));
    }
}
