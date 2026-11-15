package com.bytedance.sdk.component.HiB.TKC.Sj.sP;

import com.bytedance.sdk.component.HiB.TzV;

public class TKC implements TzV {
    private int Sj;
    private com.bytedance.sdk.component.HiB.TKC.Sj.TKC<String, byte[]> TKC;
    private int sP;

    public TKC(int i10, int i11) {
        this.sP = i10;
        this.Sj = i11;
        this.TKC = new com.bytedance.sdk.component.HiB.TKC.Sj.TKC<String, byte[]>(i10) {
            @Override
            public int sP(String str, byte[] bArr) {
                if (bArr == null) {
                    return 0;
                }
                return bArr.length;
            }
        };
    }

    @Override
    public boolean sP(String str) {
        return this.TKC.Sj(str) != null;
    }

    @Override
    public boolean Sj(String str, byte[] bArr) {
        if (str == null || bArr == null) {
            return false;
        }
        this.TKC.Sj(str, bArr);
        return true;
    }

    @Override
    public byte[] Sj(String str) {
        return this.TKC.Sj(str);
    }
}
