package com.bytedance.sdk.component.sP.Sj.Sj.Sj;

import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.Zq;
import java.io.IOException;
import java.util.List;

public class TKC implements com.bytedance.sdk.component.sP.Sj.Dq.Sj {
    List<com.bytedance.sdk.component.sP.Sj.Dq> Sj;
    int TKC = 0;
    Fmk sP;

    TKC(List<com.bytedance.sdk.component.sP.Sj.Dq> list, Fmk fmk) {
        this.Sj = list;
        this.sP = fmk;
    }

    @Override
    public Fmk Sj() {
        return this.sP;
    }

    @Override
    public Zq Sj(Fmk fmk) throws IOException {
        this.sP = fmk;
        int i10 = this.TKC + 1;
        this.TKC = i10;
        if (i10 >= this.Sj.size()) {
            return null;
        }
        return this.Sj.get(this.TKC).Sj(this);
    }
}
