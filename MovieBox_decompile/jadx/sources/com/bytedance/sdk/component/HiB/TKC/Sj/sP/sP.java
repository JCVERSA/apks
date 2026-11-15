package com.bytedance.sdk.component.HiB.TKC.Sj.sP;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.HiB.dNu;

public class sP implements dNu {
    private int Sj;
    private com.bytedance.sdk.component.HiB.TKC.Sj.TKC<String, Bitmap> TKC;
    private int sP;

    public sP(int i10, int i11) {
        this.sP = i10;
        this.Sj = i11;
        this.TKC = new com.bytedance.sdk.component.HiB.TKC.Sj.TKC<String, Bitmap>(i10) {
            @Override
            public int sP(String str, Bitmap bitmap) {
                if (bitmap == null) {
                    return 0;
                }
                return sP.Sj(bitmap);
            }
        };
    }

    @Override
    public boolean sP(String str) {
        return this.TKC.Sj(str) != null;
    }

    @Override
    public boolean Sj(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            return false;
        }
        this.TKC.Sj(str, bitmap);
        return true;
    }

    @Override
    public Bitmap Sj(String str) {
        return this.TKC.Sj(str);
    }

    public static int Sj(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getAllocationByteCount();
    }
}
