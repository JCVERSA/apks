package org.mozilla.javascript;

import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import okhttp3.internal.http2.Http2Connection;

final class NativeDate extends IdScriptableObject {
    static final boolean $assertionsDisabled = false;
    public static final Object b = "Date";
    public static final TimeZone c;
    public static final double d;
    public static final DateFormat e;
    public static final DateFormat f;
    public static final DateFormat g;
    public static final DateFormat h;
    private static final long serialVersionUID = -8307438915861678966L;
    private double date;

    static {
        TimeZone timeZone = TimeZone.getDefault();
        c = timeZone;
        d = timeZone.getRawOffset();
        e = new SimpleDateFormat("zzz");
        f = new SimpleDateFormat("MMMM d, yyyy h:mm:ss a z");
        g = new SimpleDateFormat("MMMM d, yyyy");
        h = new SimpleDateFormat("h:mm:ss a z");
    }

    private NativeDate() {
    }

    public static double A(double d2) {
        double d3 = d2 % 8.64E7d;
        return d3 < 0.0d ? d3 + 8.64E7d : d3;
    }

    public static int B(double d2) {
        double dC = (c(d2) + 4.0d) % 7.0d;
        if (dC < 0.0d) {
            dC += 7.0d;
        }
        return (int) dC;
    }

    public static int C(double d2) {
        if (Double.isInfinite(d2) || Double.isNaN(d2)) {
            return 0;
        }
        double dFloor = Math.floor(d2 / 3.1556952E10d) + 1970.0d;
        double dZ = z(dFloor);
        if (dZ > d2) {
            dFloor -= 1.0d;
        } else if (dZ + (n(dFloor) * 8.64E7d) <= d2) {
            dFloor += 1.0d;
        }
        return (int) dFloor;
    }

    public static void D(StringBuilder sb, int i, int i2) {
        int i3;
        if (i < 0) {
            Kit.codeBug();
        }
        int i4 = i2 - 1;
        if (i >= 10) {
            i3 = Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
            if (i < 1000000000) {
                i3 = 1;
                while (true) {
                    int i5 = i3 * 10;
                    if (i < i5) {
                        break;
                    }
                    i4--;
                    i3 = i5;
                }
            } else {
                i4 = i2 - 10;
            }
        } else {
            i3 = 1;
        }
        while (i4 > 0) {
            sb.append('0');
            i4--;
        }
        while (i3 != 1) {
            sb.append((char) ((i / i3) + 48));
            i %= i3;
            i3 /= 10;
        }
        sb.append((char) (i + 48));
    }

    public static void E(StringBuilder sb, int i) {
        int i2 = i * 3;
        for (int i3 = 0; i3 != 3; i3++) {
            sb.append("JanFebMarAprMayJunJulAugSepOctNovDec".charAt(i2 + i3));
        }
    }

    public static void F(StringBuilder sb, int i) {
        int i2 = i * 3;
        for (int i3 = 0; i3 != 3; i3++) {
            sb.append("SunMonTueWedThuFriSat".charAt(i2 + i3));
        }
    }

    public static String G(double d2, int i) {
        StringBuilder sb = new StringBuilder(60);
        double dR = r(d2);
        if (i != 3) {
            F(sb, B(dR));
            sb.append(' ');
            E(sb, w(dR));
            sb.append(' ');
            D(sb, b(dR), 2);
            sb.append(' ');
            int iC = C(dR);
            if (iC < 0) {
                sb.append('-');
                iC = -iC;
            }
            D(sb, iC, 4);
            if (i != 4) {
                sb.append(' ');
            }
        }
        if (i != 4) {
            D(sb, p(dR), 2);
            sb.append(':');
            D(sb, v(dR), 2);
            sb.append(':');
            D(sb, x(dR), 2);
            int iFloor = (int) Math.floor((d + l(d2)) / 60000.0d);
            int i2 = ((iFloor / 60) * 100) + (iFloor % 60);
            if (i2 > 0) {
                sb.append(" GMT+");
            } else {
                sb.append(" GMT-");
                i2 = -i2;
            }
            D(sb, i2, 4);
            if (d2 < 0.0d) {
                d2 = s(t(o(C(dR)), w(d2), b(d2)), A(d2));
            }
            sb.append(" (");
            Date date = new Date((long) d2);
            DateFormat dateFormat = e;
            synchronized (dateFormat) {
                sb.append(dateFormat.format(date));
            }
            sb.append(')');
        }
        return sb.toString();
    }

    public static double H(Object[] objArr) {
        double[] dArr = new double[7];
        for (int i = 0; i < 7; i++) {
            if (i < objArr.length) {
                double number = ScriptRuntime.toNumber(objArr[i]);
                if (Double.isNaN(number) || Double.isInfinite(number)) {
                    return Double.NaN;
                }
                dArr[i] = ScriptRuntime.toInteger(objArr[i]);
            } else if (i == 2) {
                dArr[i] = 1.0d;
            } else {
                dArr[i] = 0.0d;
            }
        }
        double d2 = dArr[0];
        if (d2 >= 0.0d && d2 <= 99.0d) {
            dArr[0] = d2 + 1900.0d;
        }
        return I(dArr[0], dArr[1], dArr[2], dArr[3], dArr[4], dArr[5], dArr[6]);
    }

