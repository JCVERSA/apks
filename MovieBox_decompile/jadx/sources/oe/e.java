package oe;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import re.g;

abstract class e {

    private static final Pattern f67809a = Pattern.compile("<(head)( [^>]*)?>", 2);

    private static final Pattern f67810b = Pattern.compile("<(head)( [^>]*)?/>", 2);

    private static final Pattern f67811c = Pattern.compile("<(body)( [^>]*?)?>", 2);

    private static final Pattern f67812d = Pattern.compile("<(body)( [^>]*?)?/>", 2);

    private static final Pattern f67813e = Pattern.compile("<(html)( [^>]*?)?>", 2);

    private static final Pattern f67814f = Pattern.compile("<(html)( [^>]*?)?/>", 2);

    private static final Pattern f67815g = Pattern.compile("<!DOCTYPE [^>]*>", 2);

    static String a(String str, String str2) {
        g.f(str, "HTML is null or empty");
        int[][] iArrD = d(str);
        StringBuilder sb2 = new StringBuilder(str.length() + str2.length() + 16);
        if (f(str, sb2, f67810b, str2, iArrD)) {
            return sb2.toString();
        }
        if (c(str, sb2, f67809a, str2, iArrD)) {
            return sb2.toString();
        }
        if (f(str, sb2, f67812d, str2, iArrD)) {
            return sb2.toString();
        }
        if (c(str, sb2, f67811c, str2, iArrD)) {
            return sb2.toString();
        }
        if (f(str, sb2, f67814f, str2, iArrD)) {
            return sb2.toString();
        }
        if (c(str, sb2, f67813e, str2, iArrD)) {
            return sb2.toString();
        }
        if (c(str, sb2, f67815g, str2, iArrD)) {
            return sb2.toString();
        }
        return str2 + str;
    }

    private static boolean b(int i10, int[][] iArr) {
        if (iArr != null) {
            for (int[] iArr2 : iArr) {
                if (i10 >= iArr2[0] && i10 <= iArr2[1]) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean c(String str, StringBuilder sb2, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i10 = 0;
        while (matcher.find(i10)) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            if (!b(iStart, iArr)) {
                sb2.append(str.substring(0, matcher.end()));
                sb2.append(str2);
                sb2.append(str.substring(matcher.end()));
                return true;
            }
            i10 = iEnd;
        }
        return false;
    }

    private static int[][] d(String str) {
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

    static String e(String str, String str2) {
        return a(str2, "<script type=\"text/javascript\">" + str + "</script>");
    }

    private static boolean f(String str, StringBuilder sb2, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i10 = 0;
        while (matcher.find(i10)) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            if (!b(iStart, iArr)) {
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
}
