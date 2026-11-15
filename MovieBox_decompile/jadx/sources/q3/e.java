package q3;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class e {

    public static final Pattern f69356a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    private static final Pattern f69357b = Pattern.compile("(\\S+?):(\\S+)");

    private static final Map f69358c;

    private static final Map f69359d;

    static class b {

        private static final Comparator f69360c = new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return e.b.e((e.b) obj, (e.b) obj2);
            }
        };

        private final c f69361a;

        private final int f69362b;

        public static int e(b bVar, b bVar2) {
            return Integer.compare(bVar.f69361a.f69364b, bVar2.f69361a.f69364b);
        }

        private b(c cVar, int i10) {
            this.f69361a = cVar;
            this.f69362b = i10;
        }
    }

    private static final class c {

        public final String f69363a;

        public final int f69364b;

        public final String f69365c;

        public final Set f69366d;

        private c(String str, int i10, String str2, Set set) {
            this.f69364b = i10;
            this.f69363a = str;
            this.f69365c = str2;
            this.f69366d = set;
        }

        public static c a(String str, int i10) {
            String str2;
            String strTrim = str.trim();
            androidx.media3.common.util.a.a(!strTrim.isEmpty());
            int iIndexOf = strTrim.indexOf(" ");
            if (iIndexOf == -1) {
                str2 = "";
            } else {
                String strTrim2 = strTrim.substring(iIndexOf).trim();
                strTrim = strTrim.substring(0, iIndexOf);
                str2 = strTrim2;
            }
            String[] strArrO1 = a1.o1(strTrim, "\\.");
            String str3 = strArrO1[0];
            HashSet hashSet = new HashSet();
            for (int i11 = 1; i11 < strArrO1.length; i11++) {
                hashSet.add(strArrO1[i11]);
            }
            return new c(str3, i10, str2, hashSet);
        }

        public static c b() {
            return new c("", 0, "", Collections.emptySet());
        }
    }

    private static final class d implements Comparable {

        public final int f69367a;

        public final q3.c f69368b;

        public d(int i10, q3.c cVar) {
            this.f69367a = i10;
            this.f69368b = cVar;
        }

        @Override
        public int compareTo(d dVar) {
            return Integer.compare(this.f69367a, dVar.f69367a);
        }
    }

    private static final class C0857e {

        public CharSequence f69371c;

        public long f69369a = 0;

        public long f69370b = 0;

        public int f69372d = 2;

        public float f69373e = -3.4028235E38f;

        public int f69374f = 1;

        public int f69375g = 0;

        public float f69376h = -3.4028235E38f;

        public int f69377i = Integer.MIN_VALUE;

        public float f69378j = 1.0f;

        public int f69379k = Integer.MIN_VALUE;

        private static float b(float f10, int i10) {
            if (f10 != -3.4028235E38f && i10 == 0 && (f10 < 0.0f || f10 > 1.0f)) {
                return 1.0f;
            }
            if (f10 != -3.4028235E38f) {
                return f10;
            }
            return i10 == 0 ? 1.0f : -3.4028235E38f;
        }

        private static Layout.Alignment c(int i10) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return Layout.Alignment.ALIGN_CENTER;
                }
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            u.h("WebvttCueParser", "Unknown textAlignment: " + i10);
                            return null;
                        }
                    }
                }
                return Layout.Alignment.ALIGN_OPPOSITE;
            }
            return Layout.Alignment.ALIGN_NORMAL;
        }

        private static float d(int i10, float f10) {
            if (i10 == 0) {
                return 1.0f - f10;
            }
            if (i10 == 1) {
                return f10 <= 0.5f ? f10 * 2.0f : (1.0f - f10) * 2.0f;
            }
            if (i10 == 2) {
                return f10;
            }
            throw new IllegalStateException(String.valueOf(i10));
        }

        private static float e(int i10) {
            if (i10 != 4) {
                return i10 != 5 ? 0.5f : 1.0f;
            }
            return 0.0f;
        }

        private static int f(int i10) {
            if (i10 == 1) {
                return 0;
            }
            if (i10 == 3) {
                return 2;
            }
            if (i10 != 4) {
                return i10 != 5 ? 1 : 2;
            }
            return 0;
        }

        public q3.d a() {
            return new q3.d(g().a(), this.f69369a, this.f69370b);
        }

        public u1.a.b g() {
            float fE = this.f69376h;
            if (fE == -3.4028235E38f) {
                fE = e(this.f69372d);
            }
            int iF = this.f69377i;
            if (iF == Integer.MIN_VALUE) {
                iF = f(this.f69372d);
            }
            u1.a.b bVarR = new u1.a.b().p(c(this.f69372d)).h(b(this.f69373e, this.f69374f), this.f69374f).i(this.f69375g).k(fE).l(iF).n(Math.min(this.f69378j, d(iF, fE))).r(this.f69379k);
            CharSequence charSequence = this.f69371c;
            if (charSequence != null) {
                bVarR.o(charSequence);
            }
            return bVarR;
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f69358c = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f69359d = Collections.unmodifiableMap(map2);
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, Set set, int i10, int i11) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Map map = f69358c;
            if (map.containsKey(str)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str)).intValue()), i10, i11, 33);
            } else {
                Map map2 = f69359d;
                if (map2.containsKey(str)) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str)).intValue()), i10, i11, 33);
                }
            }
        }
    }

    private static void b(String str, SpannableStringBuilder spannableStringBuilder) {
        str.hashCode();
        switch (str) {
            case "gt":
                spannableStringBuilder.append('>');
                break;
            case "lt":
                spannableStringBuilder.append('<');
                break;
            case "amp":
                spannableStringBuilder.append('&');
                break;
            case "nbsp":
                spannableStringBuilder.append(' ');
                break;
            default:
                u.h("WebvttCueParser", "ignoring unsupported entity: '&" + str + ";'");
                break;
        }
    }

    private static void c(SpannableStringBuilder spannableStringBuilder, String str, c cVar, List list, List list2) {
        int iJ = j(list2, str, cVar);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, b.f69360c);
        int i10 = cVar.f69364b;
        int length = 0;
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            if ("rt".equals(((b) arrayList.get(i11)).f69361a.f69363a)) {
                b bVar = (b) arrayList.get(i11);
                int iH = h(j(list2, str, bVar.f69361a), iJ, 1);
                int i12 = bVar.f69361a.f69364b - length;
                int i13 = bVar.f69362b - length;
                CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i12, i13);
                spannableStringBuilder.delete(i12, i13);
                spannableStringBuilder.setSpan(new u1.f(charSequenceSubSequence.toString(), iH), i10, i12, 33);
                length += charSequenceSubSequence.length();
                i10 = i12;
            }
        }
    }

    private static void d(String str, c cVar, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        int i10 = cVar.f69364b;
        int length = spannableStringBuilder.length();
        String str2 = cVar.f69363a;
        str2.hashCode();
        switch (str2) {
            case "":
            case "lang":
                break;
            case "b":
                spannableStringBuilder.setSpan(new StyleSpan(1), i10, length, 33);
                break;
            case "c":
                a(spannableStringBuilder, cVar.f69366d, i10, length);
                break;
            case "i":
                spannableStringBuilder.setSpan(new StyleSpan(2), i10, length, 33);
                break;
            case "u":
                spannableStringBuilder.setSpan(new UnderlineSpan(), i10, length, 33);
                break;
            case "v":
                f(spannableStringBuilder, cVar.f69365c, i10, length);
                break;
            case "ruby":
                c(spannableStringBuilder, str, cVar, list, list2);
                break;
            default:
                return;
        }
        List listI = i(list2, str, cVar);
        for (int i11 = 0; i11 < listI.size(); i11++) {
            e(spannableStringBuilder, ((d) listI.get(i11)).f69368b, i10, length);
        }
    }

    private static void e(SpannableStringBuilder spannableStringBuilder, q3.c cVar, int i10, int i11) {
        if (cVar == null) {
            return;
        }
        if (cVar.i() != -1) {
            u1.g.b(spannableStringBuilder, new StyleSpan(cVar.i()), i10, i11, 33);
        }
        if (cVar.l()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i10, i11, 33);
        }
        if (cVar.m()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i10, i11, 33);
        }
        if (cVar.k()) {
            u1.g.b(spannableStringBuilder, new ForegroundColorSpan(cVar.c()), i10, i11, 33);
        }
        if (cVar.j()) {
            u1.g.b(spannableStringBuilder, new BackgroundColorSpan(cVar.a()), i10, i11, 33);
        }
        if (cVar.d() != null) {
            u1.g.b(spannableStringBuilder, new TypefaceSpan(cVar.d()), i10, i11, 33);
        }
        int iF = cVar.f();
        if (iF == 1) {
            u1.g.b(spannableStringBuilder, new AbsoluteSizeSpan((int) cVar.e(), true), i10, i11, 33);
        } else if (iF == 2) {
            u1.g.b(spannableStringBuilder, new RelativeSizeSpan(cVar.e()), i10, i11, 33);
        } else if (iF == 3) {
            u1.g.b(spannableStringBuilder, new RelativeSizeSpan(cVar.e() / 100.0f), i10, i11, 33);
        }
        if (cVar.b()) {
            spannableStringBuilder.setSpan(new u1.d(), i10, i11, 33);
        }
    }

    private static void f(SpannableStringBuilder spannableStringBuilder, String str, int i10, int i11) {
        spannableStringBuilder.setSpan(new u1.i(str), i10, i11, 33);
    }

    private static int g(String str, int i10) {
        int iIndexOf = str.indexOf(62, i10);
        return iIndexOf == -1 ? str.length() : iIndexOf + 1;
    }

    private static int h(int i10, int i11, int i12) {
        if (i10 != -1) {
            return i10;
        }
        if (i11 != -1) {
            return i11;
        }
        if (i12 != -1) {
            return i12;
        }
        throw new IllegalArgumentException();
    }

    private static List i(List list, String str, c cVar) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            q3.c cVar2 = (q3.c) list.get(i10);
            int iH = cVar2.h(str, cVar.f69363a, cVar.f69366d, cVar.f69365c);
            if (iH > 0) {
                arrayList.add(new d(iH, cVar2));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static int j(List list, String str, c cVar) {
        List listI = i(list, str, cVar);
        for (int i10 = 0; i10 < listI.size(); i10++) {
            q3.c cVar2 = ((d) listI.get(i10)).f69368b;
            if (cVar2.g() != -1) {
                return cVar2.g();
            }
        }
        return -1;
    }

    private static String k(String str) {
        String strTrim = str.trim();
        androidx.media3.common.util.a.a(!strTrim.isEmpty());
        return a1.p1(strTrim, "[ \\.]")[0];
    }

    private static boolean l(String str) {
        str.hashCode();
        switch (str) {
            case "b":
            case "c":
            case "i":
            case "u":
            case "v":
            case "rt":
            case "lang":
            case "ruby":
                return true;
            default:
                return false;
        }
    }

    public static u1.a m(CharSequence charSequence) {
        C0857e c0857e = new C0857e();
        c0857e.f69371c = charSequence;
        return c0857e.g().a();
    }

    public static q3.d n(j0 j0Var, List list) {
        String strS = j0Var.s();
        if (strS == null) {
            return null;
        }
        Pattern pattern = f69356a;
        Matcher matcher = pattern.matcher(strS);
        if (matcher.matches()) {
            return o(null, matcher, j0Var, list);
        }
        String strS2 = j0Var.s();
        if (strS2 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(strS2);
        if (matcher2.matches()) {
            return o(strS.trim(), matcher2, j0Var, list);
        }
        return null;
    }

    private static q3.d o(String str, Matcher matcher, j0 j0Var, List list) {
        C0857e c0857e = new C0857e();
        try {
            c0857e.f69369a = h.d((String) androidx.media3.common.util.a.e(matcher.group(1)));
            c0857e.f69370b = h.d((String) androidx.media3.common.util.a.e(matcher.group(2)));
            q((String) androidx.media3.common.util.a.e(matcher.group(3)), c0857e);
            StringBuilder sb2 = new StringBuilder();
            String strS = j0Var.s();
            while (!TextUtils.isEmpty(strS)) {
                if (sb2.length() > 0) {
                    sb2.append("\n");
                }
                sb2.append(strS.trim());
                strS = j0Var.s();
            }
            c0857e.f69371c = r(str, sb2.toString(), list);
            return c0857e.a();
        } catch (IllegalArgumentException unused) {
            u.h("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    static u1.a.b p(String str) {
        C0857e c0857e = new C0857e();
        q(str, c0857e);
        return c0857e.g();
    }

    private static void q(String str, C0857e c0857e) {
        Matcher matcher = f69357b.matcher(str);
        while (matcher.find()) {
            String str2 = (String) androidx.media3.common.util.a.e(matcher.group(1));
            String str3 = (String) androidx.media3.common.util.a.e(matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    t(str3, c0857e);
                } else if ("align".equals(str2)) {
                    c0857e.f69372d = w(str3);
                } else if (RequestParameters.POSITION.equals(str2)) {
                    v(str3, c0857e);
                } else if ("size".equals(str2)) {
                    c0857e.f69378j = h.c(str3);
                } else if ("vertical".equals(str2)) {
                    c0857e.f69379k = x(str3);
                } else {
                    u.h("WebvttCueParser", "Unknown cue setting " + str2 + ":" + str3);
                }
            } catch (NumberFormatException unused) {
                u.h("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    static SpannedString r(String str, String str2, List list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 < str2.length()) {
            char cCharAt = str2.charAt(i10);
            if (cCharAt == '&') {
                i10++;
                int iIndexOf = str2.indexOf(59, i10);
                int iIndexOf2 = str2.indexOf(32, i10);
                if (iIndexOf == -1) {
                    iIndexOf = iIndexOf2;
                } else if (iIndexOf2 != -1) {
                    iIndexOf = Math.min(iIndexOf, iIndexOf2);
                }
                if (iIndexOf != -1) {
                    b(str2.substring(i10, iIndexOf), spannableStringBuilder);
                    if (iIndexOf == iIndexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i10 = iIndexOf + 1;
                } else {
                    spannableStringBuilder.append(cCharAt);
                }
            } else if (cCharAt != '<') {
                spannableStringBuilder.append(cCharAt);
                i10++;
            } else {
                int iG = i10 + 1;
                if (iG < str2.length()) {
                    boolean z10 = str2.charAt(iG) == '/';
                    iG = g(str2, iG);
                    int i11 = iG - 2;
                    boolean z11 = str2.charAt(i11) == '/';
                    int i12 = i10 + (z10 ? 2 : 1);
                    if (!z11) {
                        i11 = iG - 1;
                    }
                    String strSubstring = str2.substring(i12, i11);
                    if (!strSubstring.trim().isEmpty()) {
                        String strK = k(strSubstring);
                        if (l(strK)) {
                            if (z10) {
                                while (!arrayDeque.isEmpty()) {
                                    c cVar = (c) arrayDeque.pop();
                                    d(str, cVar, arrayList, spannableStringBuilder, list);
                                    if (arrayDeque.isEmpty()) {
                                        arrayList.clear();
                                    } else {
                                        arrayList.add(new b(cVar, spannableStringBuilder.length()));
                                    }
                                    if (cVar.f69363a.equals(strK)) {
                                        break;
                                    }
                                }
                            } else if (!z11) {
                                arrayDeque.push(c.a(strSubstring, spannableStringBuilder.length()));
                            }
                        }
                    }
                }
                i10 = iG;
            }
        }
        while (!arrayDeque.isEmpty()) {
            d(str, (c) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        d(str, c.b(), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    private static int s(String str) {
        str.hashCode();
        switch (str) {
            case "center":
            case "middle":
                return 1;
            case "end":
                return 2;
            case "start":
                return 0;
            default:
                u.h("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static void t(String str, C0857e c0857e) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            c0857e.f69375g = s(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        if (str.endsWith("%")) {
            c0857e.f69373e = h.c(str);
            c0857e.f69374f = 0;
        } else {
            c0857e.f69373e = Integer.parseInt(str);
            c0857e.f69374f = 1;
        }
    }

    private static int u(String str) {
        str.hashCode();
        switch (str) {
            case "line-left":
            case "start":
                return 0;
            case "center":
            case "middle":
                return 1;
            case "line-right":
            case "end":
                return 2;
            default:
                u.h("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static void v(String str, C0857e c0857e) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            c0857e.f69377i = u(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        c0857e.f69376h = h.c(str);
    }

    private static int w(String str) {
        str.hashCode();
        switch (str) {
            case "center":
            case "middle":
                return 2;
            case "end":
                return 3;
            case "left":
                return 4;
            case "right":
                return 5;
            case "start":
                return 1;
            default:
                u.h("WebvttCueParser", "Invalid alignment value: " + str);
                return 2;
        }
    }

    private static int x(String str) {
        str.hashCode();
        if (str.equals("lr")) {
            return 2;
        }
        if (str.equals("rl")) {
            return 1;
        }
        u.h("WebvttCueParser", "Invalid 'vertical' value: " + str);
        return Integer.MIN_VALUE;
    }
}
