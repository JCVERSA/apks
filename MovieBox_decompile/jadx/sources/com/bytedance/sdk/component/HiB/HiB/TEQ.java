package com.bytedance.sdk.component.HiB.HiB;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.HiB.dNu;
import java.util.Collection;
import java.util.Iterator;

public class TEQ extends Sj {
    private Bitmap TKC(com.bytedance.sdk.component.HiB.TKC.TKC tkc) {
        return tkc.TzV().Sj(tkc.RiZ()).Sj(tkc.TEQ());
    }

    private Bitmap sP(com.bytedance.sdk.component.HiB.TKC.TKC tkc) {
        Collection<dNu> collectionSj = tkc.TzV().Sj();
        Bitmap bitmapSj = null;
        if (collectionSj == null) {
            return null;
        }
        Iterator<dNu> it = collectionSj.iterator();
        while (it.hasNext() && (bitmapSj = it.next().Sj(tkc.TEQ())) == null) {
        }
        return bitmapSj;
    }

    @Override
    public void Sj(com.bytedance.sdk.component.HiB.TKC.TKC tkc) {
        Bitmap bitmapSP;
        int iAa = tkc.aa();
        if (iAa == 2 || iAa == 1) {
            bitmapSP = (tkc.sU() || tkc.RiZ().uA()) ? sP(tkc) : TKC(tkc);
        } else {
            bitmapSP = null;
        }
        if (bitmapSP == null) {
            tkc.Sj(new aa());
        } else {
            tkc.Sj(new Fmk(bitmapSP, null, false));
        }
    }

    @Override
    public String Sj() {
        return "memory_cache";
    }
}
