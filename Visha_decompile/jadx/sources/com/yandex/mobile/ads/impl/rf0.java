package com.yandex.mobile.ads.impl;

import android.support.v4.media.session.PlaybackStateCompat;
import defpackage.j1a;
import defpackage.y45;
import java.io.IOException;
import okio.BufferedSource;

public final class rf0 {
    private final BufferedSource a;
    private long b;

    public rf0(BufferedSource bufferedSource) {
        y45.j(bufferedSource, "source");
        this.a = bufferedSource;
        this.b = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
    }

    public final qf0 a() throws IOException {
        qf0.a aVar = new qf0.a();
        while (true) {
            String strB = b();
            if (strB.length() == 0) {
                return aVar.a();
            }
            y45.j(strB, "line");
            int iL0 = j1a.l0(strB, ':', 1, false, 4, null);
            if (iL0 != -1) {
                String strSubstring = strB.substring(0, iL0);
                y45.i(strSubstring, "substring(...)");
                String strSubstring2 = strB.substring(iL0 + 1);
                y45.i(strSubstring2, "substring(...)");
                aVar.a(strSubstring, strSubstring2);
            } else if (strB.charAt(0) == ':') {
                String strSubstring3 = strB.substring(1);
                y45.i(strSubstring3, "substring(...)");
                aVar.a("", strSubstring3);
            } else {
                aVar.a("", strB);
            }
        }
    }

    public final String b() throws IOException {
        String utf8LineStrict = this.a.readUtf8LineStrict(this.b);
        this.b -= (long) utf8LineStrict.length();
        return utf8LineStrict;
    }
}
