package defpackage;

import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.media.PlayAudioData;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class wie {
    public static final Pattern a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");
    public static final Pattern b = Pattern.compile("(\\S+?):(\\S+)");
    public static final Map c;
    public static final Map d;

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

    /* JADX WARN: Code duplicated, block: B:122:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:77:0x0125  */
    public static SpannedString a(String str, String str2, List list) {
        int i;
        byte b2;
        int i2 = -1;
        int i3 = 1;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        int i5 = 0;
        while (i5 < str2.length()) {
            int i6 = i5 + 1;
            char cCharAt = str2.charAt(i5);
            int i7 = 2;
            if (cCharAt != '&') {
                if (cCharAt != '<') {
                    spannableStringBuilder.append(cCharAt);
                } else {
                    if (i6 < str2.length()) {
                        char cCharAt2 = str2.charAt(i6);
                        int iIndexOf = str2.indexOf(62, i6);
                        int length = iIndexOf == i2 ? str2.length() : iIndexOf + i3;
                        int i8 = length - 2;
                        int i9 = str2.charAt(i8) == '/' ? i3 : i4;
                        int i10 = i5 + (cCharAt2 == '/' ? 2 : i3);
                        if (i9 == 0) {
                            i8 = length - 1;
                        }
                        String strSubstring = str2.substring(i10, i8);
                        if (!strSubstring.trim().isEmpty()) {
                            String strTrim = strSubstring.trim();
                            n7g.d(!strTrim.isEmpty());
                            int i11 = kfh.a;
                            String str3 = strTrim.split("[ \\.]", 2)[i4];
                            int iHashCode = str3.hashCode();
                            if (iHashCode != 98) {
                                if (iHashCode != 99) {
                                    if (iHashCode != 105) {
                                        if (iHashCode != 3650) {
                                            if (iHashCode != 3314158) {
                                                if (iHashCode != 3511770) {
                                                    if (iHashCode != 117) {
                                                        if (iHashCode == 118 && str3.equals("v")) {
                                                            i7 = 7;
                                                        } else {
                                                            i7 = i2;
                                                        }
                                                    } else if (str3.equals("u")) {
                                                        i7 = 6;
                                                    } else {
                                                        i7 = i2;
                                                    }
                                                } else if (str3.equals(TtmlNode.ATTR_TTS_RUBY)) {
                                                    i7 = 4;
                                                } else {
                                                    i7 = i2;
                                                }
                                            } else if (str3.equals("lang")) {
                                                i7 = 3;
                                            } else {
                                                i7 = i2;
                                            }
                                        } else if (str3.equals("rt")) {
                                            i7 = 5;
                                        } else {
                                            i7 = i2;
                                        }
                                    } else if (!str3.equals(CmcdData.OBJECT_TYPE_INIT_SEGMENT)) {
                                        i7 = i2;
                                    }
                                } else if (str3.equals("c")) {
                                    i7 = 1;
                                } else {
                                    i7 = i2;
                                }
                            } else if (str3.equals("b")) {
                                i7 = 0;
                            } else {
                                i7 = i2;
                            }
                            switch (i7) {
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                    if (cCharAt2 == '/') {
                                        while (!arrayDeque.isEmpty()) {
                                            sie sieVar = (sie) arrayDeque.pop();
                                            g(str, sieVar, arrayList, spannableStringBuilder, list);
                                            if (arrayDeque.isEmpty()) {
                                                arrayList.clear();
                                            } else {
                                                arrayList.add(new rie(sieVar, spannableStringBuilder.length(), null));
                                            }
                                            if (sieVar.a.equals(str3)) {
                                                break;
                                            }
                                        }
                                    } else if (i9 == 0) {
                                        arrayDeque.push(sie.a(strSubstring, spannableStringBuilder.length()));
                                    }
                                    break;
                            }
                        }
                        i5 = length;
                        i3 = 1;
                    }
                    i4 = 0;
                }
                i = i3;
            } else {
                int iIndexOf2 = str2.indexOf(59, i6);
                int iIndexOf3 = str2.indexOf(32, i6);
                if (iIndexOf2 == i2) {
                    iIndexOf2 = iIndexOf3;
                } else if (iIndexOf3 != i2) {
                    iIndexOf2 = Math.min(iIndexOf2, iIndexOf3);
                }
                if (iIndexOf2 != i2) {
                    String strSubstring2 = str2.substring(i6, iIndexOf2);
                    int iHashCode2 = strSubstring2.hashCode();
                    if (iHashCode2 != 3309) {
                        if (iHashCode2 != 3464) {
                            if (iHashCode2 != 96708) {
                                if (iHashCode2 == 3374865 && strSubstring2.equals("nbsp")) {
                                    b2 = 2;
                                } else {
                                    b2 = -1;
                                }
                            } else if (strSubstring2.equals("amp")) {
                                b2 = 3;
                            } else {
                                b2 = -1;
                            }
                        } else if (strSubstring2.equals("lt")) {
                            b2 = 0;
                        } else {
                            b2 = -1;
                        }
                    } else if (strSubstring2.equals("gt")) {
                        b2 = 1;
                    } else {
                        b2 = -1;
                    }
                    if (b2 == 0) {
                        spannableStringBuilder.append('<');
                    } else if (b2 == 1) {
                        spannableStringBuilder.append('>');
                    } else if (b2 == 2) {
                        spannableStringBuilder.append(' ');
                    } else if (b2 != 3) {
                        zrg.f("WebvttCueParser", "ignoring unsupported entity: '&" + strSubstring2 + ";'");
                    } else {
                        spannableStringBuilder.append('&');
                    }
                    if (iIndexOf2 == iIndexOf3) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i5 = iIndexOf2 + 1;
                    i3 = 1;
                } else {
                    i = 1;
                    spannableStringBuilder.append(cCharAt);
                }
                i2 = -1;
                i4 = 0;
            }
            i3 = i;
            i5 = i6;
            i2 = -1;
            i4 = 0;
        }
        while (!arrayDeque.isEmpty()) {
            g(str, (sie) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        g(str, sie.b(), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    public static zvf b(String str) {
        uie uieVar = new uie();
        h(str, uieVar);
        return uieVar.a();
    }

    public static qie c(u4h u4hVar, List list) {
        Charset charset = StandardCharsets.UTF_8;
        String strT = u4hVar.T(charset);
        if (strT != null) {
            Pattern pattern = a;
            Matcher matcher = pattern.matcher(strT);
            if (matcher.matches()) {
                return e(null, matcher, u4hVar, list);
            }
            String strT2 = u4hVar.T(charset);
            if (strT2 != null) {
                Matcher matcher2 = pattern.matcher(strT2);
                if (matcher2.matches()) {
                    return e(strT.trim(), matcher2, u4hVar, list);
                }
            }
        }
        return null;
    }

    public static int d(List list, String str, sie sieVar) {
        List listF = f(list, str, sieVar);
        for (int i = 0; i < listF.size(); i++) {
            pie pieVar = ((tie) listF.get(i)).c;
            if (pieVar.f() != -1) {
                return pieVar.f();
            }
        }
        return -1;
    }

    public static qie e(String str, Matcher matcher, u4h u4hVar, List list) {
        uie uieVar = new uie();
        try {
            String strGroup = matcher.group(1);
            if (strGroup == null) {
                throw null;
            }
            uieVar.a = yie.b(strGroup);
            String strGroup2 = matcher.group(2);
            if (strGroup2 == null) {
                throw null;
            }
            uieVar.b = yie.b(strGroup2);
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            h(strGroup3, uieVar);
            StringBuilder sb = new StringBuilder();
            String strT = u4hVar.T(StandardCharsets.UTF_8);
            while (!TextUtils.isEmpty(strT)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(strT.trim());
                strT = u4hVar.T(StandardCharsets.UTF_8);
            }
            uieVar.c = a(str, sb.toString(), list);
            return new qie(uieVar.a().p(), uieVar.a, uieVar.b);
        } catch (IllegalArgumentException unused) {
            zrg.f("WebvttCueParser", "Skipping cue with bad header: ".concat(String.valueOf(matcher.group())));
            return null;
        }
    }

    public static List f(List list, String str, sie sieVar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            pie pieVar = (pie) list.get(i);
            int iG = pieVar.g(str, sieVar.a, sieVar.d, sieVar.c);
            if (iG > 0) {
                arrayList.add(new tie(iG, pieVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0086  */
    public static void g(String str, sie sieVar, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        byte b2;
        int i = sieVar.b;
        int length = spannableStringBuilder.length();
        String str2 = sieVar.a;
        int iHashCode = str2.hashCode();
        int i2 = -1;
        if (iHashCode != 0) {
            if (iHashCode != 105) {
                if (iHashCode != 3314158) {
                    if (iHashCode != 3511770) {
                        if (iHashCode != 98) {
                            if (iHashCode != 99) {
                                if (iHashCode != 117) {
                                    if (iHashCode == 118 && str2.equals("v")) {
                                        b2 = 5;
                                    } else {
                                        b2 = -1;
                                    }
                                } else if (str2.equals("u")) {
                                    b2 = 3;
                                } else {
                                    b2 = -1;
                                }
                            } else if (str2.equals("c")) {
                                b2 = 4;
                            } else {
                                b2 = -1;
                            }
                        } else if (str2.equals("b")) {
                            b2 = 0;
                        } else {
                            b2 = -1;
                        }
                    } else if (str2.equals(TtmlNode.ATTR_TTS_RUBY)) {
                        b2 = 2;
                    } else {
                        b2 = -1;
                    }
                } else if (str2.equals("lang")) {
                    b2 = 6;
                } else {
                    b2 = -1;
                }
            } else if (str2.equals(CmcdData.OBJECT_TYPE_INIT_SEGMENT)) {
                b2 = 1;
            } else {
                b2 = -1;
            }
        } else if (str2.equals("")) {
            b2 = 7;
        } else {
            b2 = -1;
        }
        switch (b2) {
            case 0:
                spannableStringBuilder.setSpan(new StyleSpan(1), i, length, 33);
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(2), i, length, 33);
                break;
            case 2:
                int iD = d(list2, str, sieVar);
                ArrayList arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
                Collections.sort(arrayList, rie.c);
                int i3 = i;
                int i4 = 0;
                int length2 = 0;
                while (i4 < arrayList.size()) {
                    if ("rt".equals(((rie) arrayList.get(i4)).a.a)) {
                        rie rieVar = (rie) arrayList.get(i4);
                        int iD2 = d(list2, str, rieVar.a);
                        if (iD2 == i2) {
                            iD2 = iD != i2 ? iD : 1;
                        }
                        int i5 = rieVar.a.b - length2;
                        int i6 = rieVar.b - length2;
                        CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i5, i6);
                        spannableStringBuilder.delete(i5, i6);
                        spannableStringBuilder.setSpan(new o2g(charSequenceSubSequence.toString(), iD2), i3, i5, 33);
                        length2 += charSequenceSubSequence.length();
                        i3 = i5;
                    }
                    i4++;
                    i2 = -1;
                }
                break;
            case 3:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                break;
            case 4:
                for (String str3 : sieVar.d) {
                    Map map = c;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i, length, 33);
                    } else {
                        Map map2 = d;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i, length, 33);
                        }
                    }
                }
                break;
            case 5:
                spannableStringBuilder.setSpan(new i6g(sieVar.c), i, length, 33);
                break;
            case 6:
            case 7:
                break;
            default:
                return;
        }
        List listF = f(list2, str, sieVar);
        for (int i7 = 0; i7 < listF.size(); i7++) {
            pie pieVar = ((tie) listF.get(i7)).c;
            if (pieVar != null) {
                if (pieVar.h() != -1) {
                    r3g.b(spannableStringBuilder, new StyleSpan(pieVar.h()), i, length, 33);
                }
                if (pieVar.A()) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                }
                if (pieVar.z()) {
                    r3g.b(spannableStringBuilder, new ForegroundColorSpan(pieVar.d()), i, length, 33);
                }
                if (pieVar.y()) {
                    r3g.b(spannableStringBuilder, new BackgroundColorSpan(pieVar.c()), i, length, 33);
                }
                if (pieVar.s() != null) {
                    r3g.b(spannableStringBuilder, new TypefaceSpan(pieVar.s()), i, length, 33);
                }
                int iE = pieVar.e();
                if (iE == 1) {
                    r3g.b(spannableStringBuilder, new AbsoluteSizeSpan((int) pieVar.b(), true), i, length, 33);
                } else if (iE == 2) {
                    r3g.b(spannableStringBuilder, new RelativeSizeSpan(pieVar.b()), i, length, 33);
                } else if (iE == 3) {
                    r3g.b(spannableStringBuilder, new RelativeSizeSpan(pieVar.b() / 100.0f), i, length, 33);
                }
                if (pieVar.x()) {
                    spannableStringBuilder.setSpan(new n1g(), i, length, 33);
                }
            }
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static void h(String str, uie uieVar) {
        Matcher matcher = b.matcher(str);
        while (matcher.find()) {
            int i = 1;
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int i2 = 2;
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            try {
                byte b2 = -1;
                if ("line".equals(strGroup)) {
                    int iIndexOf = strGroup2.indexOf(44);
                    if (iIndexOf != -1) {
                        String strSubstring = strGroup2.substring(iIndexOf + 1);
                        switch (strSubstring.hashCode()) {
                            case -1364013995:
                                if (strSubstring.equals(TtmlNode.CENTER)) {
                                    b2 = 1;
                                }
                                break;
                            case -1074341483:
                                if (strSubstring.equals("middle")) {
                                    b2 = 2;
                                }
                                break;
                            case 100571:
                                if (strSubstring.equals(TtmlNode.END)) {
                                    b2 = 3;
                                }
                                break;
                            case 109757538:
                                if (strSubstring.equals(TtmlNode.START)) {
                                    b2 = 0;
                                }
                                break;
                        }
                        if (b2 == 0) {
                            i2 = 0;
                        } else if (b2 == 1 || b2 == 2) {
                            i2 = 1;
                        } else if (b2 != 3) {
                            zrg.f("WebvttCueParser", "Invalid anchor value: ".concat(strSubstring));
                            i2 = Integer.MIN_VALUE;
                        }
                        uieVar.g = i2;
                        strGroup2 = strGroup2.substring(0, iIndexOf);
                    }
                    if (strGroup2.endsWith("%")) {
                        uieVar.e = yie.a(strGroup2);
                        uieVar.f = 0;
                    } else {
                        uieVar.e = Integer.parseInt(strGroup2);
                        uieVar.f = 1;
                    }
                } else if ("align".equals(strGroup)) {
                    switch (strGroup2.hashCode()) {
                        case -1364013995:
                            if (strGroup2.equals(TtmlNode.CENTER)) {
                                b2 = 2;
                            }
                            break;
                        case -1074341483:
                            if (strGroup2.equals("middle")) {
                                b2 = 3;
                            }
                            break;
                        case 100571:
                            if (strGroup2.equals(TtmlNode.END)) {
                                b2 = 4;
                            }
                            break;
                        case 3317767:
                            if (strGroup2.equals(TtmlNode.LEFT)) {
                                b2 = 1;
                            }
                            break;
                        case 108511772:
                            if (strGroup2.equals(TtmlNode.RIGHT)) {
                                b2 = 5;
                            }
                            break;
                        case 109757538:
                            if (strGroup2.equals(TtmlNode.START)) {
                                b2 = 0;
                            }
                            break;
                    }
                    if (b2 != 0) {
                        if (b2 == 1) {
                            i = 4;
                        } else if (b2 == 2 || b2 == 3) {
                            i = 2;
                        } else if (b2 == 4) {
                            i = 3;
                        } else if (b2 != 5) {
                            zrg.f("WebvttCueParser", "Invalid alignment value: ".concat(strGroup2));
                            i = 2;
                        } else {
                            i = 5;
                        }
                    }
                    uieVar.d = i;
                } else if ("position".equals(strGroup)) {
                    int iIndexOf2 = strGroup2.indexOf(44);
                    if (iIndexOf2 != -1) {
                        String strSubstring2 = strGroup2.substring(iIndexOf2 + 1);
                        switch (strSubstring2.hashCode()) {
                            case -1842484672:
                                if (strSubstring2.equals("line-left")) {
                                    b2 = 0;
                                }
                                break;
                            case -1364013995:
                                if (strSubstring2.equals(TtmlNode.CENTER)) {
                                    b2 = 2;
                                }
                                break;
                            case -1276788989:
                                if (strSubstring2.equals("line-right")) {
                                    b2 = 4;
                                }
                                break;
                            case -1074341483:
                                if (strSubstring2.equals("middle")) {
                                    b2 = 3;
                                }
                                break;
                            case 100571:
                                if (strSubstring2.equals(TtmlNode.END)) {
                                    b2 = 5;
                                }
                                break;
                            case 109757538:
                                if (strSubstring2.equals(TtmlNode.START)) {
                                    b2 = 1;
                                }
                                break;
                        }
                        if (b2 == 0 || b2 == 1) {
                            i = 0;
                        } else if (b2 != 2 && b2 != 3) {
                            if (b2 == 4 || b2 == 5) {
                                i = 2;
                            } else {
                                zrg.f("WebvttCueParser", "Invalid anchor value: ".concat(strSubstring2));
                                i = Integer.MIN_VALUE;
                            }
                        }
                        uieVar.i = i;
                        strGroup2 = strGroup2.substring(0, iIndexOf2);
                    }
                    uieVar.h = yie.a(strGroup2);
                } else if (PlayAudioData.TAG_SIZE.equals(strGroup)) {
                    uieVar.j = yie.a(strGroup2);
                } else if ("vertical".equals(strGroup)) {
                    int iHashCode = strGroup2.hashCode();
                    if (iHashCode != 3462) {
                        if (iHashCode == 3642 && strGroup2.equals("rl")) {
                            b2 = 0;
                        }
                    } else if (strGroup2.equals("lr")) {
                        b2 = 1;
                    }
                    if (b2 != 0) {
                        if (b2 != 1) {
                            zrg.f("WebvttCueParser", "Invalid 'vertical' value: ".concat(strGroup2));
                            i = Integer.MIN_VALUE;
                        } else {
                            i = 2;
                        }
                    }
                    uieVar.k = i;
                } else {
                    zrg.f("WebvttCueParser", "Unknown cue setting " + strGroup + StringUtils.PROCESS_POSTFIX_DELIMITER + strGroup2);
                }
            } catch (NumberFormatException unused) {
                zrg.f("WebvttCueParser", "Skipping bad cue setting: ".concat(String.valueOf(matcher.group())));
            }
        }
    }
}
