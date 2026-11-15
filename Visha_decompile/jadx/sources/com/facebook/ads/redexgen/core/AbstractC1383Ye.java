package com.facebook.ads.redexgen.core;

import android.view.View;
import com.facebook.ads.NativeAdLayout;

public abstract class AbstractC1383Ye {
    public static String[] A00 = {"B", "b", "N7Y4O4Xp0bXRpwQYmrnUbbD5XPNn0nfl", "PsTgqcCc8jcMoxm2RXWy1mA6rhf59", "zMLnehec4ICfDGOtTSDp3symXOGZpaRx", "AnvCnC9uV", "JoTWE5M61fQkMjrwCjPz5KG5vu8cqeKb", "O6aKPphMSjoWO4xDWlhiQ7T2kp0fs"};
    public static final int A01 = (int) (AbstractC1338Wl.A02 * 200.0f);
    public static final int A03 = (int) (AbstractC1338Wl.A02 * 200.0f);
    public static final int A02 = (int) (AbstractC1338Wl.A02 * 50.0f);

    public static EnumC1078Md A00(NativeAdLayout nativeAdLayout) {
        if (nativeAdLayout == null) {
            return EnumC1078Md.A04;
        }
        if (A03(nativeAdLayout)) {
            return EnumC1078Md.A05;
        }
        return EnumC1078Md.A03;
    }

    public static AbstractC1382Yd A01(C1635dL c1635dL, US us, String str, View view) {
        if (view == null) {
            return null;
        }
        int w = view.getWidth();
        int height = view.getHeight();
        if (w >= A01 && height >= A01) {
            return new LS(c1635dL, us, str);
        }
        if (w >= A03) {
            int i = A02;
            String[] strArr = A00;
            if (strArr[6].charAt(28) == strArr[4].charAt(28)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A00;
            strArr2[7] = "MXaU9iKOIfaGo19ccmM4SYJQh1BEv";
            strArr2[3] = "urarsFS1owFx4szCeqq2cq67A77KP";
            if (height >= i) {
                return new LU(c1635dL, us, str);
            }
        }
        return null;
    }

    public static LV A02(C1635dL c1635dL, US us, String str, N9 n9, InterfaceC1367Xo interfaceC1367Xo, InterfaceC1366Xn interfaceC1366Xn) {
        return new LV(c1635dL, us, str, n9, interfaceC1367Xo, interfaceC1366Xn);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002c  */
    /* JADX WARN: Code duplicated, block: B:13:0x003a  */
    /* JADX WARN: Code duplicated, block: B:6:0x0010  */
    /* JADX WARN: Code duplicated, block: B:8:0x0024  */
    public static boolean A03(NativeAdLayout nativeAdLayout) {
        int i;
        int h;
        int w;
        int w2;
        int width = nativeAdLayout.getWidth();
        int height = nativeAdLayout.getHeight();
        int w3 = A01;
        if (width < w3) {
            i = A03;
            String[] strArr = A00;
            String str = strArr[1];
            String str2 = strArr[0];
            h = str.length();
            w = str2.length();
            if (h != w) {
                throw new RuntimeException();
            }
            String[] strArr2 = A00;
            strArr2[1] = "e";
            strArr2[0] = "I";
            if (width >= i) {
                w2 = A02;
                if (height < w2) {
                }
            }
            return true;
        }
        int w4 = A01;
        if (height < w4) {
            i = A03;
            String[] strArr3 = A00;
            String str3 = strArr3[1];
            String str4 = strArr3[0];
            h = str3.length();
            w = str4.length();
            if (h != w) {
                throw new RuntimeException();
            }
            String[] strArr4 = A00;
            strArr4[1] = "e";
            strArr4[0] = "I";
            if (width >= i) {
                w2 = A02;
                if (height < w2) {
                }
            }
            return true;
        }
        return false;
    }
}