    public static double I(double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        return s(t(d2, d3, d4), u(d5, d6, d7, d8));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:102:0x0106  */
    /* JADX WARN: Code duplicated, block: B:105:0x010b  */
    /* JADX WARN: Code duplicated, block: B:132:0x014a  */
    /* JADX WARN: Code duplicated, block: B:136:0x0157  */
    /* JADX WARN: Code duplicated, block: B:140:0x0172  */
    /* JADX WARN: Code duplicated, block: B:149:0x0183  */
    /* JADX WARN: Code duplicated, block: B:152:0x0189  */
    /* JADX WARN: Code duplicated, block: B:154:0x018d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:155:0x018f  */
    /* JADX WARN: Code duplicated, block: B:156:0x0190 A[PHI: r12 r16
      0x0190: PHI (r12v4 int) = (r12v1 int), (r12v1 int), (r12v1 int), (r12v1 int), (r12v1 int), (r12v3 int), (r12v1 int), (r12v1 int) binds: [B:150:0x0186, B:165:0x01b7, B:164:0x01b4, B:163:0x01b1, B:160:0x01a7, B:155:0x018f, B:146:0x017d, B:144:0x0179] A[DONT_GENERATE, DONT_INLINE]
      0x0190: PHI (r16v9 double) = 
      (r16v1 double)
      (r16v5 double)
      (r16v6 double)
      (r16v7 double)
      (r16v1 double)
      (r16v1 double)
      (r16v1 double)
      (r16v1 double)
     binds: [B:150:0x0186, B:165:0x01b7, B:164:0x01b4, B:163:0x01b1, B:160:0x01a7, B:155:0x018f, B:146:0x017d, B:144:0x0179] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:158:0x0193  */
    /* JADX WARN: Code duplicated, block: B:160:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:161:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:162:0x01af  */
    /* JADX WARN: Code duplicated, block: B:164:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:165:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:166:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:167:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:169:0x01c6 A[LOOP:2: B:133:0x014c->B:169:0x01c6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:211:0x0149 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:212:0x0156 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:215:0x0192 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:240:0x016d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:99:0x00fb  */
    public static double J(String str) {
        int i;
        int i2;
        int i3;
        int i4;
        int iIndexOf;
        int i5;
        char c2;
        int i6;
        int i7;
        int i8;
        int i9;
        double d2;
        int i10;
        double dT = T(str);
        if (!Double.isNaN(dT)) {
            return dT;
        }
        int length = str.length();
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        int i15 = -1;
        int i16 = -1;
        char c3 = 0;
        int i17 = 0;
        double d3 = -1.0d;
        boolean z = false;
        while (i17 < length) {
            char cCharAt = str.charAt(i17);
            int i18 = i17 + 1;
            if (cCharAt <= ' ' || cCharAt == ',' || cCharAt == '-') {
                char c4 = c3;
                i = i11;
                if (i18 < length) {
                    char cCharAt2 = str.charAt(i18);
                    if (cCharAt == '-' && '0' <= cCharAt2 && cCharAt2 <= '9') {
                        c3 = cCharAt;
                        i17 = i18;
                        i11 = i;
                    }
                }
                i17 = i18;
                i11 = i;
                c3 = c4;
            } else {
                int i19 = 1;
                if (cCharAt == '(') {
                    i17 = i18;
                    while (i17 < length) {
                        char cCharAt3 = str.charAt(i17);
                        i17++;
                        if (cCharAt3 != '(') {
                            if (cCharAt3 == ')' && (i19 = i19 - 1) <= 0) {
                                break;
                            }
                        } else {
                            i19++;
                        }
                    }
                } else if ('0' <= cCharAt && cCharAt <= '9') {
                    i17 = i18;
                    int i20 = cCharAt - '0';
                    while (i17 < length) {
                        cCharAt = str.charAt(i17);
                        if ('0' > cCharAt || cCharAt > '9') {
                            if (c3 != '+' || c3 == '-') {
                                if (i20 < 24) {
                                    i10 = i20 * 60;
                                } else {
                                    i10 = ((i20 / 100) * 60) + (i20 % 100);
                                }
                                if (c3 == '+') {
                                    i10 = -i10;
                                }
                                if (d3 == 0.0d && d3 != -1.0d) {
                                    return Double.NaN;
                                }
                                d3 = i10;
                                z = true;
                            } else if (i20 >= 70 || (c3 == '/' && i13 >= 0 && i14 >= 0 && i12 < 0)) {
                                if (i12 >= 0) {
                                    return Double.NaN;
                                }
                                if (cCharAt > ' ' && cCharAt != ',' && cCharAt != '/' && i17 < length) {
                                    return Double.NaN;
                                }
                                if (i20 < 100) {
                                    i20 += OSDateTimePicker.START_YEAR;
                                }
                                i12 = i20;
                            } else if (cCharAt == ':') {
                                if (i11 < 0) {
                                    i11 = i20;
                                } else {
                                    if (i16 >= 0) {
                                        return Double.NaN;
                                    }
                                    i16 = i20;
                                }
                            } else if (cCharAt == '/') {
                                if (i13 < 0) {
                                    i13 = i20 - 1;
                                } else {
                                    if (i14 >= 0) {
                                        return Double.NaN;
                                    }
                                    i14 = i20;
                                }
                            } else {
                                if (i17 < length && cCharAt != ',' && cCharAt > ' ' && cCharAt != '-') {
                                    return Double.NaN;
                                }
                                if (z && i20 < 60) {
                                    d3 = d3 < 0.0d ? d3 - ((double) i20) : d3 + ((double) i20);
                                } else if (i11 >= 0 && i16 < 0) {
                                    i16 = i20;
                                } else if (i16 < 0 || i15 >= 0) {
                                    if (i14 >= 0) {
                                        return Double.NaN;
                                    }
                                    i14 = i20;
                                } else {
                                    i15 = i20;
                                }
                            }
                            c3 = 0;
                        } else {
                            i20 = ((i20 * 10) + cCharAt) - 48;
                            i17++;
                        }
                    }
                    if (c3 != '+') {
                        if (i20 < 24) {
                            i10 = i20 * 60;
                        } else {
                            i10 = ((i20 / 100) * 60) + (i20 % 100);
                        }
                        if (c3 == '+') {
                            i10 = -i10;
                        }
                        if (d3 == 0.0d) {
                        }
                        d3 = i10;
                        z = true;
                    } else {
                        if (i20 < 24) {
                            i10 = i20 * 60;
                        } else {
                            i10 = ((i20 / 100) * 60) + (i20 % 100);
                        }
                        if (c3 == '+') {
                            i10 = -i10;
                        }
                        if (d3 == 0.0d) {
                        }
                        d3 = i10;
                        z = true;
                    }
                    c3 = 0;
                } else if (cCharAt == '/' || cCharAt == ':' || cCharAt == '+' || cCharAt == '-') {
                    i = i11;
                    c3 = cCharAt;
                    i17 = i18;
                    i11 = i;
                } else {
                    int i21 = i18;
                    while (i21 < length) {
                        char cCharAt4 = str.charAt(i21);
                        if (('A' > cCharAt4 || cCharAt4 > 'Z') && ('a' > cCharAt4 || cCharAt4 > 'z')) {
                            i2 = i21 - i17;
                            if (i2 < 2) {
                                return Double.NaN;
                            }
                            i3 = 0;
                            i4 = 0;
                            while (true) {
                                iIndexOf = "am;pm;monday;tuesday;wednesday;thursday;friday;saturday;sunday;january;february;march;april;may;june;july;august;september;october;november;december;gmt;ut;utc;est;edt;cst;cdt;mst;mdt;pst;pdt;".indexOf(59, i4);
                                if (iIndexOf < 0) {
                                    return Double.NaN;
                                }
                                i5 = i3;
                                c2 = c3;
                                i6 = i17;
                                i7 = i21;
                                i8 = i11;
                                if ("am;pm;monday;tuesday;wednesday;thursday;friday;saturday;sunday;january;february;march;april;may;june;july;august;september;october;november;december;gmt;ut;utc;est;edt;cst;cdt;mst;mdt;pst;pdt;".regionMatches(true, i4, str, i17, i2)) {
                                    if (i5 < 2) {
                                        if (i8 <= 12 || i8 < 0) {
                                            return Double.NaN;
                                        }
                                        if (i5 == 0) {
                                            if (i8 == 12) {
                                                i11 = 0;
                                            } else {
                                                i11 = i8;
                                            }
                                        } else if (i8 != 12) {
                                            i11 = i8 + 12;
                                        } else {
                                            i11 = i8;
                                        }
                                    } else if (i5 - 2 >= 7) {
                                        i9 = i5 - 9;
                                        if (i9 < 12) {
                                            switch (i5 - 21) {
                                                case 0:
                                                case 1:
                                                case 2:
                                                    i11 = i8;
                                                    d3 = 0.0d;
                                                    break;
                                                case 3:
                                                case 6:
                                                    d3 = 300.0d;
                                                    break;
                                                case 4:
                                                    d2 = 240.0d;
                                                    d3 = d2;
                                                    break;
                                                case 5:
                                                case 8:
                                                    d3 = 360.0d;
                                                    break;
                                                case 7:
                                                case 10:
                                                    i11 = i8;
                                                    d3 = 420.0d;
                                                    break;
                                                case 9:
                                                    d2 = 480.0d;
                                                    d3 = d2;
                                                    break;
                                                default:
                                                    Kit.codeBug();
                                                    break;
                                            }
                                        } else {
                                            if (i13 < 0) {
                                                return Double.NaN;
                                            }
                                            i13 = i9;
                                        }
                                        i11 = i8;
                                    } else {
                                        i11 = i8;
                                    }
                                    c3 = c2;
                                    i17 = i7;
                                    break;
                                }
                                i3 = i5 + 1;
                                i11 = i8;
                                c3 = c2;
                                i17 = i6;
                                i21 = i7;
                                i4 = iIndexOf + 1;
                            }
                        } else {
                            i21++;
                        }
                    }
                    i2 = i21 - i17;
                    if (i2 < 2) {
                        return Double.NaN;
                    }
                    i3 = 0;
                    i4 = 0;
                    while (true) {
                        iIndexOf = "am;pm;monday;tuesday;wednesday;thursday;friday;saturday;sunday;january;february;march;april;may;june;july;august;september;october;november;december;gmt;ut;utc;est;edt;cst;cdt;mst;mdt;pst;pdt;".indexOf(59, i4);
                        if (iIndexOf < 0) {
                            return Double.NaN;
                        }
                        i5 = i3;
                        c2 = c3;
                        i6 = i17;
                        i7 = i21;
                        i8 = i11;
                        if ("am;pm;monday;tuesday;wednesday;thursday;friday;saturday;sunday;january;february;march;april;may;june;july;august;september;october;november;december;gmt;ut;utc;est;edt;cst;cdt;mst;mdt;pst;pdt;".regionMatches(true, i4, str, i17, i2)) {
                            if (i5 < 2) {
                                if (i8 <= 12) {
                                }
                                return Double.NaN;
                            }
                            if (i5 - 2 >= 7) {
                                i9 = i5 - 9;
                                if (i9 < 12) {
                                    switch (i5 - 21) {
                                        case 0:
                                        case 1:
                                        case 2:
                                            i11 = i8;
                                            d3 = 0.0d;
                                            break;
                                        case 3:
                                        case 6:
                                            d3 = 300.0d;
                                            break;
                                        case 4:
                                            d2 = 240.0d;
                                            d3 = d2;
                                            break;
                                        case 5:
                                        case 8:
                                            d3 = 360.0d;
                                            break;
                                        case 7:
                                        case 10:
                                            i11 = i8;
                                            d3 = 420.0d;
                                            break;
                                        case 9:
                                            d2 = 480.0d;
                                            d3 = d2;
                                            break;
                                        default:
                                            Kit.codeBug();
                                            break;
                                    }
                                } else {
                                    if (i13 < 0) {
                                        return Double.NaN;
                                    }
                                    i13 = i9;
                                }
                                i11 = i8;
                            } else {
                                i11 = i8;
                            }
                            c3 = c2;
                            i17 = i7;
                            break;
                            break;
                        }
                        i3 = i5 + 1;
                        i11 = i8;
                        c3 = c2;
                        i17 = i6;
                        i21 = i7;
                        i4 = iIndexOf + 1;
                    }
                }
            }
        }
        int i22 = i11;
        if (i12 < 0 || i13 < 0 || i14 < 0) {
            return Double.NaN;
        }
        if (i15 < 0) {
            i15 = 0;
        }
        if (i16 < 0) {
            i16 = 0;
        }
        double dI = I(i12, i13, i14, i22 < 0 ? 0 : i22, i16, i15, 0.0d);
        return d3 == -1.0d ? K(dI) : dI + (d3 * 60000.0d);
    }

    public static double K(double d2) {
        double d3 = d;
        return (d2 - d3) - l(d2 - d3);
    }

    public static Object L(Object[] objArr) {
        NativeDate nativeDate = new NativeDate();
        if (objArr.length == 0) {
            nativeDate.date = S();
            return nativeDate;
        }
        if (objArr.length != 1) {
            double dH = H(objArr);
            if (!Double.isNaN(dH) && !Double.isInfinite(dH)) {
                dH = y(K(dH));
            }
            nativeDate.date = dH;
            return nativeDate;
        }
        Object defaultValue = objArr[0];
        if (defaultValue instanceof NativeDate) {
            nativeDate.date = ((NativeDate) defaultValue).date;
            return nativeDate;
        }
        if (defaultValue instanceof Scriptable) {
            defaultValue = ((Scriptable) defaultValue).getDefaultValue(null);
        }
        nativeDate.date = y(defaultValue instanceof CharSequence ? J(defaultValue.toString()) : ScriptRuntime.toNumber(defaultValue));
        return nativeDate;
    }

    public static double M(Object[] objArr) {
        if (objArr.length == 0) {
            return Double.NaN;
        }
        return y(H(objArr));
    }

    public static String N(double d2) {
        StringBuilder sb = new StringBuilder(27);
        int iC = C(d2);
        if (iC < 0) {
            sb.append('-');
            D(sb, -iC, 6);
        } else if (iC > 9999) {
            D(sb, iC, 6);
        } else {
            D(sb, iC, 4);
        }
        sb.append('-');
        D(sb, w(d2) + 1, 2);
        sb.append('-');
        D(sb, b(d2), 2);
        sb.append('T');
        D(sb, p(d2), 2);
        sb.append(':');
        D(sb, v(d2), 2);
        sb.append(':');
        D(sb, x(d2), 2);
        sb.append('.');
        D(sb, R(d2), 3);
        sb.append('Z');
        return sb.toString();
    }

    public static String O(double d2) {
        StringBuilder sb = new StringBuilder(60);
        F(sb, B(d2));
        sb.append(", ");
        D(sb, b(d2), 2);
        sb.append(' ');
        E(sb, w(d2));
        sb.append(' ');
        int iC = C(d2);
        if (iC < 0) {
            sb.append('-');
            iC = -iC;
        }
        D(sb, iC, 4);
        sb.append(' ');
        D(sb, p(d2), 2);
        sb.append(':');
        D(sb, v(d2), 2);
        sb.append(':');
        D(sb, x(d2), 2);
        sb.append(" GMT");
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0025  */
    /* JADX WARN: Code duplicated, block: B:21:0x0027  */
    /* JADX WARN: Code duplicated, block: B:24:0x002e  */
    /* JADX WARN: Code duplicated, block: B:26:0x003a  */
    /* JADX WARN: Code duplicated, block: B:30:0x0048  */
    /* JADX WARN: Code duplicated, block: B:33:0x004e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x004f  */
    /* JADX WARN: Code duplicated, block: B:36:0x0055 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x0057 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x0058  */
    /* JADX WARN: Code duplicated, block: B:39:0x005b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x005d  */
    /* JADX WARN: Code duplicated, block: B:41:0x0062  */
    /* JADX WARN: Code duplicated, block: B:43:0x0066 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:45:0x006d  */
    /* JADX WARN: Code duplicated, block: B:47:0x0075 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:49:0x007e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0086 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:54:0x008d  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a1  */
    public static double P(double d2, Object[] objArr, int i) {
        boolean z;
        int i2;
        int length;
        int i3;
        boolean z2;
        double dR;
        double dC;
        double dW;
        double dB;
        double dS;
        double number;
        if (objArr.length == 0) {
            return Double.NaN;
        }
        int i4 = 0;
        switch (i) {
            case 39:
                z = true;
                i2 = 1;
                if (objArr.length < i2) {
                    length = objArr.length;
                } else {
                    length = i2;
                }
                double[] dArr = new double[3];
                z2 = false;
                for (i3 = 0; i3 < length; i3++) {
                    number = ScriptRuntime.toNumber(objArr[i3]);
                    if (!Double.isNaN(number) || Double.isInfinite(number)) {
                        z2 = true;
                    } else {
                        dArr[i3] = ScriptRuntime.toInteger(number);
                    }
                }
                if (z2) {
                    return Double.NaN;
                }
                if (Double.isNaN(d2)) {
                    if (i2 < 3) {
                        return Double.NaN;
                    }
                    dR = 0.0d;
                } else if (z) {
                    dR = r(d2);
                } else {
                    dR = d2;
                }
                if (i2 >= 3 || length <= 0) {
                    dC = C(dR);
                } else {
                    dC = dArr[0];
                    i4 = 1;
                }
                if (i2 >= 2 || i4 >= length) {
                    dW = w(dR);
                } else {
                    dW = dArr[i4];
                    i4++;
                }
                if (i2 >= 1 || i4 >= length) {
                    dB = b(dR);
                } else {
                    dB = dArr[i4];
                }
                dS = s(t(dC, dW, dB), A(dR));
                if (z) {
                    dS = K(dS);
                }
                return y(dS);
            case 40:
                z = false;
                i2 = 1;
                if (objArr.length < i2) {
                    length = objArr.length;
                } else {
                    length = i2;
                }
                double[] dArr2 = new double[3];
                z2 = false;
                while (i3 < length) {
                    number = ScriptRuntime.toNumber(objArr[i3]);
                    if (Double.isNaN(number)) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                }
                if (z2) {
                    return Double.NaN;
                }
                if (Double.isNaN(d2)) {
                    if (i2 < 3) {
                        return Double.NaN;
                    }
                    dR = 0.0d;
                } else if (z) {
                    dR = r(d2);
                } else {
                    dR = d2;
                }
                if (i2 >= 3) {
                    dC = C(dR);
                } else {
                    dC = C(dR);
                }
                if (i2 >= 2) {
                    dW = w(dR);
                } else {
                    dW = w(dR);
                }
                if (i2 >= 1) {
                    dB = b(dR);
                } else {
                    dB = b(dR);
                }
                dS = s(t(dC, dW, dB), A(dR));
                if (z) {
                    dS = K(dS);
                }
                return y(dS);
            case 41:
                z = true;
                i2 = 2;
                if (objArr.length < i2) {
                    length = objArr.length;
                } else {
                    length = i2;
                }
                double[] dArr3 = new double[3];
                z2 = false;
                while (i3 < length) {
                    number = ScriptRuntime.toNumber(objArr[i3]);
                    if (Double.isNaN(number)) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                }
                if (z2) {
                    return Double.NaN;
                }
                if (Double.isNaN(d2)) {
                    if (i2 < 3) {
                        return Double.NaN;
                    }
                    dR = 0.0d;
                } else if (z) {
                    dR = r(d2);
                } else {
                    dR = d2;
                }
                if (i2 >= 3) {
                    dC = C(dR);
                } else {
                    dC = C(dR);
                }
                if (i2 >= 2) {
                    dW = w(dR);
                } else {
                    dW = w(dR);
                }
                if (i2 >= 1) {
                    dB = b(dR);
                } else {
                    dB = b(dR);
                }
                dS = s(t(dC, dW, dB), A(dR));
                if (z) {
                    dS = K(dS);
                }
                return y(dS);
            case 42:
                z = false;
                i2 = 2;
                if (objArr.length < i2) {
                    length = objArr.length;
                } else {
                    length = i2;
                }
                double[] dArr4 = new double[3];
                z2 = false;
                while (i3 < length) {
                    number = ScriptRuntime.toNumber(objArr[i3]);
                    if (Double.isNaN(number)) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                }
                if (z2) {
                    return Double.NaN;
                }
                if (Double.isNaN(d2)) {
                    if (i2 < 3) {
                        return Double.NaN;
                    }
                    dR = 0.0d;
                } else if (z) {
                    dR = r(d2);
                } else {
                    dR = d2;
                }
                if (i2 >= 3) {
                    dC = C(dR);
                } else {
                    dC = C(dR);
                }
                if (i2 >= 2) {
                    dW = w(dR);
                } else {
                    dW = w(dR);
                }
                if (i2 >= 1) {
                    dB = b(dR);
                } else {
                    dB = b(dR);
                }
                dS = s(t(dC, dW, dB), A(dR));
                if (z) {
                    dS = K(dS);
                }
                return y(dS);
            case 43:
                z = true;
                i2 = 3;
                if (objArr.length < i2) {
                    length = objArr.length;
                } else {
                    length = i2;
                }
                double[] dArr5 = new double[3];
                z2 = false;
                while (i3 < length) {
                    number = ScriptRuntime.toNumber(objArr[i3]);
                    if (Double.isNaN(number)) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                }
                if (z2) {
                    return Double.NaN;
                }
                if (Double.isNaN(d2)) {
                    if (i2 < 3) {
                        return Double.NaN;
                    }
                    dR = 0.0d;
                } else if (z) {
                    dR = r(d2);
                } else {
                    dR = d2;
                }
                if (i2 >= 3) {
                    dC = C(dR);
                } else {
                    dC = C(dR);
                }
                if (i2 >= 2) {
                    dW = w(dR);
                } else {
                    dW = w(dR);
                }
                if (i2 >= 1) {
                    dB = b(dR);
                } else {
                    dB = b(dR);
                }
                dS = s(t(dC, dW, dB), A(dR));
                if (z) {
                    dS = K(dS);
                }
                return y(dS);
            case 44:
                z = false;
                i2 = 3;
                if (objArr.length < i2) {
                    length = objArr.length;
                } else {
                    length = i2;
                }
                double[] dArr6 = new double[3];
                z2 = false;
                while (i3 < length) {
                    number = ScriptRuntime.toNumber(objArr[i3]);
                    if (Double.isNaN(number)) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                }
                if (z2) {
                    return Double.NaN;
                }
                if (Double.isNaN(d2)) {
                    if (i2 < 3) {
                        return Double.NaN;
                    }
                    dR = 0.0d;
                } else if (z) {
                    dR = r(d2);
                } else {
                    dR = d2;
                }
                if (i2 >= 3) {
                    dC = C(dR);
                } else {
                    dC = C(dR);
                }
                if (i2 >= 2) {
                    dW = w(dR);
                } else {
                    dW = w(dR);
                }
                if (i2 >= 1) {
                    dB = b(dR);
                } else {
                    dB = b(dR);
                }
                dS = s(t(dC, dW, dB), A(dR));
                if (z) {
                    dS = K(dS);
                }
                return y(dS);
            default:
                throw Kit.codeBug();
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x002b  */
    /* JADX WARN: Code duplicated, block: B:24:0x002d  */
    /* JADX WARN: Code duplicated, block: B:27:0x0034  */
    /* JADX WARN: Code duplicated, block: B:29:0x0040  */
    /* JADX WARN: Code duplicated, block: B:33:0x004e  */
    /* JADX WARN: Code duplicated, block: B:36:0x0054  */
    public static double Q(double d2, Object[] objArr, int i) {
        boolean z;
        int i2;
        int length;
        int i3;
        boolean z2;
        double dP;
        double dV;
        double dX;
        double number;
        if (objArr.length == 0) {
            return Double.NaN;
        }
        int i4 = 0;
        switch (i) {
            case 31:
                z = true;
                i2 = 1;
                if (objArr.length < i2) {
                    length = objArr.length;
                } else {
                    length = i2;
                }
                double[] dArr = new double[4];
                z2 = false;
                for (i3 = 0; i3 < length; i3++) {
                    number = ScriptRuntime.toNumber(objArr[i3]);
                    if (!Double.isNaN(number) || Double.isInfinite(number)) {
                        z2 = true;
                    } else {
                        dArr[i3] = ScriptRuntime.toInteger(number);
                    }
                }
                if (!z2 || Double.isNaN(d2)) {
                    return Double.NaN;
                }
                double dR = z ? r(d2) : d2;
                if (i2 < 4 || length <= 0) {
                    dP = p(dR);
                } else {
                    dP = dArr[0];
                    i4 = 1;
                }
                if (i2 < 3 || i4 >= length) {
                    dV = v(dR);
                } else {
                    dV = dArr[i4];
                    i4++;
                }
                double d3 = dV;
                if (i2 < 2 || i4 >= length) {
                    dX = x(dR);
                } else {
                    double d4 = dArr[i4];
                    i4++;
                    dX = d4;
                }
                double dS = s(c(dR), u(dP, d3, dX, (i2 < 1 || i4 >= length) ? R(dR) : dArr[i4]));
                if (z) {
                    dS = K(dS);
                }
                return y(dS);
            case 32:
                z = false;
                i2 = 1;
                if (objArr.length < i2) {
                    length = objArr.length;
                } else {
                    length = i2;
                }
                double[] dArr2 = new double[4];
                z2 = false;
                while (i3 < length) {
                    number = ScriptRuntime.toNumber(objArr[i3]);
                    if (Double.isNaN(number)) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                }
                if (z2) {
                    break;
                }
                return Double.NaN;
            case 33:
                z = true;
                i2 = 2;
                if (objArr.length < i2) {
                    length = objArr.length;
                } else {
                    length = i2;
                }
                double[] dArr3 = new double[4];
                z2 = false;
                while (i3 < length) {
                    number = ScriptRuntime.toNumber(objArr[i3]);
                    if (Double.isNaN(number)) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                }
                if (z2) {
                    break;
                }
                return Double.NaN;
            case 34:
                z = false;
                i2 = 2;
                if (objArr.length < i2) {
                    length = objArr.length;
                } else {
                    length = i2;
                }
                double[] dArr4 = new double[4];
                z2 = false;
                while (i3 < length) {
                    number = ScriptRuntime.toNumber(objArr[i3]);
                    if (Double.isNaN(number)) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                }
                if (z2) {
                    break;
                }
                return Double.NaN;
            case 35:
                z = true;
                i2 = 3;
                if (objArr.length < i2) {
                    length = objArr.length;
                } else {
                    length = i2;
                }
                double[] dArr5 = new double[4];
                z2 = false;
                while (i3 < length) {
                    number = ScriptRuntime.toNumber(objArr[i3]);
                    if (Double.isNaN(number)) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                }
                if (z2) {
                    break;
                }
                return Double.NaN;
            case 36:
                z = false;
                i2 = 3;
                if (objArr.length < i2) {
                    length = objArr.length;
                } else {
                    length = i2;
                }
                double[] dArr6 = new double[4];
                z2 = false;
                while (i3 < length) {
                    number = ScriptRuntime.toNumber(objArr[i3]);
                    if (Double.isNaN(number)) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                }
                if (z2) {
                    break;
                }
                return Double.NaN;
            case 37:
                z = true;
                i2 = 4;
                if (objArr.length < i2) {
                    length = objArr.length;
                } else {
                    length = i2;
                }
                double[] dArr7 = new double[4];
                z2 = false;
                while (i3 < length) {
                    number = ScriptRuntime.toNumber(objArr[i3]);
                    if (Double.isNaN(number)) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                }
                if (z2) {
                    break;
                }
                return Double.NaN;
            case 38:
                z = false;
                i2 = 4;
                if (objArr.length < i2) {
                    length = objArr.length;
                } else {
                    length = i2;
                }
                double[] dArr8 = new double[4];
                z2 = false;
                while (i3 < length) {
                    number = ScriptRuntime.toNumber(objArr[i3]);
                    if (Double.isNaN(number)) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                }
                if (z2) {
                    break;
                }
                return Double.NaN;
            default:
                throw Kit.codeBug();
        }
    }

    public static int R(double d2) {
        double d3 = d2 % 1000.0d;
        if (d3 < 0.0d) {
            d3 += 1000.0d;
        }
        return (int) d3;
    }

    public static double S() {
        return System.currentTimeMillis();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:15:0x0052  */
    /* JADX WARN: Code duplicated, block: B:63:0x00d7 A[PHI: r2 r13
      0x00d7: PHI (r2v36 char) = (r2v32 char), (r2v37 char) binds: [B:70:0x00eb, B:61:0x00d4] A[DONT_GENERATE, DONT_INLINE]
      0x00d7: PHI (r13v18 char) = (r13v15 char), (r13v19 char) binds: [B:70:0x00eb, B:61:0x00d4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:64:0x00d9 A[PHI: r2 r13
      0x00d9: PHI (r2v33 char) = (r2v32 char), (r2v32 char), (r2v37 char), (r2v37 char) binds: [B:69:0x00e9, B:70:0x00eb, B:60:0x00d2, B:61:0x00d4] A[DONT_GENERATE, DONT_INLINE]
      0x00d9: PHI (r13v16 char) = (r13v15 char), (r13v15 char), (r13v19 char), (r13v19 char) binds: [B:69:0x00e9, B:70:0x00eb, B:60:0x00d2, B:61:0x00d4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:78:0x00fb A[PHI: r13
      0x00fb: PHI (r13v13 char) = (r13v12 char), (r13v14 char) binds: [B:81:0x0101, B:76:0x00f8] A[DONT_GENERATE, DONT_INLINE]] */
    public static double T(String str) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        char c2;
        char c3;
        char c4;
        char c5;
        int i8;
        int[] iArr = new int[9];
        iArr[0] = 1970;
        iArr[1] = 1;
        iArr[2] = 1;
        iArr[3] = 0;
        iArr[4] = 0;
        iArr[5] = 0;
        iArr[6] = 0;
        int i9 = -1;
        iArr[7] = -1;
        iArr[8] = -1;
        int length = str.length();
        if (length == 0) {
            i = 1;
            i2 = 1;
            i3 = 0;
            i4 = 0;
            i5 = 4;
        } else {
            char cCharAt = str.charAt(0);
            if (cCharAt == '+' || cCharAt == '-') {
                i = cCharAt == '-' ? -1 : 1;
                i4 = 1;
                i2 = 1;
                i3 = 0;
                i5 = 6;
            } else {
                if (cCharAt == 'T') {
                    i = 1;
                    i4 = 1;
                    i2 = 1;
                    i3 = 3;
                } else {
                    i = 1;
                    i2 = 1;
                    i3 = 0;
                    i4 = 0;
                }
                i5 = 4;
            }
        }
        while (true) {
            if (i3 != i9) {
                int i10 = i4 + (i3 == 0 ? i5 : i3 == 6 ? 3 : 2);
                if (i10 <= length) {
                    i7 = i4;
                    int i11 = 0;
                    while (true) {
                        if (i7 >= i10) {
                            iArr[i3] = i11;
                            if (i7 != length) {
                                i4 = i7 + 1;
                                char cCharAt2 = str.charAt(i7);
                                if (cCharAt2 == 'Z') {
                                    iArr[7] = 0;
                                    iArr[8] = 0;
                                    if (i3 == 4 || i3 == 5 || i3 == 6) {
                                        i7 = i4;
                                    }
                                } else {
                                    switch (i3) {
                                        case 0:
                                        case 1:
                                            c2 = '+';
                                            c3 = 'T';
                                            c4 = '-';
                                            if (cCharAt2 != '-') {
                                                i3 = cCharAt2 != 'T' ? -1 : 3;
                                            } else {
                                                i3++;
                                            }
                                            break;
                                        case 2:
                                            c2 = '+';
                                            c3 = 'T';
                                            i3 = cCharAt2 == 'T' ? 3 : -1;
                                            c4 = '-';
                                            break;
                                        case 3:
                                            c2 = '+';
                                            if (cCharAt2 == ':') {
                                                i3 = 4;
                                            } else {
                                                i3 = -1;
                                            }
                                            c3 = 'T';
                                            c4 = '-';
                                            break;
                                        case 4:
                                            c2 = '+';
                                            if (cCharAt2 == ':') {
                                                i3 = 5;
                                            } else if (cCharAt2 == '+' || cCharAt2 == '-') {
                                                i3 = 7;
                                            } else {
                                                i3 = -1;
                                            }
                                            c3 = 'T';
                                            c4 = '-';
                                            break;
                                        case 5:
                                            c5 = '-';
                                            c2 = '+';
                                            if (cCharAt2 == '.') {
                                                i8 = 6;
                                            } else if (cCharAt2 == '+' || cCharAt2 == '-') {
                                                i8 = 7;
                                            } else {
                                                i8 = -1;
                                            }
                                            c4 = c5;
                                            i3 = i8;
                                            c3 = 'T';
                                            break;
                                        case 6:
                                            c2 = '+';
                                            c5 = '-';
                                            if (cCharAt2 == '+' || cCharAt2 == '-') {
                                                i8 = 7;
                                            } else {
                                                i8 = -1;
                                            }
                                            c4 = c5;
                                            i3 = i8;
                                            c3 = 'T';
                                            break;
                                        case 7:
                                            if (cCharAt2 == ':') {
                                                i7 = i4;
                                            }
                                            i3 = 8;
                                            i4 = i7;
                                            c2 = '+';
                                            c3 = 'T';
                                            c4 = '-';
                                            break;
                                        case 8:
                                            i3 = -1;
                                            c2 = '+';
                                            c3 = 'T';
                                            c4 = '-';
                                            break;
                                        default:
                                            c2 = '+';
                                            c3 = 'T';
                                            c4 = '-';
                                            break;
                                    }
                                    if (i3 == 7) {
                                        i2 = cCharAt2 == c4 ? -1 : 1;
                                    }
                                    i9 = -1;
                                }
                            } else if (i3 == 3 || i3 == 7) {
                                i3 = -1;
                            }
                            i6 = -1;
                        } else {
                            char cCharAt3 = str.charAt(i7);
                            if (cCharAt3 < '0' || cCharAt3 > '9') {
                                i6 = -1;
                                i3 = -1;
                            } else {
                                i11 = (i11 * 10) + (cCharAt3 - '0');
                                i7++;
                            }
                        }
                    }
                }
                i7 = i4;
                i6 = -1;
                i3 = -1;
            } else {
                i6 = i9;
                i7 = i4;
            }
            if (i3 == i6 || i7 != length) {
                return Double.NaN;
            }
            int i12 = iArr[0];
            int i13 = iArr[1];
            int i14 = iArr[2];
            int i15 = iArr[3];
            int i16 = iArr[4];
            int i17 = iArr[5];
            int i18 = iArr[6];
            int i19 = iArr[7];
            int i20 = iArr[8];
            if (i12 > 275943 || i13 < 1 || i13 > 12 || i14 < 1 || i14 > m(i12, i13) || i15 > 24) {
                return Double.NaN;
            }
            if ((i15 == 24 && (i16 > 0 || i17 > 0 || i18 > 0)) || i16 > 59 || i17 > 59 || i19 > 23 || i20 > 59) {
                return Double.NaN;
            }
            double dI = I(i12 * i, i13 - 1, i14, i15, i16, i17, i18);
            if (i19 != -1) {
                dI -= (((double) ((i19 * 60) + i20)) * 60000.0d) * ((double) i2);
            }
            if (dI < -8.64E15d || dI > 8.64E15d) {
                return Double.NaN;
            }
            return dI;
        }
    }

    public static String U(double d2, int i) {
        DateFormat dateFormat;
        String str;
        if (i == 5) {
            dateFormat = f;
        } else if (i == 6) {
            dateFormat = h;
        } else {
            if (i != 7) {
                throw new AssertionError();
            }
            dateFormat = g;
        }
        synchronized (dateFormat) {
            str = dateFormat.format(new Date((long) d2));
        }
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0059  */
    public static int b(double d2) {
        int i;
        int i2;
        int iC = C(d2);
        int iC2 = (int) (c(d2) - k(iC));
        int i3 = iC2 - 59;
        if (i3 < 0) {
            return i3 < -28 ? iC2 + 1 : iC2 - 30;
        }
        if (q(iC)) {
            if (i3 == 0) {
                return 29;
            }
            i3 = iC2 - 60;
        }
        int i4 = 30;
        int i5 = 31;
        switch (i3 / 30) {
            case 0:
                return i3 + 1;
            case 1:
                i4 = 31;
                i2 = i3 - i5;
                if (i2 < 0) {
                    i2 += i4;
                }
                return i2 + 1;
            case 2:
                i5 = 61;
                i2 = i3 - i5;
                if (i2 < 0) {
                    i2 += i4;
                }
                return i2 + 1;
            case 3:
                i = 92;
                i4 = 31;
                i5 = i;
                i2 = i3 - i5;
                if (i2 < 0) {
                    i2 += i4;
                }
                return i2 + 1;
            case 4:
                i5 = 122;
                i2 = i3 - i5;
                if (i2 < 0) {
                    i2 += i4;
                }
                return i2 + 1;
            case 5:
                i = 153;
                i4 = 31;
                i5 = i;
                i2 = i3 - i5;
                if (i2 < 0) {
                    i2 += i4;
                }
                return i2 + 1;
            case 6:
                i = 184;
                i4 = 31;
                i5 = i;
                i2 = i3 - i5;
                if (i2 < 0) {
                    i2 += i4;
                }
                return i2 + 1;
            case 7:
                i5 = 214;
                i2 = i3 - i5;
                if (i2 < 0) {
                    i2 += i4;
                }
                return i2 + 1;
            case 8:
                i = 245;
                i4 = 31;
                i5 = i;
                i2 = i3 - i5;
                if (i2 < 0) {
                    i2 += i4;
                }
                return i2 + 1;
            case 9:
                i5 = 275;
                i2 = i3 - i5;
                if (i2 < 0) {
                    i2 += i4;
                }
                return i2 + 1;
            case 10:
                return i3 - 274;
            default:
                throw Kit.codeBug();
        }
    }

    public static double c(double d2) {
        return Math.floor(d2 / 8.64E7d);
    }

    public static double f(int i, int i2) {
        int i3;
        int i4;
        int i5 = i * 30;
        if (i < 7) {
            if (i >= 2) {
                i4 = (i - 1) / 2;
            } else {
                i3 = i5 + i;
            }
            if (i >= 2 && q(i2)) {
                i3++;
            }
            return i3;
        }
        i4 = i / 2;
        i3 = i5 + (i4 - 1);
        if (i >= 2) {
            i3++;
        }
        return i3;
    }

    public static void init(Scriptable scriptable, boolean z) {
        NativeDate nativeDate = new NativeDate();
        nativeDate.date = Double.NaN;
        nativeDate.exportAsJSClass(47, scriptable, z);
    }

    public static double k(double d2) {
        return ((((d2 - 1970.0d) * 365.0d) + Math.floor((d2 - 1969.0d) / 4.0d)) - Math.floor((d2 - 1901.0d) / 100.0d)) + Math.floor((d2 - 1601.0d) / 400.0d);
    }

    public static double l(double d2) {
        if (d2 < 0.0d) {
            d2 = s(t(o(C(d2)), w(d2), b(d2)), A(d2));
        }
        return c.inDaylightTime(new Date((long) d2)) ? 3600000.0d : 0.0d;
    }

    public static int m(int i, int i2) {
        if (i2 == 2) {
            return q(i) ? 29 : 28;
        }
        return i2 >= 8 ? 31 - (i2 & 1) : (i2 & 1) + 30;
    }

    public static double n(double d2) {
        if (Double.isInfinite(d2) || Double.isNaN(d2)) {
            return Double.NaN;
        }
        return q((int) d2) ? 366.0d : 365.0d;
    }

    public static int o(int i) {
        int iK = (((int) k(i)) + 4) % 7;
        if (iK < 0) {
            iK += 7;
        }
        if (q(i)) {
            switch (iK) {
                case 0:
                    return 1984;
                case 1:
                    return 1996;
                case 2:
                    return 1980;
                case 3:
                    return 1992;
                case 4:
                    return 1976;
                case 5:
                    return 1988;
                case 6:
                    return 1972;
            }
        }
        switch (iK) {
            case 0:
                return 1978;
            case 1:
                return 1973;
            case 2:
                return 1985;
            case 3:
                return 1986;
            case 4:
                return 1981;
            case 5:
                return 1971;
            case 6:
                return 1977;
        }
        throw Kit.codeBug();
    }

    public static int p(double d2) {
        double dFloor = Math.floor(d2 / 3600000.0d) % 24.0d;
        if (dFloor < 0.0d) {
            dFloor += 24.0d;
        }
        return (int) dFloor;
    }

    public static boolean q(int i) {
        return i % 4 == 0 && (i % 100 != 0 || i % 400 == 0);
    }

    public static double r(double d2) {
        return d + d2 + l(d2);
    }

    public static double s(double d2, double d3) {
        return (d2 * 8.64E7d) + d3;
    }

    public static double t(double d2, double d3, double d4) {
        double dFloor = d2 + Math.floor(d3 / 12.0d);
        double d5 = d3 % 12.0d;
        if (d5 < 0.0d) {
            d5 += 12.0d;
        }
        return ((Math.floor(z(dFloor) / 8.64E7d) + f((int) d5, (int) dFloor)) + d4) - 1.0d;
    }

    public static double u(double d2, double d3, double d4, double d5) {
        return (((((d2 * 60.0d) + d3) * 60.0d) + d4) * 1000.0d) + d5;
    }

    public static int v(double d2) {
        double dFloor = Math.floor(d2 / 60000.0d) % 60.0d;
        if (dFloor < 0.0d) {
            dFloor += 60.0d;
        }
        return (int) dFloor;
    }

    public static int w(double d2) {
        int i;
        int iC = C(d2);
        int iC2 = (int) (c(d2) - k(iC));
        int i2 = iC2 - 59;
        if (i2 < 0) {
            return i2 < -28 ? 0 : 1;
        }
        if (q(iC)) {
            if (i2 == 0) {
                return 1;
            }
            i2 = iC2 - 60;
        }
        int i3 = i2 / 30;
        switch (i3) {
            case 0:
                return 2;
            case 1:
                i = 31;
                break;
            case 2:
                i = 61;
                break;
            case 3:
                i = 92;
                break;
            case 4:
                i = 122;
                break;
            case 5:
                i = 153;
                break;
            case 6:
                i = 184;
                break;
            case 7:
                i = 214;
                break;
            case 8:
                i = 245;
                break;
            case 9:
                i = 275;
                break;
            case 10:
                return 11;
            default:
                throw Kit.codeBug();
        }
        return i2 >= i ? i3 + 2 : i3 + 1;
    }

    public static int x(double d2) {
        double dFloor = Math.floor(d2 / 1000.0d) % 60.0d;
        if (dFloor < 0.0d) {
            dFloor += 60.0d;
        }
        return (int) dFloor;
    }

    public static double y(double d2) {
        if (Double.isNaN(d2) || d2 == Double.POSITIVE_INFINITY || d2 == Double.NEGATIVE_INFINITY || Math.abs(d2) > 8.64E15d) {
            return Double.NaN;
        }
        return d2 > 0.0d ? Math.floor(d2 + 0.0d) : Math.ceil(d2 + 0.0d);
    }

    public static double z(double d2) {
        return k(d2) * 8.64E7d;
    }

    @Override
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        double dY;
        if (!idFunctionObject.hasTag(b)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        if (iMethodId == -3) {
            return ScriptRuntime.wrapNumber(S());
        }
        if (iMethodId == -2) {
            return ScriptRuntime.wrapNumber(J(ScriptRuntime.toString(objArr, 0)));
        }
        if (iMethodId == -1) {
            return ScriptRuntime.wrapNumber(M(objArr));
        }
        if (iMethodId == 1) {
            return scriptable2 != null ? G(S(), 2) : L(objArr);
        }
        if (iMethodId == 47) {
            Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
            Object primitive = ScriptRuntime.toPrimitive(object, ScriptRuntime.NumberClass);
            if (primitive instanceof Number) {
                double dDoubleValue = ((Number) primitive).doubleValue();
                if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                    return null;
                }
            }
            Object property = ScriptableObject.getProperty(object, "toISOString");
            if (property == Scriptable.NOT_FOUND) {
                throw ScriptRuntime.typeError2("msg.function.not.found.in", "toISOString", ScriptRuntime.toString(object));
            }
            if (!(property instanceof Callable)) {
                throw ScriptRuntime.typeError3("msg.isnt.function.in", "toISOString", ScriptRuntime.toString(object), ScriptRuntime.toString(property));
            }
            Object objCall = ((Callable) property).call(context, scriptable, object, ScriptRuntime.emptyArgs);
            if (ScriptRuntime.isPrimitive(objCall)) {
                return objCall;
            }
            throw ScriptRuntime.typeError1("msg.toisostring.must.return.primitive", ScriptRuntime.toString(objCall));
        }
        if (!(scriptable2 instanceof NativeDate)) {
            throw IdScriptableObject.incompatibleCallError(idFunctionObject);
        }
        NativeDate nativeDate = (NativeDate) scriptable2;
        double dC = nativeDate.date;
        switch (iMethodId) {
            case 2:
            case 3:
            case 4:
                return !Double.isNaN(dC) ? G(dC, iMethodId) : "Invalid Date";
            case 5:
            case 6:
            case 7:
                return !Double.isNaN(dC) ? U(dC, iMethodId) : "Invalid Date";
            case 8:
                return !Double.isNaN(dC) ? O(dC) : "Invalid Date";
            case 9:
                return "(new Date(" + ScriptRuntime.toString(dC) + "))";
            case 10:
            case 11:
                return ScriptRuntime.wrapNumber(dC);
            case 12:
            case 13:
            case 14:
                if (!Double.isNaN(dC)) {
                    if (iMethodId != 14) {
                        dC = r(dC);
                    }
                    dC = C(dC);
                    if (iMethodId == 12 && (!context.hasFeature(1) || (1900.0d <= dC && dC < 2000.0d))) {
                        dC -= 1900.0d;
                    }
                }
                return ScriptRuntime.wrapNumber(dC);
            case 15:
            case 16:
                if (!Double.isNaN(dC)) {
                    if (iMethodId == 15) {
                        dC = r(dC);
                    }
                    dC = w(dC);
                }
                return ScriptRuntime.wrapNumber(dC);
            case 17:
            case 18:
                if (!Double.isNaN(dC)) {
                    if (iMethodId == 17) {
                        dC = r(dC);
                    }
                    dC = b(dC);
                }
                return ScriptRuntime.wrapNumber(dC);
            case 19:
            case 20:
                if (!Double.isNaN(dC)) {
                    if (iMethodId == 19) {
                        dC = r(dC);
                    }
                    dC = B(dC);
                }
                return ScriptRuntime.wrapNumber(dC);
            case 21:
            case 22:
                if (!Double.isNaN(dC)) {
                    if (iMethodId == 21) {
                        dC = r(dC);
                    }
                    dC = p(dC);
                }
                return ScriptRuntime.wrapNumber(dC);
            case 23:
            case 24:
                if (!Double.isNaN(dC)) {
                    if (iMethodId == 23) {
                        dC = r(dC);
                    }
                    dC = v(dC);
                }
                return ScriptRuntime.wrapNumber(dC);
            case 25:
            case 26:
                if (!Double.isNaN(dC)) {
                    if (iMethodId == 25) {
                        dC = r(dC);
                    }
                    dC = x(dC);
                }
                return ScriptRuntime.wrapNumber(dC);
            case 27:
            case 28:
                if (!Double.isNaN(dC)) {
                    if (iMethodId == 27) {
                        dC = r(dC);
                    }
                    dC = R(dC);
                }
                return ScriptRuntime.wrapNumber(dC);
            case 29:
                if (!Double.isNaN(dC)) {
                    dC = (dC - r(dC)) / 60000.0d;
                }
                return ScriptRuntime.wrapNumber(dC);
            case 30:
                double dY2 = y(ScriptRuntime.toNumber(objArr, 0));
                nativeDate.date = dY2;
                return ScriptRuntime.wrapNumber(dY2);
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
                double dQ = Q(dC, objArr, iMethodId);
                nativeDate.date = dQ;
                return ScriptRuntime.wrapNumber(dQ);
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
                double dP = P(dC, objArr, iMethodId);
                nativeDate.date = dP;
                return ScriptRuntime.wrapNumber(dP);
            case 45:
                double number = ScriptRuntime.toNumber(objArr, 0);
                if (Double.isNaN(number) || Double.isInfinite(number)) {
                    dY = Double.NaN;
                } else {
                    double dR = Double.isNaN(dC) ? 0.0d : r(dC);
                    if (number >= 0.0d && number <= 99.0d) {
                        number += 1900.0d;
                    }
                    dY = y(K(s(t(number, w(dR), b(dR)), A(dR))));
                }
                nativeDate.date = dY;
                return ScriptRuntime.wrapNumber(dY);
            case 46:
                if (Double.isNaN(dC)) {
                    throw ScriptRuntime.rangeError(ScriptRuntime.getMessage0("msg.invalid.date"));
                }
                return N(dC);
            default:
                throw new IllegalArgumentException(String.valueOf(iMethodId));
        }
    }

    @Override
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        Object obj = b;
        addIdFunctionProperty(idFunctionObject, obj, -3, "now", 0);
        addIdFunctionProperty(idFunctionObject, obj, -2, "parse", 1);
        addIdFunctionProperty(idFunctionObject, obj, -1, "UTC", 7);
        super.fillConstructorProperties(idFunctionObject);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:145:0x0217  */
    @Override
    public int findPrototypeId(String str) {
        String str2;
        int i = 2;
        switch (str.length()) {
            case 6:
                char cCharAt = str.charAt(0);
                if (cCharAt == 'g') {
                    str2 = "getDay";
                    i = 19;
                } else if (cCharAt != 't') {
                    str2 = null;
                    i = 0;
                } else {
                    str2 = "toJSON";
                    i = 47;
                }
                break;
            case 7:
                char cCharAt2 = str.charAt(3);
                if (cCharAt2 == 'D') {
                    char cCharAt3 = str.charAt(0);
                    if (cCharAt3 == 'g') {
                        str2 = "getDate";
                        i = 17;
                    } else if (cCharAt3 != 's') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "setDate";
                        i = 39;
                    }
                } else if (cCharAt2 == 'T') {
                    char cCharAt4 = str.charAt(0);
                    if (cCharAt4 == 'g') {
                        str2 = "getTime";
                        i = 11;
                    } else if (cCharAt4 != 's') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "setTime";
                        i = 30;
                    }
                } else if (cCharAt2 == 'Y') {
                    char cCharAt5 = str.charAt(0);
                    if (cCharAt5 == 'g') {
                        str2 = "getYear";
                        i = 12;
                    } else if (cCharAt5 != 's') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "setYear";
                        i = 45;
                    }
                } else if (cCharAt2 == 'u') {
                    str2 = "valueOf";
                    i = 10;
                } else {
                    str2 = null;
                    i = 0;
                }
                break;
            case 8:
                char cCharAt6 = str.charAt(3);
                if (cCharAt6 == 'H') {
                    char cCharAt7 = str.charAt(0);
                    if (cCharAt7 == 'g') {
                        str2 = "getHours";
                        i = 21;
                    } else if (cCharAt7 != 's') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "setHours";
                        i = 37;
                    }
                } else if (cCharAt6 == 'M') {
                    char cCharAt8 = str.charAt(0);
                    if (cCharAt8 == 'g') {
                        str2 = "getMonth";
                        i = 15;
                    } else if (cCharAt8 != 's') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "setMonth";
                        i = 41;
                    }
                } else if (cCharAt6 == 'o') {
                    str2 = "toSource";
                    i = 9;
                } else if (cCharAt6 == 't') {
                    str2 = "toString";
                } else {
                    str2 = null;
                    i = 0;
                }
                break;
            case 9:
                str2 = "getUTCDay";
                i = 20;
                break;
            case 10:
                char cCharAt9 = str.charAt(3);
                if (cCharAt9 == 'M') {
                    char cCharAt10 = str.charAt(0);
                    if (cCharAt10 == 'g') {
                        str2 = "getMinutes";
                        i = 23;
                    } else if (cCharAt10 != 's') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "setMinutes";
                        i = 35;
                    }
                } else if (cCharAt9 == 'S') {
                    char cCharAt11 = str.charAt(0);
                    if (cCharAt11 == 'g') {
                        str2 = "getSeconds";
                        i = 25;
                    } else if (cCharAt11 != 's') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "setSeconds";
                        i = 33;
                    }
                } else if (cCharAt9 == 'U') {
                    char cCharAt12 = str.charAt(0);
                    if (cCharAt12 == 'g') {
                        str2 = "getUTCDate";
                        i = 18;
                    } else if (cCharAt12 != 's') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "setUTCDate";
                        i = 40;
                    }
                } else {
                    str2 = null;
                    i = 0;
                }
                break;
            case 11:
                char cCharAt13 = str.charAt(3);
                if (cCharAt13 == 'F') {
                    char cCharAt14 = str.charAt(0);
                    if (cCharAt14 == 'g') {
                        str2 = "getFullYear";
                        i = 13;
                    } else if (cCharAt14 != 's') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "setFullYear";
                        i = 43;
                    }
                } else {
                    if (cCharAt13 != 'M') {
                        if (cCharAt13 != 's') {
                            switch (cCharAt13) {
                                case 'S':
                                    str2 = "toISOString";
                                    i = 46;
                                    break;
                                case 'T':
                                    str2 = "toUTCString";
                                    break;
                                case 'U':
                                    char cCharAt15 = str.charAt(0);
                                    if (cCharAt15 == 'g') {
                                        char cCharAt16 = str.charAt(9);
                                        if (cCharAt16 == 'r') {
                                            str2 = "getUTCHours";
                                            i = 22;
                                        } else if (cCharAt16 == 't') {
                                            str2 = "getUTCMonth";
                                            i = 16;
                                        }
                                        break;
                                    } else if (cCharAt15 == 's') {
                                        char cCharAt17 = str.charAt(9);
                                        if (cCharAt17 == 'r') {
                                            str2 = "setUTCHours";
                                            i = 38;
                                        } else if (cCharAt17 == 't') {
                                            str2 = "setUTCMonth";
                                            i = 42;
                                        }
                                        break;
                                    }
                                default:
                                    str2 = null;
                                    i = 0;
                                    break;
                            }
                        } else {
                            str2 = "constructor";
                            i = 1;
                            break;
                        }
                    } else {
                        str2 = "toGMTString";
                    }
                    i = 8;
                }
                break;
            case 12:
                char cCharAt18 = str.charAt(2);
                if (cCharAt18 == 'D') {
                    str2 = "toDateString";
                    i = 4;
                } else if (cCharAt18 != 'T') {
                    str2 = null;
                    i = 0;
                } else {
                    str2 = "toTimeString";
                    i = 3;
                }
                break;
            case 13:
                char cCharAt19 = str.charAt(0);
                if (cCharAt19 == 'g') {
                    char cCharAt20 = str.charAt(6);
                    if (cCharAt20 == 'M') {
                        str2 = "getUTCMinutes";
                        i = 24;
                    } else if (cCharAt20 != 'S') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "getUTCSeconds";
                        i = 26;
                    }
                } else if (cCharAt19 == 's') {
                    char cCharAt21 = str.charAt(6);
                    if (cCharAt21 == 'M') {
                        str2 = "setUTCMinutes";
                        i = 36;
                    } else if (cCharAt21 != 'S') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "setUTCSeconds";
                        i = 34;
                    }
                } else {
                    str2 = null;
                    i = 0;
                }
                break;
            case 14:
                char cCharAt22 = str.charAt(0);
                if (cCharAt22 == 'g') {
                    str2 = "getUTCFullYear";
                    i = 14;
                } else if (cCharAt22 == 's') {
                    str2 = "setUTCFullYear";
                    i = 44;
                } else if (cCharAt22 != 't') {
                    str2 = null;
                    i = 0;
                } else {
                    str2 = "toLocaleString";
                    i = 5;
                }
                break;
            case 15:
                char cCharAt23 = str.charAt(0);
                if (cCharAt23 == 'g') {
                    str2 = "getMilliseconds";
                    i = 27;
                } else if (cCharAt23 != 's') {
                    str2 = null;
                    i = 0;
                } else {
                    str2 = "setMilliseconds";
                    i = 31;
                }
                break;
            case 16:
            default:
                str2 = null;
                i = 0;
                break;
            case 17:
                str2 = "getTimezoneOffset";
                i = 29;
                break;
            case 18:
                char cCharAt24 = str.charAt(0);
                if (cCharAt24 == 'g') {
                    str2 = "getUTCMilliseconds";
                    i = 28;
                } else if (cCharAt24 == 's') {
                    str2 = "setUTCMilliseconds";
                    i = 32;
                } else if (cCharAt24 == 't') {
                    char cCharAt25 = str.charAt(8);
                    if (cCharAt25 == 'D') {
                        str2 = "toLocaleDateString";
                        i = 7;
                    } else if (cCharAt25 != 'T') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "toLocaleTimeString";
                        i = 6;
                    }
                } else {
                    str2 = null;
                    i = 0;
                }
                break;
        }
        if (str2 == null || str2 == str || str2.equals(str)) {
            return i;
        }
        return 0;
    }

    @Override
    public String getClassName() {
        return "Date";
    }

    @Override
    public Object getDefaultValue(Class<?> cls) {
        if (cls == null) {
            cls = ScriptRuntime.StringClass;
        }
        return super.getDefaultValue(cls);
    }

    public double getJSTimeValue() {
        return this.date;
    }

    @Override
    public void initPrototypeId(int i) {
        String str;
        String str2;
        int i2 = 4;
        int i3 = 0;
        switch (i) {
            case 1:
                i2 = 7;
                str = "constructor";
                i3 = i2;
                str2 = str;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 2:
                str2 = "toString";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 3:
                str2 = "toTimeString";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 4:
                str2 = "toDateString";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 5:
                str2 = "toLocaleString";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 6:
                str2 = "toLocaleTimeString";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 7:
                str2 = "toLocaleDateString";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 8:
                str2 = "toUTCString";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 9:
                str2 = "toSource";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 10:
                str2 = "valueOf";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 11:
                str2 = "getTime";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 12:
                str2 = "getYear";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 13:
                str2 = "getFullYear";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 14:
                str2 = "getUTCFullYear";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 15:
                str2 = "getMonth";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 16:
                str2 = "getUTCMonth";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 17:
                str2 = "getDate";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 18:
                str2 = "getUTCDate";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 19:
                str2 = "getDay";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 20:
                str2 = "getUTCDay";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 21:
                str2 = "getHours";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 22:
                str2 = "getUTCHours";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 23:
                str2 = "getMinutes";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 24:
                str2 = "getUTCMinutes";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 25:
                str2 = "getSeconds";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 26:
                str2 = "getUTCSeconds";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 27:
                str2 = "getMilliseconds";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 28:
                str2 = "getUTCMilliseconds";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 29:
                str2 = "getTimezoneOffset";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 30:
                str2 = "setTime";
                i3 = 1;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 31:
                str2 = "setMilliseconds";
                i3 = 1;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 32:
                str2 = "setUTCMilliseconds";
                i3 = 1;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 33:
                str2 = "setSeconds";
                i3 = 2;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 34:
                str2 = "setUTCSeconds";
                i3 = 2;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 35:
                str2 = "setMinutes";
                i3 = 3;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 36:
                str2 = "setUTCMinutes";
                i3 = 3;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 37:
                str = "setHours";
                i3 = i2;
                str2 = str;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 38:
                str = "setUTCHours";
                i3 = i2;
                str2 = str;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 39:
                str2 = "setDate";
                i3 = 1;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 40:
                str2 = "setUTCDate";
                i3 = 1;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 41:
                str2 = "setMonth";
                i3 = 2;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 42:
                str2 = "setUTCMonth";
                i3 = 2;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 43:
                str2 = "setFullYear";
                i3 = 3;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 44:
                str2 = "setUTCFullYear";
                i3 = 3;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 45:
                str2 = "setYear";
                i3 = 1;
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 46:
                str2 = "toISOString";
                initPrototypeMethod(b, i, str2, i3);
                return;
            case 47:
                str2 = "toJSON";
                i3 = 1;
                initPrototypeMethod(b, i, str2, i3);
                return;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
    }
}
