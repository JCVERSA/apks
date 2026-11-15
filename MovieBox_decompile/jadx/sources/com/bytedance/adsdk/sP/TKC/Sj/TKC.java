package com.bytedance.adsdk.sP.TKC.Sj;

import java.util.Arrays;
import java.util.List;

public class TKC extends sef<com.bytedance.adsdk.sP.TKC.sP.EjP, com.bytedance.adsdk.sP.TKC.sP.EjP> {
    public TKC(List<com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP>> list) {
        super(Sj(list));
    }

    private static List<com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP>> Sj(List<com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP>> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.set(i10, Sj(list.get(i10)));
        }
        return list;
    }

    @Override
    public List TKC() {
        return super.TKC();
    }

    @Override
    public boolean sP() {
        return super.sP();
    }

    @Override
    public String toString() {
        return super.toString();
    }

    private static com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP> Sj(com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP> sj2) {
        com.bytedance.adsdk.sP.TKC.sP.EjP ejP = sj2.Sj;
        com.bytedance.adsdk.sP.TKC.sP.EjP ejP2 = sj2.sP;
        if (ejP == null || ejP2 == null || ejP.Sj().length == ejP2.Sj().length) {
            return sj2;
        }
        float[] fArrSj = Sj(ejP.Sj(), ejP2.Sj());
        return sj2.Sj(ejP.Sj(fArrSj), ejP2.Sj(fArrSj));
    }

    static float[] Sj(float[] fArr, float[] fArr2) {
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        Arrays.sort(fArr3);
        float f10 = Float.NaN;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            float f11 = fArr3[i11];
            if (f11 != f10) {
                fArr3[i10] = f11;
                i10++;
                f10 = fArr3[i11];
            }
        }
        return Arrays.copyOfRange(fArr3, 0, i10);
    }

    @Override
    public com.bytedance.adsdk.sP.Sj.sP.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP, com.bytedance.adsdk.sP.TKC.sP.EjP> Sj() {
        return new com.bytedance.adsdk.sP.Sj.sP.HiB(this.Sj);
    }
}
