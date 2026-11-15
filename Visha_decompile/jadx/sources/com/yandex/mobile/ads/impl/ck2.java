package com.yandex.mobile.ads.impl;

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
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.media.PlayAudioData;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ck2 {
    public static final Pattern a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");
    private static final Pattern b = Pattern.compile("(\\S+?):(\\S+)");
    private static final Map<String, Integer> c;
    private static final Map<String, Integer> d;

    public static class a {
        private static final Comparator<a> c = new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return ck2.a.a((ck2.a) obj, (ck2.a) obj2);
            }
        };
        private final b a;
        private final int b;

        public static int a(a aVar, a aVar2) {
            return Integer.compare(aVar.a.b, aVar2.a.b);
        }

        private a(b bVar, int i) {
            this.a = bVar;
            this.b = i;
        }
    }

    public static final class b {
        public final String a;
        public final int b;
        public final String c;
        public final Set<String> d;

        private b(String str, int i, String str2, Set<String> set) {
            this.b = i;
            this.a = str;
            this.c = str2;
            this.d = set;
        }
    }

    public static final class c implements Comparable<c> {
        public final int b;
        public final ak2 c;

        public c(int i, ak2 ak2Var) {
            this.b = i;
            this.c = ak2Var;
        }

        @Override
        public final int compareTo(c cVar) {
            return Integer.compare(this.b, cVar.b);
        }
    }

    public static final class d {
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

        /* JADX WARN: Code duplicated, block: B:20:0x0032  */
        /* JADX WARN: Code duplicated, block: B:21:0x0034  */
        /* JADX WARN: Code duplicated, block: B:29:0x004f  */
        /* JADX WARN: Code duplicated, block: B:31:0x0055  */
        /* JADX WARN: Code duplicated, block: B:43:0x0074  */
        public final hv.a a() {
            Layout.Alignment alignment;
            float f = this.h;
            float f2 = -3.4028235E38f;
            if (f == -3.4028235E38f) {
                int i = this.d;
                if (i != 4) {
                    f = i != 5 ? 0.5f : 1.0f;
                } else {
                    f = 0.0f;
                }
            }
            int i2 = this.i;
            if (i2 == Integer.MIN_VALUE) {
                int i3 = this.d;
                if (i3 == 1) {
                    i2 = 0;
                } else if (i3 == 3) {
                    i2 = 2;
                } else if (i3 == 4) {
                    i2 = 0;
                } else if (i3 != 5) {
                    i2 = 1;
                } else {
                    i2 = 2;
                }
            }
            hv.a aVar = new hv.a();
            int i4 = this.d;
            if (i4 == 1) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else if (i4 == 2) {
                alignment = Layout.Alignment.ALIGN_CENTER;
            } else if (i4 == 3) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else if (i4 == 4) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else if (i4 != 5) {
                xr0.a("Unknown textAlignment: ", i4, "WebvttCueParser");
                alignment = null;
            } else {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            }
            hv.a aVarB = aVar.b(alignment);
            float f3 = this.e;
            int i5 = this.f;
            if (f3 != -3.4028235E38f && i5 == 0 && (f3 < 0.0f || f3 > 1.0f)) {
                f2 = 1.0f;
            } else if (f3 != -3.4028235E38f) {
                f2 = f3;
            } else if (i5 == 0) {
                f2 = 1.0f;
            }
            hv.a aVarB2 = aVarB.a(i5, f2).a(this.g).b(f).b(i2);
            float f4 = this.j;
            if (i2 == 0) {
                f = 1.0f - f;
            } else if (i2 == 1) {
                f = f <= 0.5f ? f * 2.0f : (1.0f - f) * 2.0f;
            } else if (i2 != 2) {
                throw new IllegalStateException(String.valueOf(i2));
            }
            hv.a aVarC = aVarB2.d(Math.min(f4, f)).c(this.k);
            CharSequence charSequence = this.c;
            if (charSequence != null) {
                aVarC.a(charSequence);
            }
            return aVarC;
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

    private static void a(SpannableStringBuilder spannableStringBuilder, b bVar, @Nullable String str, List list, List list2) {
        int i;
        int i2;
        ArrayList arrayList;
        int i3;
        List list3 = list2;
        int i4 = bVar.b;
        int length = spannableStringBuilder.length();
        String str2 = bVar.a;
        str2.getClass();
        int i5 = 1;
        switch (str2) {
            case "":
            case "v":
            case "lang":
                break;
            case "b":
                spannableStringBuilder.setSpan(new StyleSpan(1), i4, length, 33);
                break;
            case "c":
                for (String str3 : bVar.d) {
                    Map<String, Integer> map = c;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(map.get(str3).intValue()), i4, length, 33);
                    } else {
                        Map<String, Integer> map2 = d;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(map2.get(str3).intValue()), i4, length, 33);
                        }
                    }
                }
                break;
            case "i":
                spannableStringBuilder.setSpan(new StyleSpan(2), i4, length, 33);
                break;
            case "u":
                spannableStringBuilder.setSpan(new UnderlineSpan(), i4, length, 33);
                break;
            case "ruby":
                ArrayList arrayList2 = new ArrayList();
                for (int i6 = 0; i6 < list2.size(); i6++) {
                    ak2 ak2Var = (ak2) list3.get(i6);
                    int iA = ak2Var.a(str, bVar.a, bVar.d, bVar.c);
                    if (iA > 0) {
                        arrayList2.add(new c(iA, ak2Var));
                    }
                }
                Collections.sort(arrayList2);
                for (int i7 = 0; i7 < arrayList2.size() && ((c) arrayList2.get(i7)).c.g() == -1; i7++) {
                }
                ArrayList arrayList3 = new ArrayList(list.size());
                arrayList3.addAll(list);
                Collections.sort(arrayList3, a.c);
                int i8 = bVar.b;
                int i9 = 0;
                int length2 = 0;
                while (i9 < arrayList3.size()) {
                    if ("rt".equals(((a) arrayList3.get(i9)).a.a)) {
                        a aVar = (a) arrayList3.get(i9);
                        b bVar2 = aVar.a;
                        ArrayList arrayList4 = new ArrayList();
                        int i10 = 0;
                        while (i10 < list2.size()) {
                            ak2 ak2Var2 = (ak2) list3.get(i10);
                            ArrayList arrayList5 = arrayList3;
                            int iA2 = ak2Var2.a(str, bVar2.a, bVar2.d, bVar2.c);
                            if (iA2 > 0) {
                                arrayList4.add(new c(iA2, ak2Var2));
                            }
                            i10++;
                            arrayList3 = arrayList5;
                            list3 = list2;
                        }
                        arrayList = arrayList3;
                        Collections.sort(arrayList4);
                        for (int i11 = 0; i11 < arrayList4.size(); i11++) {
                            ak2 ak2Var3 = ((c) arrayList4.get(i11)).c;
                            if (ak2Var3.g() != -1) {
                                ak2Var3.g();
                                int i12 = aVar.a.b - length2;
                                int i13 = aVar.b - length2;
                                CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i12, i13);
                                spannableStringBuilder.delete(i12, i13);
                                charSequenceSubSequence.toString();
                                spannableStringBuilder.setSpan(new zs1(), i8, i12, 33);
                                length2 += charSequenceSubSequence.length();
                                i8 = i12;
                                i3 = 1;
                            }
                        }
                        int i14 = aVar.a.b - length2;
                        int i15 = aVar.b - length2;
                        CharSequence charSequenceSubSequence2 = spannableStringBuilder.subSequence(i14, i15);
                        spannableStringBuilder.delete(i14, i15);
                        charSequenceSubSequence2.toString();
                        spannableStringBuilder.setSpan(new zs1(), i8, i14, 33);
                        length2 += charSequenceSubSequence2.length();
                        i8 = i14;
                        i3 = 1;
                    } else {
                        arrayList = arrayList3;
                        i3 = i5;
                    }
                    i9 += i3;
                    i5 = i3;
                    arrayList3 = arrayList;
                    list3 = list2;
                }
                break;
            default:
                return;
        }
        ArrayList arrayList6 = new ArrayList();
        for (int i16 = 0; i16 < list2.size(); i16++) {
            ak2 ak2Var4 = (ak2) list2.get(i16);
            int iA3 = ak2Var4.a(str, bVar.a, bVar.d, bVar.c);
            if (iA3 > 0) {
                arrayList6.add(new c(iA3, ak2Var4));
            }
        }
        Collections.sort(arrayList6);
        for (int i17 = 0; i17 < arrayList6.size(); i17 += i2) {
            ak2 ak2Var5 = ((c) arrayList6.get(i17)).c;
            if (ak2Var5 == null) {
                i2 = 1;
            } else {
                if (ak2Var5.h() != -1) {
                    o12.a(spannableStringBuilder, new StyleSpan(ak2Var5.h()), i4, length);
                }
                if (ak2Var5.k()) {
                    i = 33;
                    spannableStringBuilder.setSpan(new StrikethroughSpan(), i4, length, 33);
                } else {
                    i = 33;
                }
                if (ak2Var5.l()) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i4, length, i);
                }
                if (ak2Var5.j()) {
                    o12.a(spannableStringBuilder, new ForegroundColorSpan(ak2Var5.c()), i4, length);
                }
                if (ak2Var5.i()) {
                    o12.a(spannableStringBuilder, new BackgroundColorSpan(ak2Var5.a()), i4, length);
                }
                if (ak2Var5.d() != null) {
                    o12.a(spannableStringBuilder, new TypefaceSpan(ak2Var5.d()), i4, length);
                }
                int iF = ak2Var5.f();
                if (iF != 1) {
                    if (iF == 2) {
                        o12.a(spannableStringBuilder, new RelativeSizeSpan(ak2Var5.e()), i4, length);
                    } else if (iF == 3) {
                        o12.a(spannableStringBuilder, new RelativeSizeSpan(ak2Var5.e() / 100.0f), i4, length);
                    }
                    i2 = 1;
                } else {
                    i2 = 1;
                    o12.a(spannableStringBuilder, new AbsoluteSizeSpan((int) ak2Var5.e(), true), i4, length);
                }
                if (ak2Var5.b()) {
                    spannableStringBuilder.setSpan(new yf0(), i4, length, 33);
                }
            }
        }
    }

    private static void b(String str, d dVar) {
        int i = 2;
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            String strSubstring = str.substring(iIndexOf + 1);
            strSubstring.getClass();
            switch (strSubstring) {
                case "center":
                case "middle":
                    i = 1;
                    break;
                case "end":
                    break;
                case "start":
                    i = 0;
                    break;
                default:
                    et0.d("WebvttCueParser", "Invalid anchor value: ".concat(strSubstring));
                    i = Integer.MIN_VALUE;
                    break;
            }
            dVar.g = i;
            str = str.substring(0, iIndexOf);
        }
        if (!str.endsWith("%")) {
            dVar.e = Integer.parseInt(str);
            dVar.f = 1;
            return;
        }
        int i2 = ek2.a;
        if (!str.endsWith("%")) {
            throw new NumberFormatException("Percentages must end with %");
        }
        dVar.e = Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        dVar.f = 0;
    }

    @Nullable
    public static bk2 a(ag1 ag1Var, ArrayList arrayList) {
        String strJ = ag1Var.j();
        if (strJ == null) {
            return null;
        }
        Pattern pattern = a;
        Matcher matcher = pattern.matcher(strJ);
        if (matcher.matches()) {
            return a(null, matcher, ag1Var, arrayList);
        }
        String strJ2 = ag1Var.j();
        if (strJ2 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(strJ2);
        if (matcher2.matches()) {
            return a(strJ.trim(), matcher2, ag1Var, arrayList);
        }
        return null;
    }

    @Nullable
    private static bk2 a(@Nullable String str, Matcher matcher, ag1 ag1Var, ArrayList arrayList) {
        d dVar = new d();
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            dVar.a = ek2.a(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            dVar.b = ek2.a(strGroup2);
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            a(strGroup3, dVar);
            StringBuilder sb = new StringBuilder();
            String strJ = ag1Var.j();
            while (!TextUtils.isEmpty(strJ)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(strJ.trim());
                strJ = ag1Var.j();
            }
            dVar.c = a(str, sb.toString(), arrayList);
            return new bk2(dVar.a().a(), dVar.a, dVar.b);
        } catch (NumberFormatException unused) {
            et0.d("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    public static hv.a a(String str) {
        d dVar = new d();
        a(str, dVar);
        return dVar.a();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:38:0x009a  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static SpannedString a(@Nullable String str, String str2, List<ak2> list) {
        int i;
        String str3;
        int i2;
        int i3 = -1;
        int i4 = 2;
        int i5 = 1;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i6 = 0;
        int i7 = 0;
        while (i7 < str2.length()) {
            char cCharAt = str2.charAt(i7);
            if (cCharAt == '&') {
                i7 += i5;
                int iIndexOf = str2.indexOf(59, i7);
                int iIndexOf2 = str2.indexOf(32, i7);
                if (iIndexOf == -1) {
                    iIndexOf = iIndexOf2;
                } else if (iIndexOf2 != -1) {
                    iIndexOf = Math.min(iIndexOf, iIndexOf2);
                }
                if (iIndexOf != -1) {
                    String strSubstring = str2.substring(i7, iIndexOf);
                    strSubstring.getClass();
                    switch (strSubstring) {
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
                            et0.d("WebvttCueParser", "ignoring unsupported entity: '&" + strSubstring + ";'");
                            break;
                    }
                    if (iIndexOf == iIndexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i2 = 1;
                    i7 = iIndexOf + 1;
                } else {
                    i2 = 1;
                    spannableStringBuilder.append(cCharAt);
                }
                i3 = -1;
                i4 = 2;
                i6 = 0;
                i5 = i2;
            } else if (cCharAt != '<') {
                spannableStringBuilder.append(cCharAt);
                i7 += i5;
            } else {
                int length = i7 + 1;
                if (length < str2.length()) {
                    int i8 = str2.charAt(length) == '/' ? i5 : i6;
                    int iIndexOf3 = str2.indexOf(62, length);
                    length = iIndexOf3 == i3 ? str2.length() : iIndexOf3 + i5;
                    int i9 = length - 2;
                    int i10 = str2.charAt(i9) == '/' ? i5 : i6;
                    int i11 = i7 + (i8 != 0 ? i4 : i5);
                    if (i10 == 0) {
                        i9 = length - 1;
                    }
                    String strSubstring2 = str2.substring(i11, i9);
                    if (!strSubstring2.trim().isEmpty()) {
                        String strTrim = strSubstring2.trim();
                        if (!strTrim.isEmpty()) {
                            int i12 = f92.a;
                            String str4 = strTrim.split("[ \\.]", i4)[i6];
                            str4.getClass();
                            switch (str4.hashCode()) {
                                case 98:
                                    if (str4.equals("b")) {
                                        i = i6;
                                    } else {
                                        i = -1;
                                    }
                                    break;
                                case 99:
                                    if (str4.equals("c")) {
                                        i = i5;
                                    } else {
                                        i = -1;
                                    }
                                    break;
                                case 105:
                                    if (str4.equals(CmcdData.OBJECT_TYPE_INIT_SEGMENT)) {
                                        i = i4;
                                    } else {
                                        i = -1;
                                    }
                                    break;
                                case 117:
                                    if (str4.equals("u")) {
                                        i = 3;
                                    } else {
                                        i = -1;
                                    }
                                    break;
                                case 118:
                                    if (str4.equals("v")) {
                                        i = 4;
                                    } else {
                                        i = -1;
                                    }
                                    break;
                                case 3650:
                                    if (str4.equals("rt")) {
                                        i = 5;
                                    } else {
                                        i = -1;
                                    }
                                    break;
                                case 3314158:
                                    if (str4.equals("lang")) {
                                        i = 6;
                                    } else {
                                        i = -1;
                                    }
                                    break;
                                case 3511770:
                                    if (str4.equals(TtmlNode.ATTR_TTS_RUBY)) {
                                        i = 7;
                                    } else {
                                        i = -1;
                                    }
                                    break;
                                default:
                                    i = -1;
                                    break;
                            }
                            switch (i) {
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                    if (i8 == 0) {
                                        if (i10 == 0) {
                                            int length2 = spannableStringBuilder.length();
                                            String strTrim2 = strSubstring2.trim();
                                            if (!strTrim2.isEmpty()) {
                                                int iIndexOf4 = strTrim2.indexOf(" ");
                                                if (iIndexOf4 == -1) {
                                                    str3 = "";
                                                } else {
                                                    String strTrim3 = strTrim2.substring(iIndexOf4).trim();
                                                    strTrim2 = strTrim2.substring(i6, iIndexOf4);
                                                    str3 = strTrim3;
                                                }
                                                String[] strArrSplit = strTrim2.split("\\.", -1);
                                                String str5 = strArrSplit[i6];
                                                HashSet hashSet = new HashSet();
                                                for (int i13 = i5; i13 < strArrSplit.length; i13 += i5) {
                                                    hashSet.add(strArrSplit[i13]);
                                                }
                                                arrayDeque.push(new b(str5, length2, str3, hashSet));
                                            } else {
                                                throw new IllegalArgumentException();
                                            }
                                        }
                                        break;
                                    } else {
                                        while (!arrayDeque.isEmpty()) {
                                            b bVar = (b) arrayDeque.pop();
                                            a(spannableStringBuilder, bVar, str, arrayList, list);
                                            if (!arrayDeque.isEmpty()) {
                                                arrayList.add(new a(bVar, spannableStringBuilder.length()));
                                            } else {
                                                arrayList.clear();
                                            }
                                            if (bVar.a.equals(str4)) {
                                                break;
                                            }
                                        }
                                        break;
                                    }
                                default:
                                    i7 = length;
                                    i3 = -1;
                                    break;
                            }
                        } else {
                            throw new IllegalArgumentException();
                        }
                    }
                }
                i7 = length;
                i3 = -1;
            }
        }
        while (!arrayDeque.isEmpty()) {
            a(spannableStringBuilder, (b) arrayDeque.pop(), str, arrayList, list);
        }
        a(spannableStringBuilder, new b("", 0, "", Collections.emptySet()), str, Collections.emptyList(), list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:78:0x00fc  */
    private static void a(String str, d dVar) {
        int i;
        int i2;
        int i3;
        Matcher matcher = b.matcher(str);
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            try {
                if ("line".equals(strGroup)) {
                    b(strGroup2, dVar);
                } else if ("align".equals(strGroup)) {
                    switch (strGroup2) {
                        case "center":
                        case "middle":
                            i = 2;
                            break;
                        case "end":
                            i = 3;
                            break;
                        case "left":
                            i = 4;
                            break;
                        case "right":
                            i = 5;
                            break;
                        case "start":
                            i = 1;
                            break;
                        default:
                            et0.d("WebvttCueParser", "Invalid alignment value: ".concat(strGroup2));
                            i = 2;
                            break;
                    }
                    dVar.d = i;
                } else {
                    if ("position".equals(strGroup)) {
                        int iIndexOf = strGroup2.indexOf(44);
                        if (iIndexOf != r9) {
                            String strSubstring = strGroup2.substring(iIndexOf + 1);
                            strSubstring.getClass();
                            switch (strSubstring) {
                                case "line-left":
                                case "start":
                                    i3 = 0;
                                    break;
                                case "center":
                                case "middle":
                                    i3 = 1;
                                    break;
                                case "line-right":
                                case "end":
                                    i3 = 2;
                                    break;
                                default:
                                    et0.d("WebvttCueParser", "Invalid anchor value: ".concat(strSubstring));
                                    i3 = Integer.MIN_VALUE;
                                    break;
                            }
                            dVar.i = i3;
                            strGroup2 = strGroup2.substring(0, iIndexOf);
                        }
                        int i4 = ek2.a;
                        if (strGroup2.endsWith("%")) {
                            dVar.h = Float.parseFloat(strGroup2.substring(0, strGroup2.length() - 1)) / 100.0f;
                        } else {
                            throw new NumberFormatException("Percentages must end with %");
                        }
                    } else if (PlayAudioData.TAG_SIZE.equals(strGroup)) {
                        int i5 = ek2.a;
                        if (strGroup2.endsWith("%")) {
                            dVar.j = Float.parseFloat(strGroup2.substring(0, strGroup2.length() - 1)) / 100.0f;
                        } else {
                            throw new NumberFormatException("Percentages must end with %");
                        }
                    } else if ("vertical".equals(strGroup)) {
                        if (strGroup2.equals("lr")) {
                            i2 = 2;
                        } else if (strGroup2.equals("rl")) {
                            i2 = 1;
                        } else {
                            et0.d("WebvttCueParser", "Invalid 'vertical' value: ".concat(strGroup2));
                            i2 = Integer.MIN_VALUE;
                        }
                        dVar.k = i2;
                    } else {
                        et0.d("WebvttCueParser", "Unknown cue setting " + strGroup + StringUtils.PROCESS_POSTFIX_DELIMITER + strGroup2);
                    }
                }
            } catch (NumberFormatException unused) {
                et0.d("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }
}
