package defpackage;

import com.hunantv.media.drm.IDrmManager;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SimpleTimeZone;
import org.apache.commons.lang3.time.TimeZones;

public class a2 extends p1 {
    public static final d2 c = new a(a2.class, 23);
    public final byte[] b;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return a2.w(wp1Var.z());
        }
    }

    public a2(String str) {
        this.b = u0a.e(str);
        try {
            z();
        } catch (ParseException e) {
            throw new IllegalArgumentException("invalid date string: " + e.getMessage());
        }
    }

    private boolean B(int i) {
        byte b;
        byte[] bArr = this.b;
        return bArr.length > i && (b = bArr[i]) >= 48 && b <= 57;
    }

    public static a2 w(byte[] bArr) {
        return new a2(bArr);
    }

    public String A() {
        StringBuilder sb;
        String strSubstring;
        String strB = u0a.b(this.b);
        if (strB.indexOf(45) >= 0 || strB.indexOf(43) >= 0) {
            int iIndexOf = strB.indexOf(45);
            if (iIndexOf < 0) {
                iIndexOf = strB.indexOf(43);
            }
            if (iIndexOf == strB.length() - 3) {
                strB = strB + "00";
            }
            if (iIndexOf == 10) {
                sb = new StringBuilder();
                sb.append(strB.substring(0, 10));
                sb.append("00GMT");
                sb.append(strB.substring(10, 13));
                sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
                strSubstring = strB.substring(13, 15);
            } else {
                sb = new StringBuilder();
                sb.append(strB.substring(0, 12));
                sb.append(TimeZones.GMT_ID);
                sb.append(strB.substring(12, 15));
                sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
                strSubstring = strB.substring(15, 17);
            }
        } else if (strB.length() == 11) {
            sb = new StringBuilder();
            sb.append(strB.substring(0, 10));
            strSubstring = "00GMT+00:00";
        } else {
            sb = new StringBuilder();
            sb.append(strB.substring(0, 12));
            strSubstring = "GMT+00:00";
        }
        sb.append(strSubstring);
        return sb.toString();
    }

    @Override
    public int hashCode() {
        return ci.v(this.b);
    }

    @Override
    public boolean m(p1 p1Var) {
        if (p1Var instanceof a2) {
            return ci.b(this.b, ((a2) p1Var).b);
        }
        return false;
    }

    @Override
    public void n(o1 o1Var, boolean z) {
        o1Var.o(z, 23, this.b);
    }

    @Override
    public final boolean o() {
        return false;
    }

    @Override
    public int q(boolean z) {
        return o1.g(z, this.b.length);
    }

    public String toString() {
        return u0a.b(this.b);
    }

    public Date x() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssz", co5.b);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        return simpleDateFormat.parse(y());
    }

    public String y() {
        StringBuilder sb;
        String str;
        String strA = A();
        if (strA.charAt(0) < '5') {
            sb = new StringBuilder();
            str = IDrmManager.SessionConfig.STR_DRM_TYPE_AUDIO_MAES;
        } else {
            sb = new StringBuilder();
            str = "19";
        }
        sb.append(str);
        sb.append(strA);
        return sb.toString();
    }

    public Date z() {
        return new SimpleDateFormat("yyMMddHHmmssz", co5.b).parse(A());
    }

    public a2(byte[] bArr) {
        if (bArr.length < 2) {
            throw new IllegalArgumentException("UTCTime string too short");
        }
        this.b = bArr;
        if (!B(0) || !B(1)) {
            throw new IllegalArgumentException("illegal characters in UTCTime string");
        }
    }
}
