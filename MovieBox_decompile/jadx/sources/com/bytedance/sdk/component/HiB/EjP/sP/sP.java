package com.bytedance.sdk.component.HiB.EjP.sP;

import android.text.TextUtils;
import com.bytedance.sdk.component.HiB.RiZ;
import com.bytedance.sdk.component.utils.uvD;

public class sP implements vS {
    @Override
    public boolean Sj(com.bytedance.sdk.component.HiB.EjP.TKC.TKC tkc, RiZ riZ, com.bytedance.sdk.component.HiB.EjP.TKC.Sj sj2) {
        if (TextUtils.isEmpty(tkc.TEQ())) {
            String strSj = Sj(tkc);
            tkc.sP(strSj);
            tkc.Sj(strSj);
        }
        tkc.Sj();
        return true;
    }

    @Override
    public String Sj() {
        return "generate_key";
    }

    private String Sj(com.bytedance.sdk.component.HiB.EjP.TKC.TKC tkc) {
        return uvD.Sj(tkc.Sj());
    }
}
