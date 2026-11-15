package com.bytedance.sdk.component.HiB.HiB;

public class EjP extends Sj {
    @Override
    public void Sj(com.bytedance.sdk.component.HiB.TKC.TKC tkc) {
        com.bytedance.sdk.component.HiB.sP sPVarRiZ = tkc.RiZ();
        if (sPVarRiZ != null) {
            if (sPVarRiZ.HiB()) {
                tkc.Sj(new TEQ());
                return;
            } else if (sPVarRiZ.Jcg()) {
                tkc.Sj(new vS());
                return;
            }
        }
        tkc.Sj(new Ym());
    }

    @Override
    public String Sj() {
        return "cache_policy";
    }
}
