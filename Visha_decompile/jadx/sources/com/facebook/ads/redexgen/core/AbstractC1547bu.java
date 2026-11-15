package com.facebook.ads.redexgen.core;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public abstract class AbstractC1547bu {
    public static String[] A00 = {"M7M7680JiQXMJzeuHBUdBK3CqcsunIE3", "7YJQc0MEUr6fNb1HoLhvfznehf2fNPi1", "fqXve0BGHc", "EJDyhBK8ScH8NN0H4G45MCvGKFSIU6i3", "lE5hsHUrpnTpaSUAUiDOdKdDJm2EXpBt", "fXhWa5fzMs", "jGMjXmbPjJmsUXbAj46daPhZmilD9JtA", "gy7nSuWAyo"};
    public static final Map<String, WeakReference<C1546bt>> A01 = new HashMap();

    public static int A00() {
        Map<String, WeakReference<C1546bt>> map = A01;
        if (A00[4].charAt(3) != 'h') {
            throw new RuntimeException();
        }
        String[] strArr = A00;
        strArr[3] = "KcOG1rzwVGm5OqslsWQoAqhkYEC7FRij";
        strArr[1] = "Dhj4Lprngz6YVn4AutwbBiUWJOZdaDii";
        return map.size();
    }

    public static C1546bt A01(C1635dL c1635dL, AbstractC1910hy abstractC1910hy, int i, InterfaceC1544br interfaceC1544br) {
        C1546bt c1546bt = new C1546bt(c1635dL, abstractC1910hy, c1635dL.A02().A0A(), i);
        c1546bt.A0b(interfaceC1544br);
        c1546bt.A0X();
        A01.put(abstractC1910hy.A17(), new WeakReference<>(c1546bt));
        return c1546bt;
    }

    public static C1546bt A02(String str) {
        WeakReference<C1546bt> weakReference = A01.get(str);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public static void A03(AbstractC1910hy abstractC1910hy, C1546bt c1546bt) {
        A01.put(abstractC1910hy.A17(), new WeakReference<>(c1546bt));
    }

    public static void A04(String str) {
        A01.remove(str);
    }
}
