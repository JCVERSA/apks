package com.bytedance.sdk.component.HiB.HiB;

import android.text.TextUtils;

public class TKC extends Sj {
    @Override
    public void Sj(com.bytedance.sdk.component.HiB.TKC.TKC tkc) {
        if (TextUtils.isEmpty(tkc.TEQ())) {
            com.bytedance.sdk.component.HiB.aa aaVarVS = tkc.TzV().vS();
            tkc.sP(aaVarVS.Sj(tkc));
            tkc.Sj(aaVarVS.sP(tkc));
        }
        tkc.Sj(new Jcg());
    }

    @Override
    public String Sj() {
        return "generate_key";
    }
}
