package com.bytedance.sdk.openadsdk.core.Dq;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.utils.FPG;
import w5.b;
import w5.c;

public class Zq extends com.bytedance.sdk.openadsdk.core.aa.sP.vS implements View.OnClickListener {
    private boolean uvD;

    public Zq(@NonNull Context context, @NonNull com.bytedance.sdk.openadsdk.core.model.sU sUVar, String str, com.bytedance.sdk.openadsdk.EjP.Jcg jcg) {
        super(context, sUVar, false, str, false, false, jcg);
        this.uvD = false;
        setOnClickListener(this);
        setNeedNativeVideoPlayBtnVisible(false);
    }

    private void TzV() {
        Jcg();
        RelativeLayout relativeLayout = this.Jcg;
        if (relativeLayout != null) {
            if (relativeLayout.getVisibility() == 0) {
                return;
            } else {
                com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.Sj.UHs().r(), this.Sj.UHs().t(), this.Sj.UHs().C(), this.Dq, this.Sj);
            }
        }
        dNu();
    }

    private void dNu() {
        FPG.Sj((View) this.Jcg, 0);
        FPG.Sj((View) this.Dq, 0);
        FPG.Sj((View) this.TEQ, 8);
    }

    public void EjP() {
        ImageView imageView = this.TEQ;
        if (imageView != null) {
            FPG.Sj((View) imageView, 8);
        }
    }

    protected void HiB() {
        Jcg();
        FPG.Sj((View) this.Jcg, 0);
    }

    @Override
    protected void Sj(boolean z10) {
    }

    @Override
    protected void TKC() {
        if (this.uvD) {
            super.TKC();
        }
    }

    @Override
    public void onClick(View view) {
        ImageView imageView = this.uA;
        if (imageView != null && imageView.getVisibility() == 0) {
            FPG.HiB(this.Jcg);
        }
        TKC();
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        ImageView imageView = this.uA;
        if (imageView == null || imageView.getVisibility() != 0) {
            super.onWindowFocusChanged(z10);
        } else {
            TzV();
        }
    }

    @Override
    protected void onWindowVisibilityChanged(int i10) {
        ImageView imageView = this.uA;
        if (imageView == null || imageView.getVisibility() != 0) {
            super.onWindowVisibilityChanged(i10);
        } else {
            TzV();
        }
    }

    @Override
    protected void sP() {
        if (!this.HiB || !ib.sP(this.f20442aa)) {
            this.EjP = false;
        }
        super.sP();
    }

    public void setCanInterruptVideoPlay(boolean z10) {
        this.uvD = z10;
    }

    public void setShouldCheckNetChange(boolean z10) {
        b bVar = this.sP;
        if (bVar != null) {
            bVar.EjP(z10);
        }
    }

    public void setShowAdInteractionView(boolean z10) {
        c cVarFmk;
        b bVar = this.sP;
        if (bVar == null || (cVarFmk = bVar.Fmk()) == null) {
            return;
        }
        cVarFmk.Sj(z10);
    }

    public void Sj(int i10, int i11) {
        b bVar = this.sP;
        if (bVar != null) {
            ((com.bytedance.sdk.openadsdk.core.aa.sP.TKC) bVar).sP(i10, i11);
        }
    }
}
