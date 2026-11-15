package com.bytedance.sdk.component.HiB.HiB;

import java.util.Collection;
import java.util.Iterator;

public class vS extends Sj {
    private byte[] sP(com.bytedance.sdk.component.HiB.TKC.TKC tkc, String str) {
        com.bytedance.sdk.component.HiB.TKC TKC = tkc.TzV().TKC(tkc.RiZ());
        if (TKC == null) {
            return null;
        }
        return TKC.Sj(str);
    }

    @Override
    public void Sj(com.bytedance.sdk.component.HiB.TKC.TKC tkc) {
        String strUA = tkc.uA();
        byte[] bArrSj = (tkc.sU() || tkc.RiZ().uA()) ? Sj(tkc, strUA) : sP(tkc, strUA);
        if (bArrSj == null) {
            tkc.Sj(new Ym());
        } else {
            tkc.Sj(new sP(bArrSj, null));
            tkc.TzV().sP(tkc.RiZ()).Sj(strUA, bArrSj);
        }
    }

    private byte[] Sj(com.bytedance.sdk.component.HiB.TKC.TKC tkc, String str) {
        tkc.TzV().TKC(tkc.RiZ());
        Collection<com.bytedance.sdk.component.HiB.TKC> collectionTKC = tkc.TzV().TKC();
        if (collectionTKC == null) {
            return null;
        }
        Iterator<com.bytedance.sdk.component.HiB.TKC> it = collectionTKC.iterator();
        while (it.hasNext()) {
            byte[] bArrSj = it.next().Sj(str);
            if (bArrSj != null) {
                return bArrSj;
            }
        }
        return null;
    }

    @Override
    public String Sj() {
        return "disk_cache";
    }
}
