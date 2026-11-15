package defpackage;

import android.graphics.PointF;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class the {
    public static final Pattern c = Pattern.compile("\\{([^}]*)\\}");
    public static final Pattern d;
    public static final Pattern e;
    public static final Pattern f;
    public final int a;
    public final PointF b;

    static {
        int i = kfh.a;
        Locale locale = Locale.US;
        d = Pattern.compile(String.format(locale, "\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        e = Pattern.compile(String.format(locale, "\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        f = Pattern.compile("\\\\an(\\d+)");
    }

    public the(int i, PointF pointF) {
        this.a = i;
        this.b = pointF;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0081  */
    /* JADX WARN: Code duplicated, block: B:25:0x008e A[Catch: RuntimeException -> 0x000a, TryCatch #1 {RuntimeException -> 0x000a, blocks: (B:23:0x0082, B:25:0x008e, B:27:0x0094, B:28:0x0099), top: B:37:0x0082 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0099 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x009d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x009a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x0094 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x000a A[SYNTHETIC] */
    public static the a(String str) {
        Matcher matcher;
        int iD;
        String strGroup;
        PointF pointF;
        String strGroup2;
        String strGroup3;
        Matcher matcher2 = c.matcher(str);
        PointF pointF2 = null;
        int i = -1;
        while (matcher2.find()) {
            String strGroup4 = matcher2.group(1);
            strGroup4.getClass();
            try {
                Matcher matcher3 = d.matcher(strGroup4);
                Matcher matcher4 = e.matcher(strGroup4);
                boolean zFind = matcher3.find();
                boolean zFind2 = matcher4.find();
                if (zFind) {
                    if (zFind2) {
                        zrg.e("SsaStyle.Overrides", "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + strGroup4 + "'");
                    }
                    strGroup2 = matcher3.group(1);
                    strGroup3 = matcher3.group(2);
                } else {
                    if (zFind2) {
                        String strGroup5 = matcher4.group(1);
                        String strGroup6 = matcher4.group(2);
                        strGroup2 = strGroup5;
                        strGroup3 = strGroup6;
                    } else {
                        pointF = null;
                    }
                    if (pointF != null) {
                        pointF2 = pointF;
                    }
                    try {
                        matcher = f.matcher(strGroup4);
                        if (matcher.find()) {
                            strGroup = matcher.group(1);
                            if (strGroup != null) {
                                throw null;
                            }
                            iD = uhe.d(strGroup);
                        } else {
                            iD = -1;
                        }
                        if (iD != -1) {
                            i = iD;
                        }
                    } catch (RuntimeException unused) {
                    }
                }
                if (strGroup2 == null) {
                    throw null;
                }
                float f2 = Float.parseFloat(strGroup2.trim());
                if (strGroup3 == null) {
                    throw null;
                }
                pointF = new PointF(f2, Float.parseFloat(strGroup3.trim()));
                if (pointF != null) {
                    pointF2 = pointF;
                }
                matcher = f.matcher(strGroup4);
                if (matcher.find()) {
                    strGroup = matcher.group(1);
                    if (strGroup != null) {
                        throw null;
                    }
                    iD = uhe.d(strGroup);
                } else {
                    iD = -1;
                }
                if (iD != -1) {
                    i = iD;
                }
            } catch (RuntimeException unused2) {
            }
        }
        return new the(i, pointF2);
    }

    public static String b(String str) {
        return c.matcher(str).replaceAll("");
    }
}
