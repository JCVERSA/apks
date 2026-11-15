package com.bytedance.sdk.component.vS.Sj;

public class TKC {
    public static void Sj(Object obj, String str) {
        if (obj == null) {
            Sj(str);
        }
    }

    public static void Sj(String str) {
        throw new IllegalArgumentException(str);
    }
}
