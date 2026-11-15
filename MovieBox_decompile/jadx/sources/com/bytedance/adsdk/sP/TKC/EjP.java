package com.bytedance.adsdk.sP.TKC;

import com.bytedance.adsdk.sP.TKC.sP.uvD;
import java.util.List;

public class EjP {
    private final double EjP;
    private final String HiB;
    private final List<uvD> Sj;
    private final double TKC;
    private final char sP;
    private final String vS;

    public EjP(List<uvD> list, char c10, double d10, double d11, String str, String str2) {
        this.Sj = list;
        this.sP = c10;
        this.TKC = d10;
        this.EjP = d11;
        this.HiB = str;
        this.vS = str2;
    }

    public static int Sj(char c10, String str, String str2) {
        return (((c10 * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public int hashCode() {
        return Sj(this.sP, this.vS, this.HiB);
    }

    public double sP() {
        return this.EjP;
    }

    public List<uvD> Sj() {
        return this.Sj;
    }
}
