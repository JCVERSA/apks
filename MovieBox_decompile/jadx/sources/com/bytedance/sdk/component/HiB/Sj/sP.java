package com.bytedance.sdk.component.HiB.Sj;

import com.bytedance.sdk.component.HiB.aa;
import com.bytedance.sdk.component.HiB.uA;
import com.bytedance.sdk.component.utils.uvD;
import java.util.WeakHashMap;

public class sP {
    public static aa Sj() {
        return new aa() {
            private WeakHashMap<String, String> Sj = new WeakHashMap<>();

            @Override
            public String Sj(uA uAVar) {
                return Sj(uAVar.Sj() + "#width=" + uAVar.sP() + "#height=" + uAVar.TKC() + "#scaletype=" + uAVar.EjP() + "#bitmapConfig=" + uAVar.HiB());
            }

            @Override
            public String sP(uA uAVar) {
                return Sj(uAVar.Sj());
            }

            private String Sj(String str) {
                String str2 = this.Sj.get(str);
                if (str2 != null) {
                    return str2;
                }
                String strSj = uvD.Sj(str);
                this.Sj.put(str, strSj);
                return strSj;
            }
        };
    }
}
