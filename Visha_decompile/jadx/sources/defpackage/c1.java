package defpackage;

import com.hisavana.common.constant.ComConstants;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import org.apache.commons.lang3.time.TimeZones;
import org.slf4j.Marker;

public class c1 extends p1 {
    public static final d2 c = new a(c1.class, 24);
    public final byte[] b;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return c1.z(wp1Var.z());
        }
    }

    public c1(String str) {
        this.b = u0a.e(str);
        try {
            A();
        } catch (ParseException e) {
            throw new IllegalArgumentException("invalid date string: " + e.getMessage());
        }
    }

    public static c1 B(Object obj) {
        if (obj == null || (obj instanceof c1)) {
            return (c1) obj;
        }
        if (obj instanceof x0) {
            p1 p1VarJ = ((x0) obj).j();
            if (p1VarJ instanceof c1) {
                return (c1) p1VarJ;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (c1) c.b((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    public static c1 z(byte[] bArr) {
        return new c1(bArr);
    }

    public Date A() {
        SimpleDateFormat simpleDateFormatW;
        SimpleDateFormat simpleDateFormat;
        String strB = u0a.b(this.b);
        if (strB.endsWith("Z")) {
            if (D()) {
                simpleDateFormatW = new SimpleDateFormat("yyyyMMddHHmmss.SSS'Z'", co5.b);
            } else if (F()) {
                simpleDateFormatW = new SimpleDateFormat("yyyyMMddHHmmss'Z'", co5.b);
            } else {
                simpleDateFormatW = E() ? new SimpleDateFormat("yyyyMMddHHmm'Z'", co5.b) : new SimpleDateFormat("yyyyMMddHH'Z'", co5.b);
            }
            simpleDateFormatW.setTimeZone(new SimpleTimeZone(0, "Z"));
        } else if (strB.indexOf(45) > 0 || strB.indexOf(43) > 0) {
            strB = C();
            simpleDateFormatW = w();
        } else {
            if (D()) {
                simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss.SSS");
            } else if (F()) {
                simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
            } else {
                simpleDateFormat = E() ? new SimpleDateFormat("yyyyMMddHHmm") : new SimpleDateFormat("yyyyMMddHH");
            }
            simpleDateFormatW = simpleDateFormat;
            simpleDateFormatW.setTimeZone(new SimpleTimeZone(0, TimeZone.getDefault().getID()));
        }
        if (D()) {
            strB = H(strB);
        }
        return simpleDateFormatW.parse(strB);
    }

    public String C() {
        String strB = u0a.b(this.b);
        if (strB.charAt(strB.length() - 1) == 'Z') {
            return strB.substring(0, strB.length() - 1) + "GMT+00:00";
        }
        int length = strB.length();
        char cCharAt = strB.charAt(length - 6);
        if ((cCharAt == '-' || cCharAt == '+') && strB.indexOf(TimeZones.GMT_ID) == length - 9) {
            return strB;
        }
        int length2 = strB.length();
        int i = length2 - 5;
        char cCharAt2 = strB.charAt(i);
        if (cCharAt2 == '-' || cCharAt2 == '+') {
            StringBuilder sb = new StringBuilder();
            sb.append(strB.substring(0, i));
            sb.append(TimeZones.GMT_ID);
            int i2 = length2 - 2;
            sb.append(strB.substring(i, i2));
            sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
            sb.append(strB.substring(i2));
            return sb.toString();
        }
        int length3 = strB.length() - 3;
        char cCharAt3 = strB.charAt(length3);
        if (cCharAt3 != '-' && cCharAt3 != '+') {
            return strB + x(strB);
        }
        return strB.substring(0, length3) + TimeZones.GMT_ID + strB.substring(length3) + ":00";
    }

    public boolean D() {
        int i = 0;
        while (true) {
            byte[] bArr = this.b;
            if (i == bArr.length) {
                return false;
            }
            if (bArr[i] == 46 && i == 14) {
                return true;
            }
            i++;
        }
    }

    public boolean E() {
        return G(10) && G(11);
    }

    public boolean F() {
        return G(12) && G(13);
    }

    public final boolean G(int i) {
        byte b;
        byte[] bArr = this.b;
        return bArr.length > i && (b = bArr[i]) >= 48 && b <= 57;
    }

    public final String H(String str) {
        String str2;
        StringBuilder sb;
        char cCharAt;
        String strSubstring = str.substring(14);
        int i = 1;
        while (i < strSubstring.length() && '0' <= (cCharAt = strSubstring.charAt(i)) && cCharAt <= '9') {
            i++;
        }
        int i2 = i - 1;
        if (i2 > 3) {
            str2 = strSubstring.substring(0, 4) + strSubstring.substring(i);
            sb = new StringBuilder();
        } else if (i2 == 1) {
            str2 = strSubstring.substring(0, i) + "00" + strSubstring.substring(i);
            sb = new StringBuilder();
        } else {
            if (i2 != 2) {
                return str;
            }
            str2 = strSubstring.substring(0, i) + "0" + strSubstring.substring(i);
            sb = new StringBuilder();
        }
        sb.append(str.substring(0, 14));
        sb.append(str2);
        return sb.toString();
    }

    @Override
    public int hashCode() {
        return ci.v(this.b);
    }

    @Override
    public boolean m(p1 p1Var) {
        if (p1Var instanceof c1) {
            return ci.b(this.b, ((c1) p1Var).b);
        }
        return false;
    }

    @Override
    public void n(o1 o1Var, boolean z) {
        o1Var.o(z, 24, this.b);
    }

    @Override
    public final boolean o() {
        return false;
    }

    @Override
    public int q(boolean z) {
        return o1.g(z, this.b.length);
    }

    @Override
    public p1 u() {
        return new rp1(this.b);
    }

    public final SimpleDateFormat w() {
        SimpleDateFormat simpleDateFormat;
        if (D()) {
            simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss.SSSz");
        } else if (F()) {
            simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssz");
        } else {
            simpleDateFormat = E() ? new SimpleDateFormat("yyyyMMddHHmmz") : new SimpleDateFormat("yyyyMMddHHz");
        }
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        return simpleDateFormat;
    }

    public final String x(String str) {
        String str2;
        TimeZone timeZone = TimeZone.getDefault();
        int rawOffset = timeZone.getRawOffset();
        if (rawOffset < 0) {
            rawOffset = -rawOffset;
            str2 = "-";
        } else {
            str2 = Marker.ANY_NON_NULL_MARKER;
        }
        int i = rawOffset / 3600000;
        int i2 = (rawOffset - (3600000 * i)) / ComConstants.defScheduleTime;
        try {
            if (timeZone.useDaylightTime()) {
                if (D()) {
                    str = H(str);
                }
                if (timeZone.inDaylightTime(w().parse(str + TimeZones.GMT_ID + str2 + y(i) + StringUtils.PROCESS_POSTFIX_DELIMITER + y(i2)))) {
                    i += str2.equals(Marker.ANY_NON_NULL_MARKER) ? 1 : -1;
                }
            }
        } catch (ParseException unused) {
        }
        return TimeZones.GMT_ID + str2 + y(i) + StringUtils.PROCESS_POSTFIX_DELIMITER + y(i2);
    }

    public final String y(int i) {
        if (i >= 10) {
            return Integer.toString(i);
        }
        return "0" + i;
    }

    public c1(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("GeneralizedTime string too short");
        }
        this.b = bArr;
        if (!G(0) || !G(1) || !G(2) || !G(3)) {
            throw new IllegalArgumentException("illegal characters in GeneralizedTime string");
        }
    }
}
