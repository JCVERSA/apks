package defpackage;

import android.util.Log;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class sxi extends xxi {
    public final String a;

    public sxi(String str) {
        this.a = str;
    }

    @Override
    public final void a(String str) {
        String str2 = this.a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
        sb.append(str2);
        sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        sb.append(str);
        Log.d("isoparser", sb.toString());
    }
}
