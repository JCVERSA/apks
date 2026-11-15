package com.bytedance.sdk.component.HiB.HiB;

public class aa extends Sj {
    @Override
    public void Sj(com.bytedance.sdk.component.HiB.TKC.TKC tkc) {
        byte[] bArrSj = tkc.TzV().sP(tkc.RiZ()).Sj(tkc.uA());
        if (bArrSj == null) {
            tkc.Sj(new vS());
        } else {
            tkc.Sj(new sP(bArrSj, null));
        }
    }

    @Override
    public String Sj() {
        return "raw_cache";
    }
}
