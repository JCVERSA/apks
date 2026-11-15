package ia;

import android.graphics.Color;
import android.graphics.PointF;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.common.primitives.Ints;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class c {

    public final String f62008a;

    public final int f62009b;

    public final Integer f62010c;

    public final Integer f62011d;

    public final float f62012e;

    public final boolean f62013f;

    public final boolean f62014g;

    public final boolean f62015h;

    public final boolean f62016i;

    public final int f62017j;

    static final class a {

        public final int f62018a;

        public final int f62019b;

        public final int f62020c;

        public final int f62021d;

        public final int f62022e;

        public final int f62023f;

        public final int f62024g;

        public final int f62025h;

        public final int f62026i;

        public final int f62027j;

        public final int f62028k;

        private a(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20) {
            this.f62018a = i10;
            this.f62019b = i11;
            this.f62020c = i12;
            this.f62021d = i13;
            this.f62022e = i14;
            this.f62023f = i15;
            this.f62024g = i16;
            this.f62025h = i17;
            this.f62026i = i18;
            this.f62027j = i19;
            this.f62028k = i20;
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

        private static final Pattern f62029c = Pattern.compile("\\{([^}]*)\\}");

        private static final Pattern f62030d = Pattern.compile(p0.C("\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        private static final Pattern f62031e = Pattern.compile(p0.C("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        private static final Pattern f62032f = Pattern.compile("\\\\an(\\d+)");

        public final int f62033a;

        public final PointF f62034b;

        private b(int i10, PointF pointF) {
            this.f62033a = i10;
            this.f62034b = pointF;
        }

        private static int a(String str) {
            Matcher matcher = f62032f.matcher(str);
            if (matcher.find()) {
                return c.e((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
            }
            return -1;
        }

        public static b b(String str) {
            Matcher matcher = f62029c.matcher(str);
            PointF pointF = null;
            int i10 = -1;
            while (matcher.find()) {
                String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(1));
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
            Matcher matcher = f62030d.matcher(str);
            Matcher matcher2 = f62031e.matcher(str);
            boolean zFind = matcher.find();
            boolean zFind2 = matcher2.find();
            if (zFind) {
                if (zFind2) {
                    s.f("SsaStyle.Overrides", "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + str + "'");
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
            return new PointF(Float.parseFloat(((String) com.google.android.exoplayer2.util.a.e(strGroup)).trim()), Float.parseFloat(((String) com.google.android.exoplayer2.util.a.e(strGroup2)).trim()));
        }

        public static String d(String str) {
            return f62029c.matcher(str).replaceAll("");
        }
    }

    private c(String str, int i10, Integer num, Integer num2, float f10, boolean z10, boolean z11, boolean z12, boolean z13, int i11) {
        this.f62008a = str;
        this.f62009b = i10;
        this.f62010c = num;
        this.f62011d = num2;
        this.f62012e = f10;
        this.f62013f = z10;
        this.f62014g = z11;
        this.f62015h = z12;
        this.f62016i = z13;
        this.f62017j = i11;
    }

    public static c b(String str, a aVar) {
        com.google.android.exoplayer2.util.a.a(str.startsWith("Style:"));
        String[] strArrSplit = TextUtils.split(str.substring(6), ",");
        int length = strArrSplit.length;
        int i10 = aVar.f62028k;
        if (length != i10) {
            s.i("SsaStyle", p0.C("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", Integer.valueOf(i10), Integer.valueOf(strArrSplit.length), str));
            return null;
        }
        try {
            String strTrim = strArrSplit[aVar.f62018a].trim();
            int i11 = aVar.f62019b;
            int iE = i11 != -1 ? e(strArrSplit[i11].trim()) : -1;
            int i12 = aVar.f62020c;
            Integer numH = i12 != -1 ? h(strArrSplit[i12].trim()) : null;
            int i13 = aVar.f62021d;
            Integer numH2 = i13 != -1 ? h(strArrSplit[i13].trim()) : null;
            int i14 = aVar.f62022e;
            float fI = i14 != -1 ? i(strArrSplit[i14].trim()) : -3.4028235E38f;
            int i15 = aVar.f62023f;
            boolean z10 = i15 != -1 && f(strArrSplit[i15].trim());
            int i16 = aVar.f62024g;
            boolean z11 = i16 != -1 && f(strArrSplit[i16].trim());
            int i17 = aVar.f62025h;
            boolean z12 = i17 != -1 && f(strArrSplit[i17].trim());
            int i18 = aVar.f62026i;
            boolean z13 = i18 != -1 && f(strArrSplit[i18].trim());
            int i19 = aVar.f62027j;
            return new c(strTrim, iE, numH, numH2, fI, z10, z11, z12, z13, i19 != -1 ? g(strArrSplit[i19].trim()) : -1);
        } catch (RuntimeException e10) {
            s.j("SsaStyle", "Skipping malformed 'Style:' line: '" + str + "'", e10);
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
        s.i("SsaStyle", "Ignoring unknown alignment: " + str);
        return -1;
    }

    private static boolean f(String str) {
        try {
            int i10 = Integer.parseInt(str);
            return i10 == 1 || i10 == -1;
        } catch (NumberFormatException e10) {
            s.j("SsaStyle", "Failed to parse boolean value: '" + str + "'", e10);
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
        s.i("SsaStyle", "Ignoring unknown BorderStyle: " + str);
        return -1;
    }

    public static Integer h(String str) {
        try {
            long j10 = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            com.google.android.exoplayer2.util.a.a(j10 <= 4294967295L);
            return Integer.valueOf(Color.argb(Ints.d(((j10 >> 24) & 255) ^ 255), Ints.d(j10 & 255), Ints.d((j10 >> 8) & 255), Ints.d((j10 >> 16) & 255)));
        } catch (IllegalArgumentException e10) {
            s.j("SsaStyle", "Failed to parse color expression: '" + str + "'", e10);
            return null;
        }
    }

    private static float i(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e10) {
            s.j("SsaStyle", "Failed to parse font size: '" + str + "'", e10);
            return -3.4028235E38f;
        }
    }
}
