package com.iab.omid.library.bytedance2;

import com.iab.omid.library.bytedance2.utils.g;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class c {

    private static final Pattern f32591a = Pattern.compile("<(head)( [^>]*)?>", 2);

    private static final Pattern f32592b = Pattern.compile("<(head)( [^>]*)?/>", 2);

    private static final Pattern f32593c = Pattern.compile("<(body)( [^>]*?)?>", 2);

    private static final Pattern f32594d = Pattern.compile("<(body)( [^>]*?)?/>", 2);

    private static final Pattern f32595e = Pattern.compile("<(html)( [^>]*?)?>", 2);

    private static final Pattern f32596f = Pattern.compile("<(html)( [^>]*?)?/>", 2);

    private static final Pattern f32597g = Pattern.compile("<!DOCTYPE [^>]*>", 2);

    static String a(String str, String str2) {
        g.a(str, "HTML is null or empty");
        int[][] iArrA = a(str);
        StringBuilder sb2 = new StringBuilder(str.length() + str2.length() + 16);
        if (!b(str, sb2, f32592b, str2, iArrA) && !a(str, sb2, f32591a, str2, iArrA) && !b(str, sb2, f32594d, str2, iArrA) && !a(str, sb2, f32593c, str2, iArrA) && !b(str, sb2, f32596f, str2, iArrA) && !a(str, sb2, f32595e, str2, iArrA) && !a(str, sb2, f32597g, str2, iArrA)) {
            return str2 + str;
        }
        return sb2.toString();
    }

    static String b(String str, String str2) {
        return a(str2, "<script type=\"text/javascript\">" + str + "</script>");
    }

    private static boolean a(int i10, int[][] iArr) {
        if (iArr != null) {
            for (int[] iArr2 : iArr) {
                if (i10 >= iArr2[0] && i10 <= iArr2[1]) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean b(String str, StringBuilder sb2, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i10 = 0;
        while (matcher.find(i10)) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            if (!a(iStart, iArr)) {
                sb2.append(str.substring(0, matcher.end() - 2));
                sb2.append(">");
                sb2.append(str2);
                sb2.append("</");
                sb2.append(matcher.group(1));
                sb2.append(">");
                sb2.append(str.substring(matcher.end()));
                return true;
            }
            i10 = iEnd;
        }
        return false;
    }

    private static boolean a(String str, StringBuilder sb2, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i10 = 0;
        while (matcher.find(i10)) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            if (!a(iStart, iArr)) {
                sb2.append(str.substring(0, matcher.end()));
                sb2.append(str2);
                sb2.append(str.substring(matcher.end()));
                return true;
            }
            i10 = iEnd;
        }
        return false;
    }

    private static int[][] a(String str) {
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            int iIndexOf = str.indexOf("<!--", i10);
            if (iIndexOf >= 0) {
                int iIndexOf2 = str.indexOf("-->", iIndexOf);
                if (iIndexOf2 >= 0) {
                    arrayList.add(new int[]{iIndexOf, iIndexOf2});
                    i10 = iIndexOf2 + 3;
                } else {
                    arrayList.add(new int[]{iIndexOf, length});
                }
            }
            i10 = length;
        }
        return (int[][]) arrayList.toArray((int[][]) Array.newInstance((Class<?>) Integer.TYPE, 0, 2));
    }
}
