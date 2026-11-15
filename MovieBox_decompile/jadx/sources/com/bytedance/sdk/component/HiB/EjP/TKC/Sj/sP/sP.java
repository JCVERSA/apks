package com.bytedance.sdk.component.HiB.EjP.TKC.Sj.sP;

import android.support.v4.media.session.PlaybackStateCompat;
import com.bytedance.sdk.component.HiB.TzV;

public class sP implements TzV {
    private com.bytedance.sdk.component.HiB.EjP.TKC.Sj.TKC<String, byte[]> EjP;
    private long Sj = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
    private int TKC;
    private int sP;

    public sP(int i10, int i11) {
        this.TKC = i10;
        this.sP = i11;
        this.EjP = new com.bytedance.sdk.component.HiB.EjP.TKC.Sj.TKC<>(i11);
    }

    @Override
    public boolean sP(String str) {
        try {
            return this.EjP.Sj(str) != null;
        } catch (Throwable unused) {
        }
    }

    @Override
    public boolean Sj(String str, byte[] bArr) {
        if (str != null && bArr != null) {
            try {
                if (bArr.length > this.Sj) {
                    return false;
                }
                this.EjP.Sj(str, bArr);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    @Override
    public byte[] Sj(String str) {
        try {
            return this.EjP.Sj(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
