package com.google.android.exoplayer2.source.rtsp;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class d0 {

    public static final d0 f25681c = new d0(0, C.TIME_UNSET);

    private static final Pattern f25682d = Pattern.compile("npt[:=]([.\\d]+|now)\\s?-\\s?([.\\d]+)?");

    public final long f25683a;

    public final long f25684b;

    private d0(long j10, long j11) {
        this.f25683a = j10;
        this.f25684b = j11;
    }

    public static String b(long j10) {
        return p0.C("npt=%.3f-", Double.valueOf(j10 / 1000.0d));
    }

    public static d0 d(String str) throws ParserException {
        long j10;
        Matcher matcher = f25682d.matcher(str);
        y.a(matcher.matches(), str);
        String strGroup = matcher.group(1);
        y.a(strGroup != null, str);
        long j11 = ((String) p0.j(strGroup)).equals("now") ? 0L : (long) (Float.parseFloat(strGroup) * 1000.0f);
        String strGroup2 = matcher.group(2);
        if (strGroup2 != null) {
            try {
                j10 = (long) (Float.parseFloat(strGroup2) * 1000.0f);
                y.a(j10 >= j11, str);
            } catch (NumberFormatException e10) {
                throw ParserException.createForMalformedManifest(strGroup2, e10);
            }
        } else {
            j10 = C.TIME_UNSET;
        }
        return new d0(j11, j10);
    }

    public long a() {
        return this.f25684b - this.f25683a;
    }

    public boolean c() {
        return this.f25684b == C.TIME_UNSET;
    }
}
