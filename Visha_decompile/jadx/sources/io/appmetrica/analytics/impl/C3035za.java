package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class C3035za extends M2 {
    public C3035za(int i) {
        super(i);
    }

    @Override
    @NonNull
    public final C2649jn a(@Nullable String str) {
        int length = 0;
        if (str != null) {
            int length2 = str.length();
            int i = this.a;
            if (length2 > i) {
                String strSubstring = str.substring(0, i);
                length = str.getBytes().length - strSubstring.getBytes().length;
                str = strSubstring;
            }
        }
        return new C2649jn(str, new C2903u3(length));
    }
}
