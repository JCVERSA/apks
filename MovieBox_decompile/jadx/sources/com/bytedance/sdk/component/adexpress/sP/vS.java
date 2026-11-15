package com.bytedance.sdk.component.adexpress.sP;

import android.content.Context;
import android.view.View;

public class vS implements TEQ {
    private Context Sj;
    private Fmk TKC;
    private Sj sP;

    public vS(Context context, Fmk fmk, Sj sj2) {
        this.Sj = context;
        this.sP = sj2;
        this.TKC = fmk;
    }

    @Override
    public void Sj() {
    }

    @Override
    public boolean Sj(final TEQ.Sj sj2) {
        this.TKC.HiB().vS();
        this.sP.Sj(new Jcg() {
            @Override
            public void Sj(View view, sef sefVar) {
                if (sj2.TKC()) {
                    return;
                }
                Zq zqSP = sj2.sP();
                if (zqSP != null) {
                    zqSP.Sj(vS.this.sP, sefVar);
                }
                sj2.Sj(true);
            }

            @Override
            public void Sj(int i10, String str) {
                Zq zqSP = sj2.sP();
                if (zqSP != null) {
                    zqSP.a_(i10);
                }
            }
        });
        return true;
    }

    public void Sj(TKC tkc) {
        this.sP.Sj(tkc);
    }
}
