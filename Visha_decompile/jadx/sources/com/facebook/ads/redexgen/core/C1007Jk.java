package com.facebook.ads.redexgen.core;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

public final class C1007Jk {
    public static byte[] A0D;
    public static String[] A0E = {"GeuvjWmU0qMIecUET3rH1sSpSiCCpV8d", "VWuGBdV", "r1UddSi70yifv9lgmWBFhDm81yvqf6sz", "XTFXH6doUzlPXpn0lOcCpEMXSJ", "Gs3RvICYSdgYtTZ", "LUo1PxiU5xdJ1hZxjmijWXp8gfNxa8cO", "PBxwyL5R7nlTE13P8yY94OOBBe", "AYtcaoWRC0gFrEQm0SEPSBapgfKgyhaj"};
    public List<C1007Jk> A00;
    public final long A01;
    public final long A02;
    public final C1007Jk A03;
    public final C1014Jr A04;
    public final String A05;
    public final String A06;
    public final String A07;
    public final String A08;
    public final boolean A09;
    public final HashMap<String, Integer> A0A;
    public final HashMap<String, Integer> A0B;
    public final String[] A0C;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A0E[1].length() == 19) {
                throw new RuntimeException();
            }
            A0E[1] = "X7T2v9MzXPQN9wm4iApZn5l";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 80);
            i4++;
        }
    }

    public static void A04() {
        A0D = new byte[]{30, 14, 38, 43, 52, 92, 84, 69, 80, 85, 80, 69, 80, 95};
    }

    static {
        A04();
    }

    public C1007Jk(String str, String str2, long j, long j2, C1014Jr c1014Jr, String[] strArr, String str3, String str4, C1007Jk c1007Jk) {
        this.A07 = str;
        this.A08 = str2;
        this.A05 = str4;
        this.A04 = c1014Jr;
        this.A0C = strArr;
        this.A09 = str2 != null;
        this.A02 = j;
        this.A01 = j2;
        this.A06 = (String) C3M.A01(str3);
        this.A03 = c1007Jk;
        this.A0B = new HashMap<>();
        this.A0A = new HashMap<>();
    }

    public static SpannableStringBuilder A00(String str, Map<String, C3C> map) {
        if (!map.containsKey(str)) {
            C3C c3c = new C3C();
            c3c.A0G(new SpannableStringBuilder());
            map.put(str, c3c);
        }
        C3C regionOutput = map.get(str);
        return (SpannableStringBuilder) C3M.A01(regionOutput.A0I());
    }

    public static C1007Jk A01(String str) {
        return new C1007Jk(null, AbstractC1009Jm.A04(str), C.TIME_UNSET, C.TIME_UNSET, null, null, A03(0, 0, 119), null, null);
    }

    public static C1007Jk A02(String str, long j, long j2, C1014Jr c1014Jr, String[] strArr, String str2, String str3, C1007Jk c1007Jk) {
        return new C1007Jk(str, null, j, j2, c1014Jr, strArr, str2, str3, c1007Jk);
    }

    private void A05(long j, String str, List<Pair<String, String>> regionImageList) {
        if (!A03(0, 0, 119).equals(this.A06)) {
            str = this.A06;
        }
        if (A0B(j)) {
            String strA03 = A03(2, 3, 18);
            String resolvedRegionId = this.A07;
            if (strA03.equals(resolvedRegionId)) {
                String resolvedRegionId2 = this.A05;
                if (resolvedRegionId2 != null) {
                    regionImageList.add(new Pair<>(str, this.A05));
                    return;
                }
            }
        }
        for (int i = 0; i < A0C(); i++) {
            A0D(i).A05(j, str, regionImageList);
        }
    }

    private void A06(long j, Map<String, C1014Jr> map, Map<String, C1008Jl> map2, String str, Map<String, C3C> map3) {
        int end;
        String str2 = str;
        if (A0B(j)) {
            if (!A03(0, 0, 119).equals(this.A06)) {
                str2 = this.A06;
            }
            for (Map.Entry<String, Integer> entry : this.A0A.entrySet()) {
                String key = entry.getKey();
                if (this.A0B.containsKey(key)) {
                    end = this.A0B.get(key).intValue();
                } else {
                    end = 0;
                }
                int iIntValue = entry.getValue().intValue();
                if (end != iIntValue) {
                    A09(map, (C3C) C3M.A01(map3.get(key)), end, iIntValue, ((C1008Jl) C3M.A01(map2.get(str2))).A08);
                }
            }
            for (int i = 0; i < i; i++) {
                A0D(i).A06(j, map, map2, str2, map3);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00ee A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x00f7  */
    private void A07(long j, boolean z, String str, Map<String, C3C> map) {
        boolean z2;
        String str2 = str;
        this.A0B.clear();
        this.A0A.clear();
        if (A03(5, 8, 97).equals(this.A07)) {
            return;
        }
        if (!A03(0, 0, 119).equals(this.A06)) {
            str2 = this.A06;
        }
        if (this.A09 && z) {
            SpannableStringBuilder spannableStringBuilderA00 = A00(str2, map);
            String resolvedRegionId = this.A08;
            spannableStringBuilderA00.append((CharSequence) C3M.A01(resolvedRegionId));
            return;
        }
        String strA03 = A03(0, 2, 44);
        String resolvedRegionId2 = this.A07;
        if (strA03.equals(resolvedRegionId2) && z) {
            SpannableStringBuilder spannableStringBuilderA01 = A00(str2, map);
            String[] strArr = A0E;
            if (strArr[0].charAt(26) == strArr[2].charAt(26)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0E;
            strArr2[5] = "DvePMvlINfUrHf8oCshP3y2zgWJgm1y9";
            strArr2[7] = "g33vhajkRJhloC0qEKLO4Zm1g9rQEkrd";
            spannableStringBuilderA01.append('\n');
            return;
        }
        if (!A0B(j)) {
            return;
        }
        for (Map.Entry<String, C3C> entry : map.entrySet()) {
            this.A0B.put(entry.getKey(), Integer.valueOf(((CharSequence) C3M.A01(entry.getValue().A0I())).length()));
        }
        String strA04 = A03(13, 1, 127);
        String resolvedRegionId3 = this.A07;
        boolean zEquals = strA04.equals(resolvedRegionId3);
        for (int i = 0; i < A0C(); i++) {
            C1007Jk c1007JkA0D = A0D(i);
            String[] strArr3 = A0E;
            String str3 = strArr3[3];
            String resolvedRegionId4 = strArr3[6];
            if (str3.length() != resolvedRegionId4.length()) {
                if (!z) {
                    if (zEquals) {
                        z2 = false;
                    }
                }
                c1007JkA0D.A07(j, z2, str2, map);
            } else {
                A0E[1] = "BxcnzhC5XqKLAs";
                if (!z) {
                    if (zEquals) {
                        z2 = false;
                    }
                }
                c1007JkA0D.A07(j, z2, str2, map);
            }
            z2 = true;
            c1007JkA0D.A07(j, z2, str2, map);
        }
        if (zEquals) {
            AbstractC1009Jm.A07(A00(str2, map));
        }
        for (Map.Entry<String, C3C> entry2 : map.entrySet()) {
            HashMap<String, Integer> map2 = this.A0A;
            String key = entry2.getKey();
            C3C value = entry2.getValue();
            String[] strArr4 = A0E;
            if (strArr4[0].charAt(26) != strArr4[2].charAt(26)) {
                String[] strArr5 = A0E;
                strArr5[3] = "NvsWEQBQe6VAGnQhJA54b4pVjA";
                strArr5[6] = "RDTsakCOEzYFACc9hnpkZM81VS";
                map2.put(key, Integer.valueOf(((CharSequence) C3M.A01(value.A0I())).length()));
            } else {
                String[] strArr6 = A0E;
                strArr6[5] = "CHxe0vxZr8lPRHvaCG5LBeS6gh9aVBuv";
                strArr6[7] = "HeV50lBh9JGf3GNHX7ZdMbjxgTQZONIp";
                map2.put(key, Integer.valueOf(((CharSequence) C3M.A01(value.A0I())).length()));
            }
        }
    }

    public static void A08(SpannableStringBuilder spannableStringBuilder) {
        for (C1000Jd c1000Jd : (C1000Jd[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), C1000Jd.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(c1000Jd), spannableStringBuilder.getSpanEnd(c1000Jd), (CharSequence) A03(0, 0, 119));
        }
        for (int i = 0; i < spannableStringBuilder.length(); i++) {
            if (spannableStringBuilder.charAt(i) == ' ') {
                int i2 = i + 1;
                while (i2 < spannableStringBuilder.length()) {
                    char cCharAt = spannableStringBuilder.charAt(i2);
                    String[] strArr = A0E;
                    String str = strArr[5];
                    String str2 = strArr[7];
                    int i3 = str.charAt(24);
                    if (i3 == str2.charAt(24)) {
                        String[] strArr2 = A0E;
                        strArr2[0] = "TbkeKkbvotKRDkL3aJkR6CKPV2CRZepO";
                        strArr2[2] = "HOyzJt7YVHsiDEtesdPQS8q1On7uoMtF";
                        if (cCharAt != ' ') {
                            break;
                        } else {
                            i2++;
                        }
                    }
                    throw new RuntimeException();
                }
                int j = i + 1;
                String[] strArr3 = A0E;
                String str3 = strArr3[0];
                String str4 = strArr3[2];
                int i4 = str3.charAt(26);
                if (i4 == str4.charAt(26)) {
                    throw new RuntimeException();
                }
                A0E[1] = "2IIAODStabB9";
                int i5 = i2 - j;
                if (i5 > 0) {
                    spannableStringBuilder.delete(i, i + i5);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
        }
        for (int i6 = 0; i6 < spannableStringBuilder.length() - 1; i6++) {
            if (spannableStringBuilder.charAt(i6) == '\n' && spannableStringBuilder.charAt(i6 + 1) == ' ') {
                int i7 = i6 + 1;
                spannableStringBuilder.delete(i7, i6 + 2);
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
        for (int i8 = 0; i8 < spannableStringBuilder.length() - 1; i8++) {
            if (spannableStringBuilder.charAt(i8) == ' ' && spannableStringBuilder.charAt(i8 + 1) == '\n') {
                spannableStringBuilder.delete(i8, i8 + 1);
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
    }

    private void A09(Map<String, C1014Jr> map, C3C c3c, int i, int i2, int i3) {
        C1014Jr c1014JrA02 = AbstractC1009Jm.A02(this.A04, this.A0C, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) c3c.A0I();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            c3c.A0G(spannableStringBuilder);
        }
        if (c1014JrA02 != null) {
            AbstractC1009Jm.A06(spannableStringBuilder, i, i2, c1014JrA02, this.A03, map, i3);
            if (A03(13, 1, 127).equals(this.A07)) {
                if (c1014JrA02.A04() != Float.MAX_VALUE) {
                    c3c.A05((c1014JrA02.A04() * (-90.0f)) / 100.0f);
                }
                if (c1014JrA02.A0C() != null) {
                    c3c.A0F(c1014JrA02.A0C());
                }
                if (c1014JrA02.A0B() != null) {
                    c3c.A0E(c1014JrA02.A0B());
                }
            }
        }
    }

    private void A0A(TreeSet<Long> treeSet, boolean z) {
        boolean zEquals = A03(13, 1, 127).equals(this.A07);
        boolean isPNode = A03(2, 3, 18).equals(this.A07);
        if (z || zEquals || (isPNode && this.A05 != null)) {
            if (this.A02 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(this.A02));
            }
            if (this.A01 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(this.A01));
            }
        }
        if (this.A00 == null) {
            return;
        }
        for (int i = 0; i < this.A00.size(); i++) {
            C1007Jk c1007Jk = this.A00.get(i);
            boolean isPNode2 = z || zEquals;
            c1007Jk.A0A(treeSet, isPNode2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0036  */
    private final boolean A0B(long j) {
        if (this.A02 != C.TIME_UNSET || this.A01 != C.TIME_UNSET) {
            if (this.A02 > j) {
                return this.A02 == C.TIME_UNSET ? false : false;
            }
            long j2 = this.A01;
            if (A0E[1].length() == 19) {
                throw new RuntimeException();
            }
            String[] strArr = A0E;
            strArr[5] = "RgXDLQ3a08cIBfoVnl1r1eLIg5MUrfoW";
            strArr[7] = "Ter36j0QNwpTucwH0VATqUwzgkfFz8sj";
            if (j2 != C.TIME_UNSET) {
                if ((this.A02 == C.TIME_UNSET || j >= this.A01) && (this.A02 > j || j >= this.A01)) {
                }
            }
        }
        return true;
    }

    public final int A0C() {
        if (this.A00 == null) {
            return 0;
        }
        List<C1007Jk> list = this.A00;
        if (A0E[4].length() == 7) {
            throw new RuntimeException();
        }
        A0E[1] = "iiL";
        return list.size();
    }

    public final C1007Jk A0D(int i) {
        if (this.A00 != null) {
            return this.A00.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public final List<C2263o2> A0E(long j, Map<String, C1014Jr> map, Map<String, C1008Jl> map2, Map<String, String> imageMap) {
        List<Pair<String, String>> arrayList = new ArrayList<>();
        A05(j, this.A06, arrayList);
        TreeMap treeMap = new TreeMap();
        A07(j, false, this.A06, treeMap);
        A06(j, map, map2, this.A06, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair<String, String> pair : arrayList) {
            String str = imageMap.get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                C1008Jl c1008Jl = (C1008Jl) C3M.A01(map2.get(pair.first));
                arrayList2.add(new C3C().A0D(bitmapDecodeByteArray).A04(c1008Jl.A02).A0A(0).A07(c1008Jl.A01, 0).A09(c1008Jl.A05).A06(c1008Jl.A04).A03(c1008Jl.A00).A0B(c1008Jl.A08).A0H());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            C1008Jl c1008Jl2 = (C1008Jl) C3M.A01(map2.get(entry.getKey()));
            C3C c3c = (C3C) entry.getValue();
            A08((SpannableStringBuilder) C3M.A01(c3c.A0I()));
            c3c.A07(c1008Jl2.A01, c1008Jl2.A06);
            c3c.A09(c1008Jl2.A05);
            c3c.A04(c1008Jl2.A02);
            c3c.A06(c1008Jl2.A04);
            c3c.A08(c1008Jl2.A03, c1008Jl2.A07);
            c3c.A0B(c1008Jl2.A08);
            arrayList2.add(c3c.A0H());
        }
        return arrayList2;
    }

    public final void A0F(C1007Jk c1007Jk) {
        if (this.A00 == null) {
            this.A00 = new ArrayList();
        }
        this.A00.add(c1007Jk);
    }

    public final long[] A0G() {
        TreeSet<Long> treeSet = new TreeSet<>();
        A0A(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        int i = 0;
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = it.next().longValue();
            i++;
        }
        return jArr;
    }

    public final String[] A0H() {
        return this.A0C;
    }
}
