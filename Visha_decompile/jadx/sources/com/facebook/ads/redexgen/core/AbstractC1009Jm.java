package com.facebook.ads.redexgen.core;

import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.transsion.socket.pkgdata.SocketData;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Map;
import org.mozilla.classfile.ByteCode;

public abstract class AbstractC1009Jm {
    public static byte[] A00;
    public static String[] A01 = {"KgPme38LEDVaM0D12Uwlfvq6nYMDVVkT", "a5g98XiYqimDBheiX8ybcf7PetcT8W7U", "dRcctykKkiCtpnpKZqpaePhb1Qg1PkeN", "6JMbAfNKE0NkFS9oLsx1Zln6Fen7GSJu", "0ohFdoD3UqF2FgjtvUgt7lzB", "HqtC3No697vYpZ7G6OCOOOlSljo", "Ih90XUpH", "6OUjWPhHhDm3iVNi78UT7lOYQX351vXz"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 4 out of bounds for length 4
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static C1007Jk A00(C1007Jk c1007Jk, Map<String, C1014Jr> map) {
        while (c1007Jk != null) {
            C1014Jr c1014JrA02 = A02(c1007Jk.A04, c1007Jk.A0H(), map);
            if (c1014JrA02 != null && c1014JrA02.A09() == 1) {
                return c1007Jk;
            }
            c1007Jk = c1007Jk.A03;
        }
        return null;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A01;
            if (strArr[3].charAt(23) != strArr[0].charAt(23)) {
                throw new RuntimeException();
            }
            A01[6] = "lLmUOaES";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 115);
            i4++;
        }
    }

    public static void A05() {
        if (A01[2].charAt(10) == 'x') {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[1] = "BbbzftLMD2m3WHwPv0bAANWrbX2mWIyE";
        strArr[7] = "7lYjBODxVBmaGubq4OQdXtxLEf46a0ab";
        A00 = new byte[]{SocketData.CLAZZ_TYPE_STRING, -75, -78, -103, -40, -30, -62, -40, -30, 64, 88, 86, 93, 93, 86, 91, 84, 13, 95, 98, 79, 102, 65, 82, 101, 97, 13, 91, 92, 81, 82, 13, 100, 86, 97, 85, 92, 98, 97, 13, 82, 101, 78, 80, 97, 89, 102, 13, 92, 91, 82, 13, 97, 82, 101, 97, 13, 80, 85, 86, 89, 81, 27, -10, 22, 15, 14, -12, 7, 16, 6, 7, 20, -9, 22, ByteCode.T_LONG, 14, 73, 14, -9, 74, 102, 30, 48, -6, -5, 75, 25};
    }

    static {
        A05();
    }

    public static C1007Jk A01(C1007Jk c1007Jk, Map<String, C1014Jr> map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(c1007Jk);
        while (!arrayDeque.isEmpty()) {
            C1007Jk c1007Jk2 = (C1007Jk) arrayDeque.pop();
            C1014Jr c1014Jr = c1007Jk2.A04;
            String[] strArrA0H = c1007Jk2.A0H();
            if (A01[6].length() != 8) {
                throw new RuntimeException();
            }
            A01[6] = "prCmMBcG";
            C1014Jr c1014JrA02 = A02(c1014Jr, strArrA0H, map);
            if (c1014JrA02 != null && c1014JrA02.A09() == 3) {
                return c1007Jk2;
            }
            for (int iA0C = c1007Jk2.A0C() - 1; iA0C >= 0; iA0C--) {
                arrayDeque.push(c1007Jk2.A0D(iA0C));
            }
        }
        return null;
    }

    public static C1014Jr A02(C1014Jr c1014Jr, String[] strArr, Map<String, C1014Jr> map) {
        int i = 0;
        if (c1014Jr == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                C1014Jr c1014Jr2 = new C1014Jr();
                int length = strArr.length;
                while (i < length) {
                    c1014Jr2.A0O(map.get(strArr[i]));
                    i++;
                }
                return c1014Jr2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                String str = strArr[0];
                String[] strArr2 = A01;
                if (strArr2[1].charAt(10) != strArr2[7].charAt(10)) {
                    throw new RuntimeException();
                }
                A01[5] = "FXnyxRIFGSjHG1Q4pZ8iBycDDGv";
                return c1014Jr.A0O(map.get(str));
            }
            if (strArr != null) {
                int length2 = strArr.length;
                if (A01[2].charAt(10) == 'x') {
                    throw new RuntimeException();
                }
                A01[5] = "6UN5UNrVzg6BSs5KXnnHYvLLh5S";
                if (length2 > 1) {
                    int length3 = strArr.length;
                    while (i < length3) {
                        C1014Jr c1014Jr3 = map.get(strArr[i]);
                        if (A01[5].length() != 27) {
                            throw new RuntimeException();
                        }
                        A01[2] = "LBM9N0gh5w8sQTAl6eCIViVepwnbqV6U";
                        c1014Jr.A0O(c1014Jr3);
                        i++;
                    }
                    return c1014Jr;
                }
            }
        }
        return c1014Jr;
    }

    public static String A04(String str) {
        String strA03 = A03(1, 2, 53);
        String strA04 = A03(0, 1, 14);
        String strReplaceAll = str.replaceAll(strA03, strA04);
        String out = A03(4, 5, 69);
        String strReplaceAll2 = strReplaceAll.replaceAll(out, strA04);
        String strA05 = A03(3, 1, 6);
        String strReplaceAll3 = strReplaceAll2.replaceAll(strA04, strA05);
        String out2 = A03(77, 11, 123);
        return strReplaceAll3.replaceAll(out2, strA05);
    }

    /* JADX WARN: Code duplicated, block: B:72:0x0174  */
    public static void A06(Spannable spannable, int i, int i2, C1014Jr c1014Jr, C1007Jk c1007Jk, Map<String, C1014Jr> map, int i3) {
        C1007Jk c1007JkA01;
        C1014Jr c1014JrA02;
        int i4;
        int i5;
        int i6;
        if (c1014Jr.A0A() != -1) {
            spannable.setSpan(new StyleSpan(c1014Jr.A0A()), i, i2, 33);
        }
        if (c1014Jr.A0b()) {
            spannable.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (c1014Jr.A0c()) {
            spannable.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (c1014Jr.A0a()) {
            C3H.A00(spannable, new ForegroundColorSpan(c1014Jr.A06()), i, i2, 33);
        }
        boolean zA0Z = c1014Jr.A0Z();
        if (A01[5].length() == 27) {
            A01[2] = "DOLHbyxdL1TIGmJ49PhqpcsDL7xIVQFO";
            if (zA0Z) {
                C3H.A00(spannable, new BackgroundColorSpan(c1014Jr.A05()), i, i2, 33);
            }
            if (c1014Jr.A0W() != null) {
                C3H.A00(spannable, new TypefaceSpan(c1014Jr.A0W()), i, i2, 33);
            }
            if (c1014Jr.A0D() != null) {
                C1003Jg c1003Jg = (C1003Jg) C3M.A01(c1014Jr.A0D());
                if (c1003Jg.A01 == -1) {
                    String[] strArr = A01;
                    if (strArr[1].charAt(10) == strArr[7].charAt(10)) {
                        A01[5] = "2MSbzH5cEcM3iPzp1Bk7CXgbIPr";
                        if (i3 == 2 || i3 == 1) {
                            i4 = 3;
                        } else {
                            i4 = 1;
                        }
                        i5 = 1;
                    }
                } else {
                    i4 = c1003Jg.A01;
                    i5 = c1003Jg.A00;
                }
                if (c1003Jg.A02 == -2) {
                    i6 = 1;
                } else {
                    i6 = c1003Jg.A02;
                }
                C3H.A00(spannable, new C2255nu(i4, i5, i6), i, i2, 33);
            }
            switch (c1014Jr.A09()) {
                case 2:
                    C1007Jk c1007JkA00 = A00(c1007Jk, map);
                    if (c1007JkA00 != null && (c1007JkA01 = A01(c1007JkA00, map)) != null) {
                        if (c1007JkA01.A0C() != 1) {
                            AnonymousClass44.A06(A03(63, 14, 47), A03(9, 54, 122));
                        } else {
                            C1007Jk containerNode = c1007JkA01.A0D(0);
                            if (containerNode.A08 != null) {
                                C1007Jk containerNode2 = c1007JkA01.A0D(0);
                                String str = (String) AbstractC06244a.A0f(containerNode2.A08);
                                C1014Jr c1014JrA03 = A02(c1007JkA01.A04, c1007JkA01.A0H(), map);
                                int iA08 = c1014JrA03 != null ? c1014JrA03.A08() : -1;
                                if (iA08 == -1 && (c1014JrA02 = A02(c1007JkA00.A04, c1007JkA00.A0H(), map)) != null) {
                                    iA08 = c1014JrA02.A08();
                                }
                                spannable.setSpan(new C2256nv(str, iA08), i, i2, 33);
                            } else {
                                AnonymousClass44.A06(A03(63, 14, 47), A03(9, 54, 122));
                            }
                        }
                    }
                    break;
                case 3:
                case 4:
                    spannable.setSpan(new C1000Jd(), i, i2, 33);
                    break;
            }
            if (c1014Jr.A0Y()) {
                C3H.A00(spannable, new C2257nw(), i, i2, 33);
            }
            switch (c1014Jr.A07()) {
                case 1:
                    C3H.A00(spannable, new AbsoluteSizeSpan((int) c1014Jr.A03(), true), i, i2, 33);
                    return;
                case 2:
                    C3H.A00(spannable, new RelativeSizeSpan(c1014Jr.A03()), i, i2, 33);
                    return;
                case 3:
                    C3H.A00(spannable, new RelativeSizeSpan(c1014Jr.A03() / 100.0f), i, i2, 33);
                    return;
                default:
                    return;
            }
        }
        throw new RuntimeException();
    }

    public static void A07(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length >= 0 && spannableStringBuilder.charAt(length) != '\n') {
            spannableStringBuilder.append('\n');
        }
    }
}
