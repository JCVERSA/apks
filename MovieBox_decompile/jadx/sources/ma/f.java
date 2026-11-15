package ma;

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
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
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

public final class f {

    public static final Pattern f66320a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    private static final Pattern f66321b = Pattern.compile("(\\S+?):(\\S+)");

    private static final Map f66322c;

    private static final Map f66323d;

    static class b {

        private static final Comparator f66324c = new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return f.b.e((f.b) obj, (f.b) obj2);
            }
        };

        private final c f66325a;

        private final int f66326b;

        public static int e(b bVar, b bVar2) {
            return Integer.compare(bVar.f66325a.f66328b, bVar2.f66325a.f66328b);
        }

        private b(c cVar, int i10) {
            this.f66325a = cVar;
            this.f66326b = i10;
        }
    }

    private static final class c {

        public final String f66327a;

        public final int f66328b;

        public final String f66329c;

        public final Set f66330d;

        private c(String str, int i10, String str2, Set set) {
            this.f66328b = i10;
            this.f66327a = str;
            this.f66329c = str2;
            this.f66330d = set;
        }

        public static c a(String str, int i10) {
            String str2;
            String strTrim = str.trim();
            com.google.android.exoplayer2.util.a.a(!strTrim.isEmpty());
            int iIndexOf = strTrim.indexOf(" ");
            if (iIndexOf == -1) {
                str2 = "";
            } else {
                String strTrim2 = strTrim.substring(iIndexOf).trim();
                strTrim = strTrim.substring(0, iIndexOf);
                str2 = strTrim2;
            }
            String[] strArrS0 = p0.S0(strTrim, "\\.");
            String str3 = strArrS0[0];
            HashSet hashSet = new HashSet();
            for (int i11 = 1; i11 < strArrS0.length; i11++) {
                hashSet.add(strArrS0[i11]);
            }
            return new c(str3, i10, str2, hashSet);
        }

        public static c b() {
            return new c("", 0, "", Collections.emptySet());
        }
    }

    private static final class d implements Comparable {

        public final int f66331a;

        public final ma.d f66332b;

        public d(int i10, ma.d dVar) {
            this.f66331a = i10;
            this.f66332b = dVar;
        }

        @Override
        public int compareTo(d dVar) {
            return Integer.compare(this.f66331a, dVar.f66331a);
        }
    }

    private static final class e {

        public CharSequence f66335c;

        public long f66333a = 0;

        public long f66334b = 0;

        public int f66336d = 2;

        public float f66337e = -3.4028235E38f;

        public int f66338f = 1;

        public int f66339g = 0;

        public float f66340h = -3.4028235E38f;

        public int f66341i = Integer.MIN_VALUE;

        public float f66342j = 1.0f;

        public int f66343k = Integer.MIN_VALUE;

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
                            s.i("WebvttCueParser", "Unknown textAlignment: " + i10);
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

        public ma.e a() {
            return new ma.e(g().a(), this.f66333a, this.f66334b);
        }

        public da.b.C0703b g() {
            float fE = this.f66340h;
            if (fE == -3.4028235E38f) {
                fE = e(this.f66336d);
            }
            int iF = this.f66341i;
            if (iF == Integer.MIN_VALUE) {
                iF = f(this.f66336d);
            }
            da.b.C0703b c0703bR = new da.b.C0703b().p(c(this.f66336d)).h(b(this.f66337e, this.f66338f), this.f66338f).i(this.f66339g).k(fE).l(iF).n(Math.min(this.f66342j, d(iF, fE))).r(this.f66343k);
            CharSequence charSequence = this.f66335c;
            if (charSequence != null) {
                c0703bR.o(charSequence);
            }
            return c0703bR;
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
        f66322c = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f66323d = Collections.unmodifiableMap(map2);
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, Set set, int i10, int i11) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Map map = f66322c;
            if (map.containsKey(str)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str)).intValue()), i10, i11, 33);
            } else {
                Map map2 = f66323d;
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
                s.i("WebvttCueParser", "ignoring unsupported entity: '&" + str + ";'");
                break;
        }
    }

    private static void c(SpannableStringBuilder spannableStringBuilder, String str, c cVar, List list, List list2) {
        int i10 = i(list2, str, cVar);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, b.f66324c);
        int i11 = cVar.f66328b;
        int length = 0;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            if ("rt".equals(((b) arrayList.get(i12)).f66325a.f66327a)) {
                b bVar = (b) arrayList.get(i12);
                int iG = g(i(list2, str, bVar.f66325a), i10, 1);
                int i13 = bVar.f66325a.f66328b - length;
                int i14 = bVar.f66326b - length;
                CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i13, i14);
                spannableStringBuilder.delete(i13, i14);
                spannableStringBuilder.setSpan(new ha.c(charSequenceSubSequence.toString(), iG), i11, i13, 33);
                length += charSequenceSubSequence.length();
                i11 = i13;
            }
        }
    }

    private static void d(String str, c cVar, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        int i10 = cVar.f66328b;
        int length = spannableStringBuilder.length();
        String str2 = cVar.f66327a;
        str2.hashCode();
        switch (str2) {
            case "":
            case "v":
            case "lang":
                break;
            case "b":
                spannableStringBuilder.setSpan(new StyleSpan(1), i10, length, 33);
                break;
            case "c":
                a(spannableStringBuilder, cVar.f66330d, i10, length);
                break;
            case "i":
                spannableStringBuilder.setSpan(new StyleSpan(2), i10, length, 33);
                break;
            case "u":
                spannableStringBuilder.setSpan(new UnderlineSpan(), i10, length, 33);
                break;
            case "ruby":
                c(spannableStringBuilder, str, cVar, list, list2);
                break;
            default:
                return;
        }
        List listH = h(list2, str, cVar);
        for (int i11 = 0; i11 < listH.size(); i11++) {
            e(spannableStringBuilder, ((d) listH.get(i11)).f66332b, i10, length);
        }
    }

    private static void e(SpannableStringBuilder spannableStringBuilder, ma.d dVar, int i10, int i11) {
        if (dVar == null) {
            return;
        }
        if (dVar.i() != -1) {
            ha.d.a(spannableStringBuilder, new StyleSpan(dVar.i()), i10, i11, 33);
        }
        if (dVar.l()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i10, i11, 33);
        }
        if (dVar.m()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i10, i11, 33);
        }
        if (dVar.k()) {
            ha.d.a(spannableStringBuilder, new ForegroundColorSpan(dVar.c()), i10, i11, 33);
        }
        if (dVar.j()) {
            ha.d.a(spannableStringBuilder, new BackgroundColorSpan(dVar.a()), i10, i11, 33);
        }
        if (dVar.d() != null) {
            ha.d.a(spannableStringBuilder, new TypefaceSpan(dVar.d()), i10, i11, 33);
        }
        int iF = dVar.f();
        if (iF == 1) {
            ha.d.a(spannableStringBuilder, new AbsoluteSizeSpan((int) dVar.e(), true), i10, i11, 33);
        } else if (iF == 2) {
            ha.d.a(spannableStringBuilder, new RelativeSizeSpan(dVar.e()), i10, i11, 33);
        } else if (iF == 3) {
            ha.d.a(spannableStringBuilder, new RelativeSizeSpan(dVar.e() / 100.0f), i10, i11, 33);
        }
        if (dVar.b()) {
            spannableStringBuilder.setSpan(new ha.a(), i10, i11, 33);
        }
    }

    private static int f(String str, int i10) {
        int iIndexOf = str.indexOf(62, i10);
        return iIndexOf == -1 ? str.length() : iIndexOf + 1;
    }

    private static int g(int i10, int i11, int i12) {
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

    private static List h(List list, String str, c cVar) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            ma.d dVar = (ma.d) list.get(i10);
            int iH = dVar.h(str, cVar.f66327a, cVar.f66330d, cVar.f66329c);
            if (iH > 0) {
                arrayList.add(new d(iH, dVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static int i(List list, String str, c cVar) {
        List listH = h(list, str, cVar);
        for (int i10 = 0; i10 < listH.size(); i10++) {
            ma.d dVar = ((d) listH.get(i10)).f66332b;
            if (dVar.g() != -1) {
                return dVar.g();
            }
        }
        return -1;
    }

    private static String j(String str) {
        String strTrim = str.trim();
        com.google.android.exoplayer2.util.a.a(!strTrim.isEmpty());
        return p0.T0(strTrim, "[ \\.]")[0];
    }

    private static boolean k(String str) {
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

    static da.b l(CharSequence charSequence) {
        e eVar = new e();
        eVar.f66335c = charSequence;
        return eVar.g().a();
    }

    public static ma.e m(d0 d0Var, List list) {
        String strP = d0Var.p();
        if (strP == null) {
            return null;
        }
        Pattern pattern = f66320a;
        Matcher matcher = pattern.matcher(strP);
        if (matcher.matches()) {
            return n(null, matcher, d0Var, list);
        }
        String strP2 = d0Var.p();
        if (strP2 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(strP2);
        if (matcher2.matches()) {
            return n(strP.trim(), matcher2, d0Var, list);
        }
        return null;
    }

    private static ma.e n(String str, Matcher matcher, d0 d0Var, List list) {
        e eVar = new e();
        try {
            eVar.f66333a = i.d((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
            eVar.f66334b = i.d((String) com.google.android.exoplayer2.util.a.e(matcher.group(2)));
            p((String) com.google.android.exoplayer2.util.a.e(matcher.group(3)), eVar);
            StringBuilder sb2 = new StringBuilder();
            String strP = d0Var.p();
            while (!TextUtils.isEmpty(strP)) {
                if (sb2.length() > 0) {
                    sb2.append("\n");
                }
                sb2.append(strP.trim());
                strP = d0Var.p();
            }
            eVar.f66335c = q(str, sb2.toString(), list);
            return eVar.a();
        } catch (NumberFormatException unused) {
            s.i("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    static da.b.C0703b o(String str) {
        e eVar = new e();
        p(str, eVar);
        return eVar.g();
    }

    private static void p(String str, e eVar) {
        Matcher matcher = f66321b.matcher(str);
        while (matcher.find()) {
            String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(1));
            String str3 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    s(str3, eVar);
                } else if ("align".equals(str2)) {
                    eVar.f66336d = v(str3);
                } else if (RequestParameters.POSITION.equals(str2)) {
                    u(str3, eVar);
                } else if ("size".equals(str2)) {
                    eVar.f66342j = i.c(str3);
                } else if ("vertical".equals(str2)) {
                    eVar.f66343k = w(str3);
                } else {
                    s.i("WebvttCueParser", "Unknown cue setting " + str2 + ":" + str3);
                }
            } catch (NumberFormatException unused) {
                s.i("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    static SpannedString q(String str, String str2, List list) {
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
                int iF = i10 + 1;
                if (iF < str2.length()) {
                    boolean z10 = str2.charAt(iF) == '/';
                    iF = f(str2, iF);
                    int i11 = iF - 2;
                    boolean z11 = str2.charAt(i11) == '/';
                    int i12 = i10 + (z10 ? 2 : 1);
                    if (!z11) {
                        i11 = iF - 1;
                    }
                    String strSubstring = str2.substring(i12, i11);
                    if (!strSubstring.trim().isEmpty()) {
                        String strJ = j(strSubstring);
                        if (k(strJ)) {
                            if (z10) {
                                while (!arrayDeque.isEmpty()) {
                                    c cVar = (c) arrayDeque.pop();
                                    d(str, cVar, arrayList, spannableStringBuilder, list);
                                    if (arrayDeque.isEmpty()) {
                                        arrayList.clear();
                                    } else {
                                        arrayList.add(new b(cVar, spannableStringBuilder.length()));
                                    }
                                    if (cVar.f66327a.equals(strJ)) {
                                        break;
                                    }
                                }
                            } else if (!z11) {
                                arrayDeque.push(c.a(strSubstring, spannableStringBuilder.length()));
                            }
                        }
                    }
                }
                i10 = iF;
            }
        }
        while (!arrayDeque.isEmpty()) {
            d(str, (c) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        d(str, c.b(), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    private static int r(String str) {
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
                s.i("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static void s(String str, e eVar) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            eVar.f66339g = r(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        if (str.endsWith("%")) {
            eVar.f66337e = i.c(str);
            eVar.f66338f = 0;
        } else {
            eVar.f66337e = Integer.parseInt(str);
            eVar.f66338f = 1;
        }
    }

    private static int t(String str) {
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
                s.i("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static void u(String str, e eVar) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            eVar.f66341i = t(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        eVar.f66340h = i.c(str);
    }

    private static int v(String str) {
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
                s.i("WebvttCueParser", "Invalid alignment value: " + str);
                return 2;
        }
    }

    private static int w(String str) {
        str.hashCode();
        if (str.equals("lr")) {
            return 2;
        }
        if (str.equals("rl")) {
            return 1;
        }
        s.i("WebvttCueParser", "Invalid 'vertical' value: " + str);
        return Integer.MIN_VALUE;
    }
}
