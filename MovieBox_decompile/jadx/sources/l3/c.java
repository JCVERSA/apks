package l3;

import android.graphics.Color;
import android.graphics.PointF;
import android.text.TextUtils;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import com.google.common.primitives.Ints;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class c {

    public final String f65605a;

    public final int f65606b;

    public final Integer f65607c;

    public final Integer f65608d;

    public final float f65609e;

    public final boolean f65610f;

    public final boolean f65611g;

    public final boolean f65612h;

    public final boolean f65613i;

    public final int f65614j;

    static final class a {

        public final int f65615a;

        public final int f65616b;

        public final int f65617c;

        public final int f65618d;

        public final int f65619e;

        public final int f65620f;

        public final int f65621g;

        public final int f65622h;

        public final int f65623i;

        public final int f65624j;

        public final int f65625k;

        private a(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20) {
            this.f65615a = i10;
            this.f65616b = i11;
            this.f65617c = i12;
            this.f65618d = i13;
            this.f65619e = i14;
            this.f65620f = i15;
            this.f65621g = i16;
            this.f65622h = i17;
            this.f65623i = i18;
            this.f65624j = i19;
            this.f65625k = i20;
        }

        public static a a(String str) {
            String[] strArrSplit = TextUtils.split(str.substring(7), ",");
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            int i18 = -1;
            int i19 = -1;
            for (int i20 = 0; i20 < strArrSplit.length; i20++) {
                String strE = com.google.common.base.a.e(strArrSplit[i20].trim());
                strE.hashCode();
                switch (strE) {
                    case "italic":
                        i16 = i20;
                        break;
                    case "underline":
                        i17 = i20;
                        break;
                    case "strikeout":
                        i18 = i20;
                        break;
                    case "primarycolour":
                        i12 = i20;
                        break;
                    case "bold":
                        i15 = i20;
                        break;
                    case "name":
                        i10 = i20;
                        break;
                    case "fontsize":
                        i14 = i20;
                        break;
                    case "borderstyle":
                        i19 = i20;
                        break;
                    case "alignment":
                        i11 = i20;
                        break;
                    case "outlinecolour":
                        i13 = i20;
                        break;
                }
            }
            if (i10 != -1) {
                return new a(i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, strArrSplit.length);
            }
            return null;
        }
    }

    static final class b {

        private static final Pattern f65626c = Pattern.compile("\\{([^}]*)\\}");

        private static final Pattern f65627d = Pattern.compile(a1.G("\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        private static final Pattern f65628e = Pattern.compile(a1.G("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        private static final Pattern f65629f = Pattern.compile("\\\\an(\\d+)");

        public final int f65630a;

        public final PointF f65631b;

        private b(int i10, PointF pointF) {
            this.f65630a = i10;
            this.f65631b = pointF;
        }

        private static int a(String str) {
            Matcher matcher = f65629f.matcher(str);
            if (matcher.find()) {
                return c.e((String) androidx.media3.common.util.a.e(matcher.group(1)));
            }
            return -1;
        }

        public static b b(String str) {
            Matcher matcher = f65626c.matcher(str);
            PointF pointF = null;
            int i10 = -1;
            while (matcher.find()) {
                String str2 = (String) androidx.media3.common.util.a.e(matcher.group(1));
                try {
                    PointF pointFC = c(str2);
                    if (pointFC != null) {
                        pointF = pointFC;
                    }
                } catch (RuntimeException unused) {
                }
                try {
                    int iA = a(str2);
                    if (iA != -1) {
                        i10 = iA;
                    }
                } catch (RuntimeException unused2) {
                }
            }
            return new b(i10, pointF);
        }

        private static PointF c(String str) {
            String strGroup;
            String strGroup2;
            Matcher matcher = f65627d.matcher(str);
            Matcher matcher2 = f65628e.matcher(str);
            boolean zFind = matcher.find();
            boolean zFind2 = matcher2.find();
            if (zFind) {
                if (zFind2) {
                    u.f("SsaStyle.Overrides", "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + str + "'");
                }
                strGroup = matcher.group(1);
                strGroup2 = matcher.group(2);
            } else {
                if (!zFind2) {
                    return null;
                }
                strGroup = matcher2.group(1);
                strGroup2 = matcher2.group(2);
            }
            return new PointF(Float.parseFloat(((String) androidx.media3.common.util.a.e(strGroup)).trim()), Float.parseFloat(((String) androidx.media3.common.util.a.e(strGroup2)).trim()));
        }

        public static String d(String str) {
            return f65626c.matcher(str).replaceAll("");
        }
    }

    private c(String str, int i10, Integer num, Integer num2, float f10, boolean z10, boolean z11, boolean z12, boolean z13, int i11) {
        this.f65605a = str;
        this.f65606b = i10;
        this.f65607c = num;
        this.f65608d = num2;
        this.f65609e = f10;
        this.f65610f = z10;
        this.f65611g = z11;
        this.f65612h = z12;
        this.f65613i = z13;
        this.f65614j = i11;
    }

    public static c b(String str, a aVar) {
        androidx.media3.common.util.a.a(str.startsWith("Style:"));
        String[] strArrSplit = TextUtils.split(str.substring(6), ",");
        int length = strArrSplit.length;
        int i10 = aVar.f65625k;
        if (length != i10) {
            u.h("SsaStyle", a1.G("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", Integer.valueOf(i10), Integer.valueOf(strArrSplit.length), str));
            return null;
        }
        try {
            String strTrim = strArrSplit[aVar.f65615a].trim();
            int i11 = aVar.f65616b;
            int iE = i11 != -1 ? e(strArrSplit[i11].trim()) : -1;
            int i12 = aVar.f65617c;
            Integer numH = i12 != -1 ? h(strArrSplit[i12].trim()) : null;
            int i13 = aVar.f65618d;
            Integer numH2 = i13 != -1 ? h(strArrSplit[i13].trim()) : null;
            int i14 = aVar.f65619e;
            float fI = i14 != -1 ? i(strArrSplit[i14].trim()) : -3.4028235E38f;
            int i15 = aVar.f65620f;
            boolean z10 = i15 != -1 && f(strArrSplit[i15].trim());
            int i16 = aVar.f65621g;
            boolean z11 = i16 != -1 && f(strArrSplit[i16].trim());
            int i17 = aVar.f65622h;
            boolean z12 = i17 != -1 && f(strArrSplit[i17].trim());
            int i18 = aVar.f65623i;
            boolean z13 = i18 != -1 && f(strArrSplit[i18].trim());
            int i19 = aVar.f65624j;
            return new c(strTrim, iE, numH, numH2, fI, z10, z11, z12, z13, i19 != -1 ? g(strArrSplit[i19].trim()) : -1);
        } catch (RuntimeException e10) {
            u.i("SsaStyle", "Skipping malformed 'Style:' line: '" + str + "'", e10);
            return null;
        }
    }

    private static boolean c(int i10) {
        switch (i10) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    private static boolean d(int i10) {
        return i10 == 1 || i10 == 3;
    }

    public static int e(String str) {
        try {
            int i10 = Integer.parseInt(str.trim());
            if (c(i10)) {
                return i10;
            }
        } catch (NumberFormatException unused) {
        }
        u.h("SsaStyle", "Ignoring unknown alignment: " + str);
        return -1;
    }

    private static boolean f(String str) {
        try {
            int i10 = Integer.parseInt(str);
            return i10 == 1 || i10 == -1;
        } catch (NumberFormatException e10) {
            u.i("SsaStyle", "Failed to parse boolean value: '" + str + "'", e10);
            return false;
        }
    }

    private static int g(String str) {
        try {
            int i10 = Integer.parseInt(str.trim());
            if (d(i10)) {
                return i10;
            }
        } catch (NumberFormatException unused) {
        }
        u.h("SsaStyle", "Ignoring unknown BorderStyle: " + str);
        return -1;
    }

    public static Integer h(String str) {
        try {
            long j10 = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            androidx.media3.common.util.a.a(j10 <= 4294967295L);
            return Integer.valueOf(Color.argb(Ints.d(((j10 >> 24) & 255) ^ 255), Ints.d(j10 & 255), Ints.d((j10 >> 8) & 255), Ints.d((j10 >> 16) & 255)));
        } catch (IllegalArgumentException e10) {
            u.i("SsaStyle", "Failed to parse color expression: '" + str + "'", e10);
            return null;
        }
    }

    private static float i(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e10) {
            u.i("SsaStyle", "Failed to parse font size: '" + str + "'", e10);
            return -3.4028235E38f;
        }
    }
}
