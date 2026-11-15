package com.bytedance.sdk.openadsdk.EjP.Sj;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public class sef {
    public static sef Sj = new sef();
    private volatile boolean EjP;
    private final Map<String, Sj> TKC = new HashMap();
    private Sj sP;

    public static class Sj {
        private final int Sj;
        private final int sP;

        public Sj(int i10, int i11) {
            this.Sj = (i10 < 0 || i10 > 5) ? 3 : i10;
            this.sP = i11 < 10 ? 30 : i11;
        }

        public int Sj() {
            return this.Sj;
        }

        public int sP() {
            return this.sP;
        }
    }

    private int TKC() {
        Sj sj2 = this.sP;
        if (sj2 != null) {
            return sj2.sP();
        }
        return 30;
    }

    private int sP() {
        Sj sj2 = this.sP;
        if (sj2 != null) {
            return sj2.Sj();
        }
        return 3;
    }

    public void Sj(Sj sj2) {
        this.sP = sj2;
    }

    public void Sj(String str, Sj sj2) {
        if (TextUtils.isEmpty(str) || sj2 == null) {
            return;
        }
        this.TKC.put(str, sj2);
    }

    public int sP(String str) {
        Sj sj2 = this.TKC.get(str);
        if (sj2 == null) {
            return TKC();
        }
        return sj2.sP();
    }

    public int Sj(String str) {
        if (!Sj()) {
            return 4;
        }
        Sj sj2 = this.TKC.get(str);
        if (sj2 == null) {
            return sP();
        }
        return sj2.Sj();
    }

    public boolean Sj() {
        return this.EjP;
    }

    public void Sj(boolean z10) {
        this.EjP = z10;
    }
}
