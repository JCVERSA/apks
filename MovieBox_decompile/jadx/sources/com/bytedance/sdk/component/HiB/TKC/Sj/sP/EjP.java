package com.bytedance.sdk.component.HiB.TKC.Sj.sP;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.HiB.dNu;

public class EjP implements dNu {
    private final dNu Sj;
    private final com.bytedance.sdk.component.HiB.TKC.Sj.sP sP;

    public EjP(dNu dnu) {
        this(dnu, null);
    }

    public EjP(dNu dnu, com.bytedance.sdk.component.HiB.TKC.Sj.sP sPVar) {
        this.Sj = dnu;
        this.sP = sPVar;
    }

    @Override
    public boolean sP(String str) {
        return this.Sj.sP(str);
    }

    @Override
    public boolean Sj(String str, Bitmap bitmap) {
        return this.Sj.Sj(str, bitmap);
    }

    @Override
    public Bitmap Sj(String str) {
        return this.Sj.Sj(str);
    }
}
