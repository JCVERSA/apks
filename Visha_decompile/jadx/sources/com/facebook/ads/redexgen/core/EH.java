package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.List;

public abstract class EH {
    public static String[] A00 = {"94gd2lHaz6driogpt3Nl1tWsjXgriMxS", "VA5F17cuoV6wg6So0a0DluDefxsQAbFW", "BZfou2TK48MMfd1yJcRZTZ4JcnnWlmHT", "ilV1kn3efEuJyycOIV0UyN70TAMLymqY", "v19hT7CAJaCb1rntEZC2LQpyBVrX3IkZ", "rkpPVUKbY", "FKwb9S", "XsKsPoEAnPyrLBiotdeURrQ5Q46xoiIz"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2267o6 A01(EC ec, List<? extends EE>[] listArr) {
        C05551h c05551h = new C05551h();
        int i = 0;
        while (true) {
            boolean z = false;
            if (i >= ec.A02()) {
                C2149mA c2149mAA06 = ec.A06();
                for (int i2 = 0; i2 < c2149mAA06.A01; i2++) {
                    C2278oH c2278oHA05 = c2149mAA06.A05(i2);
                    int[] iArr = new int[c2278oHA05.A01];
                    Arrays.fill(iArr, 0);
                    c05551h.A04(new C2268o7(c2278oHA05, false, iArr, new boolean[c2278oHA05.A01]));
                }
                return new C2267o6(c05551h.A05());
            }
            C2149mA c2149mAA07 = ec.A07(i);
            List<? extends EE> list = listArr[i];
            int i3 = 0;
            while (i3 < c2149mAA07.A01) {
                C2278oH c2278oHA06 = c2149mAA07.A05(i3);
                int iA05 = ec.A05(i, i3, z);
                String[] strArr = A00;
                if (strArr[7].charAt(11) == strArr[0].charAt(11)) {
                    String[] strArr2 = A00;
                    strArr2[7] = "wVGS7RX5kLdrLFKtRIe7uQsNtd1z6IxW";
                    strArr2[0] = "7aERijPLyLRrdgSw5lQfoyda5cW2h3c0";
                    boolean z2 = iA05 != 0;
                    int[] iArr2 = new int[c2278oHA06.A01];
                    boolean[] zArr = new boolean[c2278oHA06.A01];
                    for (int i4 = 0; i4 < c2278oHA06.A01; i4++) {
                        iArr2[i4] = ec.A04(i, i3, i4);
                        boolean z3 = false;
                        if (A00[5].length() == 9) {
                            String[] strArr3 = A00;
                            strArr3[2] = "3DHxmUKuGZITV4091m9MLUNqu1ZkNm0q";
                            strArr3[3] = "2BQZhu0LL1SbQMNt9wHOkoks63NLimX3";
                            for (int i5 = 0; i5 < list.size(); i5++) {
                                EE ee = list.get(i5);
                                if (ee.A9D().equals(c2278oHA06) && ee.A9y(i4) != -1) {
                                    z3 = true;
                                    break;
                                }
                            }
                            zArr[i4] = z3;
                        }
                    }
                    c05551h.A04(new C2268o7(c2278oHA06, z2, iArr2, zArr));
                    i3++;
                    z = false;
                }
                throw new RuntimeException();
            }
            i++;
        }
    }

    public static C2267o6 A00(EC ec, EE[] eeArr) {
        List listA01;
        List[] listArr = new List[eeArr.length];
        for (int i = 0; i < eeArr.length; i++) {
            EE ee = eeArr[i];
            if (ee != null) {
                listA01 = AbstractC0779Am.A04(ee);
            } else {
                listA01 = MetaExoPlayerCustomizedCollections.A01();
            }
            listArr[i] = listA01;
        }
        return A01(ec, listArr);
    }
}
