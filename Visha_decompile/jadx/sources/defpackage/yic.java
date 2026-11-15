package defpackage;

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
import com.transsion.dbdata.beans.media.PlayAudioData;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
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

public abstract class yic {
    public static final Pattern a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");
    public static final Pattern b = Pattern.compile("(\\S+?):(\\S+)");
    public static final Map c;
    public static final Map d;

    public static class b {
        public static final Comparator c = new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return yic.b.e((yic.b) obj, (yic.b) obj2);
            }
        };
        public final c a;
        public final int b;

        public static int e(b bVar, b bVar2) {
            return Integer.compare(bVar.a.b, bVar2.a.b);
        }

        public b(c cVar, int i) {
            this.a = cVar;
            this.b = i;
        }
    }

    public static final class c {
        public final String a;
        public final int b;
        public final String c;
        public final Set d;

        public c(String str, int i, String str2, Set set) {
            this.b = i;
            this.a = str;
            this.c = str2;
            this.d = set;
        }

        public static c a(String str, int i) {
            String str2;
            String strTrim = str.trim();
            zi.a(!strTrim.isEmpty());
            int iIndexOf = strTrim.indexOf(" ");
            if (iIndexOf == -1) {
                str2 = "";
            } else {
                String strTrim2 = strTrim.substring(iIndexOf).trim();
                strTrim = strTrim.substring(0, iIndexOf);
                str2 = strTrim2;
            }
            String[] strArrF0 = blb.F0(strTrim, "\\.");
            String str3 = strArrF0[0];
            HashSet hashSet = new HashSet();
            for (int i2 = 1; i2 < strArrF0.length; i2++) {
                hashSet.add(strArrF0[i2]);
            }
            return new c(str3, i, str2, hashSet);
        }

        public static c b() {
            return new c("", 0, "", Collections.emptySet());
        }
    }

    public static final class d implements Comparable {
        public final int b;
        public final wic c;

        public d(int i, wic wicVar) {
            this.b = i;
            this.c = wicVar;
        }

        @Override
        public int compareTo(d dVar) {
            return Integer.compare(this.b, dVar.b);
        }
    }

    public static final class e {
        public CharSequence c;
        public long a = 0;
        public long b = 0;
        public int d = 2;
        public float e = -3.4028235E38f;
        public int f = 1;
        public int g = 0;
        public float h = -3.4028235E38f;
        public int i = Integer.MIN_VALUE;
        public float j = 1.0f;
        public int k = Integer.MIN_VALUE;

        public static float b(float f, int i) {
            if (f != -3.4028235E38f && i == 0 && (f < 0.0f || f > 1.0f)) {
                return 1.0f;
            }
            if (f != -3.4028235E38f) {
                return f;
            }
            return i == 0 ? 1.0f : -3.4028235E38f;
        }

        public static Layout.Alignment c(int i) {
            if (i != 1) {
                if (i == 2) {
                    return Layout.Alignment.ALIGN_CENTER;
                }
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            op5.i("WebvttCueParser", "Unknown textAlignment: " + i);
                            return null;
                        }
                    }
                }
                return Layout.Alignment.ALIGN_OPPOSITE;
            }
            return Layout.Alignment.ALIGN_NORMAL;
        }

        public static float d(int i, float f) {
            if (i == 0) {
                return 1.0f - f;
            }
            if (i == 1) {
                return f <= 0.5f ? f * 2.0f : (1.0f - f) * 2.0f;
            }
            if (i == 2) {
                return f;
            }
            throw new IllegalStateException(String.valueOf(i));
        }

        public static float e(int i) {
            if (i != 4) {
                return i != 5 ? 0.5f : 1.0f;
            }
            return 0.0f;
        }

        public static int f(int i) {
            if (i == 1) {
                return 0;
            }
            if (i == 3) {
                return 2;
            }
            if (i != 4) {
                return i != 5 ? 1 : 2;
            }
            return 0;
        }

        public xic a() {
            return new xic(g().a(), this.a, this.b);
        }

        public jm1.b g() {
            float fE = this.h;
            if (fE == -3.4028235E38f) {
                fE = e(this.d);
            }
            int iF = this.i;
            if (iF == Integer.MIN_VALUE) {
                iF = f(this.d);
            }
            jm1.b bVarR = new jm1.b().p(c(this.d)).h(b(this.e, this.f), this.f).i(this.g).k(fE).l(iF).n(Math.min(this.j, d(iF, fE))).r(this.k);
            CharSequence charSequence = this.c;
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
        c = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        d = Collections.unmodifiableMap(map2);
    }

    public static void a(SpannableStringBuilder spannableStringBuilder, Set set, int i, int i2) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Map map = c;
            if (map.containsKey(str)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str)).intValue()), i, i2, 33);
            } else {
                Map map2 = d;
                if (map2.containsKey(str)) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str)).intValue()), i, i2, 33);
                }
            }
        }
    }

    public static void b(String str, SpannableStringBuilder spannableStringBuilder) {
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
                op5.i("WebvttCueParser", "ignoring unsupported entity: '&" + str + ";'");
                break;
        }
    }

    public static void c(SpannableStringBuilder spannableStringBuilder, String str, c cVar, List list, List list2) {
        int i = i(list2, str, cVar);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, b.c);
        int i2 = cVar.b;
        int length = 0;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            if ("rt".equals(((b) arrayList.get(i3)).a.a)) {
                b bVar = (b) arrayList.get(i3);
                int iG = g(i(list2, str, bVar.a), i, 1);
                int i4 = bVar.a.b - length;
                int i5 = bVar.b - length;
                CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i4, i5);
                spannableStringBuilder.delete(i4, i5);
                spannableStringBuilder.setSpan(new rw8(charSequenceSubSequence.toString(), iG), i2, i4, 33);
                length += charSequenceSubSequence.length();
                i2 = i4;
            }
        }
    }

    public static void d(String str, c cVar, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        int i = cVar.b;
        int length = spannableStringBuilder.length();
        String str2 = cVar.a;
        str2.hashCode();
        switch (str2) {
            case "":
            case "v":
            case "lang":
                break;
            case "b":
                spannableStringBuilder.setSpan(new StyleSpan(1), i, length, 33);
                break;
            case "c":
                a(spannableStringBuilder, cVar.d, i, length);
                break;
            case "i":
                spannableStringBuilder.setSpan(new StyleSpan(2), i, length, 33);
                break;
            case "u":
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                break;
            case "ruby":
                c(spannableStringBuilder, str, cVar, list, list2);
                break;
            default:
                return;
        }
        List listH = h(list2, str, cVar);
        for (int i2 = 0; i2 < listH.size(); i2++) {
            e(spannableStringBuilder, ((d) listH.get(i2)).c, i, length);
        }
    }

    public static void e(SpannableStringBuilder spannableStringBuilder, wic wicVar, int i, int i2) {
        if (wicVar == null) {
            return;
        }
        if (wicVar.i() != -1) {
            hu9.a(spannableStringBuilder, new StyleSpan(wicVar.i()), i, i2, 33);
        }
        if (wicVar.l()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (wicVar.m()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (wicVar.k()) {
            hu9.a(spannableStringBuilder, new ForegroundColorSpan(wicVar.c()), i, i2, 33);
        }
        if (wicVar.j()) {
            hu9.a(spannableStringBuilder, new BackgroundColorSpan(wicVar.a()), i, i2, 33);
        }
        if (wicVar.d() != null) {
            hu9.a(spannableStringBuilder, new TypefaceSpan(wicVar.d()), i, i2, 33);
        }
        int iF = wicVar.f();
        if (iF == 1) {
            hu9.a(spannableStringBuilder, new AbsoluteSizeSpan((int) wicVar.e(), true), i, i2, 33);
        } else if (iF == 2) {
            hu9.a(spannableStringBuilder, new RelativeSizeSpan(wicVar.e()), i, i2, 33);
        } else if (iF == 3) {
            hu9.a(spannableStringBuilder, new RelativeSizeSpan(wicVar.e() / 100.0f), i, i2, 33);
        }
        if (wicVar.b()) {
            spannableStringBuilder.setSpan(new xr4(), i, i2, 33);
        }
    }

    public static int f(String str, int i) {
        int iIndexOf = str.indexOf(62, i);
        return iIndexOf == -1 ? str.length() : iIndexOf + 1;
    }

    public static int g(int i, int i2, int i3) {
        if (i != -1) {
            return i;
        }
        if (i2 != -1) {
            return i2;
        }
        if (i3 != -1) {
            return i3;
        }
        throw new IllegalArgumentException();
    }

    public static List h(List list, String str, c cVar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            wic wicVar = (wic) list.get(i);
            int iH = wicVar.h(str, cVar.a, cVar.d, cVar.c);
            if (iH > 0) {
                arrayList.add(new d(iH, wicVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static int i(List list, String str, c cVar) {
        List listH = h(list, str, cVar);
        for (int i = 0; i < listH.size(); i++) {
            wic wicVar = ((d) listH.get(i)).c;
            if (wicVar.g() != -1) {
                return wicVar.g();
            }
        }
        return -1;
    }

    public static String j(String str) {
        String strTrim = str.trim();
        zi.a(!strTrim.isEmpty());
        return blb.G0(strTrim, "[ \\.]")[0];
    }

    public static boolean k(String str) {
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

    public static jm1 l(CharSequence charSequence) {
        e eVar = new e();
        eVar.c = charSequence;
        return eVar.g().a();
    }

    public static xic m(qw7 qw7Var, List list) {
        String line = qw7Var.readLine();
        if (line == null) {
            return null;
        }
        Pattern pattern = a;
        Matcher matcher = pattern.matcher(line);
        if (matcher.matches()) {
            return n(null, matcher, qw7Var, list);
        }
        String line2 = qw7Var.readLine();
        if (line2 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(line2);
        if (matcher2.matches()) {
            return n(line.trim(), matcher2, qw7Var, list);
        }
        return null;
    }

    public static xic n(String str, Matcher matcher, qw7 qw7Var, List list) {
        e eVar = new e();
        try {
            eVar.a = bjc.c((String) zi.e(matcher.group(1)));
            eVar.b = bjc.c((String) zi.e(matcher.group(2)));
            p((String) zi.e(matcher.group(3)), eVar);
            StringBuilder sb = new StringBuilder();
            String line = qw7Var.readLine();
            while (!TextUtils.isEmpty(line)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(line.trim());
                line = qw7Var.readLine();
            }
            eVar.c = q(str, sb.toString(), list);
            return eVar.a();
        } catch (NumberFormatException unused) {
            op5.i("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    public static jm1.b o(String str) {
        e eVar = new e();
        p(str, eVar);
        return eVar.g();
    }

    public static void p(String str, e eVar) {
        Matcher matcher = b.matcher(str);
        while (matcher.find()) {
            String str2 = (String) zi.e(matcher.group(1));
            String str3 = (String) zi.e(matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    s(str3, eVar);
                } else if ("align".equals(str2)) {
                    eVar.d = v(str3);
                } else if ("position".equals(str2)) {
                    u(str3, eVar);
                } else if (PlayAudioData.TAG_SIZE.equals(str2)) {
                    eVar.j = bjc.b(str3);
                } else if ("vertical".equals(str2)) {
                    eVar.k = w(str3);
                } else {
                    op5.i("WebvttCueParser", "Unknown cue setting " + str2 + StringUtils.PROCESS_POSTFIX_DELIMITER + str3);
                }
            } catch (NumberFormatException unused) {
                op5.i("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    public static SpannedString q(String str, String str2, List list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < str2.length()) {
            char cCharAt = str2.charAt(i);
            if (cCharAt == '&') {
                i++;
                int iIndexOf = str2.indexOf(59, i);
                int iIndexOf2 = str2.indexOf(32, i);
                if (iIndexOf == -1) {
                    iIndexOf = iIndexOf2;
                } else if (iIndexOf2 != -1) {
                    iIndexOf = Math.min(iIndexOf, iIndexOf2);
                }
                if (iIndexOf != -1) {
                    b(str2.substring(i, iIndexOf), spannableStringBuilder);
                    if (iIndexOf == iIndexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i = iIndexOf + 1;
                } else {
                    spannableStringBuilder.append(cCharAt);
                }
            } else if (cCharAt != '<') {
                spannableStringBuilder.append(cCharAt);
                i++;
            } else {
                int iF = i + 1;
                if (iF < str2.length()) {
                    boolean z = str2.charAt(iF) == '/';
                    iF = f(str2, iF);
                    int i2 = iF - 2;
                    boolean z2 = str2.charAt(i2) == '/';
                    int i3 = i + (z ? 2 : 1);
                    if (!z2) {
                        i2 = iF - 1;
                    }
                    String strSubstring = str2.substring(i3, i2);
                    if (!strSubstring.trim().isEmpty()) {
                        String strJ = j(strSubstring);
                        if (k(strJ)) {
                            if (z) {
                                while (!arrayDeque.isEmpty()) {
                                    c cVar = (c) arrayDeque.pop();
                                    d(str, cVar, arrayList, spannableStringBuilder, list);
                                    if (arrayDeque.isEmpty()) {
                                        arrayList.clear();
                                    } else {
                                        arrayList.add(new b(cVar, spannableStringBuilder.length()));
                                    }
                                    if (cVar.a.equals(strJ)) {
                                        break;
                                    }
                                }
                            } else if (!z2) {
                                arrayDeque.push(c.a(strSubstring, spannableStringBuilder.length()));
                            }
                        }
                    }
                }
                i = iF;
            }
        }
        while (!arrayDeque.isEmpty()) {
            d(str, (c) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        d(str, c.b(), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    public static int r(String str) {
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
                op5.i("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    public static void s(String str, e eVar) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            eVar.g = r(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        if (str.endsWith("%")) {
            eVar.e = bjc.b(str);
            eVar.f = 0;
        } else {
            eVar.e = Integer.parseInt(str);
            eVar.f = 1;
        }
    }

    public static int t(String str) {
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
                op5.i("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    public static void u(String str, e eVar) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            eVar.i = t(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        eVar.h = bjc.b(str);
    }

    public static int v(String str) {
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
                op5.i("WebvttCueParser", "Invalid alignment value: " + str);
                return 2;
        }
    }

    public static int w(String str) {
        str.hashCode();
        if (str.equals("lr")) {
            return 2;
        }
        if (str.equals("rl")) {
            return 1;
        }
        op5.i("WebvttCueParser", "Invalid 'vertical' value: " + str);
        return Integer.MIN_VALUE;
    }
}
