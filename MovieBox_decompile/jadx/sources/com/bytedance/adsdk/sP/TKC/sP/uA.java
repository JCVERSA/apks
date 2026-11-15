package com.bytedance.adsdk.sP.TKC.sP;

public class uA implements TKC {
    private final String Sj;
    private final boolean TKC;
    private final Sj sP;

    public enum Sj {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static Sj Sj(int i10) {
            if (i10 == 1) {
                return MERGE;
            }
            if (i10 == 2) {
                return ADD;
            }
            if (i10 == 3) {
                return SUBTRACT;
            }
            if (i10 != 4) {
                return i10 != 5 ? MERGE : EXCLUDE_INTERSECTIONS;
            }
            return INTERSECT;
        }
    }

    public uA(String str, Sj sj2, boolean z10) {
        this.Sj = str;
        this.sP = sj2;
        this.TKC = z10;
    }

    public String Sj() {
        return this.Sj;
    }

    public boolean TKC() {
        return this.TKC;
    }

    public Sj sP() {
        return this.sP;
    }

    public String toString() {
        return "MergePaths{mode=" + this.sP + '}';
    }

    @Override
    public com.bytedance.adsdk.sP.Sj.Sj.TKC Sj(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.Jcg jcg, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2) {
        return new com.bytedance.adsdk.sP.Sj.Sj.aa(this);
    }
}
