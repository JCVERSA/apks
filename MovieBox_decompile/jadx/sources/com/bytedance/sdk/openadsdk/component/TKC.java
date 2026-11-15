package com.bytedance.sdk.openadsdk.component;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.HiB.Dq;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.Zq;
import com.bytedance.sdk.openadsdk.core.widget.uvD;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

public class TKC {
    protected FrameLayout Dq;
    protected final FrameLayout EjP;
    private RelativeLayout Fmk;
    protected final com.bytedance.sdk.openadsdk.component.Sj HiB;
    protected int Jcg;
    private View LqL;
    private Dq RiZ;
    protected final Activity Sj;
    protected com.bytedance.sdk.openadsdk.core.HiB.EjP TEQ;
    protected final boolean TKC;
    private uvD TzV;
    protected Dq Ym;
    private PAGLogoView Zq;

    protected final com.bytedance.sdk.openadsdk.component.Dq.Sj f20370aa;
    private ImageView dNu;

    private float f20371dx;

    @NonNull
    private final com.bytedance.sdk.openadsdk.component.uA.Dq f20372ib = new com.bytedance.sdk.openadsdk.component.uA.Dq();
    private com.bytedance.sdk.openadsdk.component.Dq.TKC kF;
    private Zq ley;
    protected final sU sP;
    private Dq sU;
    private ImageView sef;
    protected View uA;
    private Dq uP;
    private Dq uvD;
    protected final int vS;
    private com.bytedance.sdk.openadsdk.core.HiB.EjP wE;
    private float zR;

    public static class Sj implements vS.EjP {
        WeakReference<Activity> Sj;
        WeakReference<TKC> sP;

        Sj(Activity activity, TKC tkc) {
            this.Sj = new WeakReference<>(activity);
            this.sP = new WeakReference<>(tkc);
        }

        @Override
        public void Sj(Bitmap bitmap) {
            TKC tkc;
            if (this.Sj.get() == null || this.Sj.get().isFinishing() || (tkc = this.sP.get()) == null) {
                return;
            }
            tkc.Sj(bitmap);
        }
    }

    public static class sP implements com.bytedance.sdk.openadsdk.utils.uvD.Sj {
        private final WeakReference<TKC> Sj;

        public sP(TKC tkc) {
            this.Sj = new WeakReference<>(tkc);
        }

        @Override
        public void Sj() {
        }

        @Override
        public void Sj(com.bytedance.sdk.openadsdk.TzV.Sj.sP sPVar) {
            TKC tkc;
            if (!sPVar.EjP() || (tkc = this.Sj.get()) == null) {
                return;
            }
            tkc.Sj(sPVar);
            if (sPVar.sP() != null) {
                tkc.Sj(sPVar.Sj());
            }
        }
    }

    public TKC(Activity activity, sU sUVar, FrameLayout frameLayout, com.bytedance.sdk.openadsdk.component.Sj sj2, int i10, boolean z10, com.bytedance.sdk.openadsdk.component.Dq.Sj sj3) {
        this.Sj = activity;
        this.sP = sUVar;
        this.EjP = frameLayout;
        this.Jcg = i10;
        this.TKC = z10;
        this.HiB = sj2;
        this.vS = sUVar.If();
        this.f20370aa = sj3;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x008f  */
    private void Dq() {
        boolean z10;
        this.f20372ib.Sj();
        this.uvD.setText(this.sP.Ir());
        if (this.sP.yfI()) {
            uA();
            return;
        }
        if (this.TKC) {
            sP(0);
            Sj(8);
            if (Sj(this.Dq)) {
                this.HiB.TKC();
            } else {
                this.HiB.EjP();
            }
            vS.Sj(this.sP, new Sj(this.Sj, this), 25);
        } else {
            sP(8);
            Sj(0);
            TEQ();
            this.HiB.TKC();
        }
        boolean z11 = true;
        if (this.uP == null) {
            z10 = false;
        } else {
            if (!TextUtils.isEmpty(this.sP.dwU())) {
                this.uP.setText(this.sP.dwU());
            } else if (this.sP.tz() != null) {
                this.uP.setText(this.sP.tz().sP());
            } else {
                z10 = false;
            }
            z10 = true;
        }
        if (this.wE != null) {
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.sP.EZ(), this.wE, this.sP);
        }
        Zq zq2 = this.ley;
        if (zq2 != null) {
            FPG.Sj((TextView) null, zq2, this.sP);
            if (this.sP.tz() == null || this.sP.tz().EjP() < 0.0d) {
                this.ley.setVisibility(8);
                z11 = z10;
            }
        } else {
            z11 = z10;
        }
        View view = this.LqL;
        if (view != null) {
            view.setVisibility(z11 ? 0 : 8);
        }
    }

    private void TEQ() {
        com.bytedance.sdk.openadsdk.core.model.uvD uvd = this.sP.Bml().get(0);
        com.bytedance.sdk.openadsdk.utils.uvD.Sj(new com.bytedance.sdk.openadsdk.TzV.Sj(uvd.Sj(), uvd.Jcg()), uvd.sP(), uvd.TKC(), new sP(this), com.bytedance.sdk.openadsdk.component.Jcg.Sj.sP(TextUtils.isEmpty(uvd.Jcg()) ? com.bytedance.sdk.component.utils.HiB.Sj(uvd.Sj()) : uvd.Jcg()).getParent(), 25);
    }

    private void uA() {
        if (this.RiZ != null) {
            if (this.sP.tz() != null && !TextUtils.isEmpty(this.sP.tz().sP())) {
                this.RiZ.setText(this.sP.tz().sP());
            } else if (TextUtils.isEmpty(this.sP.dwU())) {
                this.RiZ.setVisibility(8);
            } else {
                this.RiZ.setText(this.sP.dwU());
            }
        }
        if (this.sU != null) {
            if (TextUtils.isEmpty(this.sP.xu())) {
                this.sU.setVisibility(8);
            } else {
                this.sU.setText(this.sP.xu());
            }
        }
        if (this.TzV != null && this.sP.EZ() != null && !TextUtils.isEmpty(this.sP.EZ().Sj())) {
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.sP.EZ().Sj(), this.sP.EZ().sP(), this.sP.EZ().TKC(), this.TzV, this.sP);
        }
        this.HiB.TKC();
    }

    public int EjP() {
        return -1;
    }

    public com.bytedance.sdk.openadsdk.component.Dq.TKC Jcg() {
        return this.kF;
    }

    public JSONObject Sj(JSONObject jSONObject) {
        return null;
    }

    public void TKC() {
        com.bytedance.sdk.openadsdk.component.Dq.TKC tkc = this.kF;
        if (tkc != null) {
            tkc.Ym();
        }
    }

    public void sP() {
        if (this.sP.hzV()) {
            this.HiB.TKC();
        } else {
            Dq();
        }
    }

    protected void vS() {
        this.uA.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                com.bytedance.sdk.openadsdk.component.Sj sj2 = TKC.this.HiB;
                if (sj2 != null) {
                    sj2.sP(view);
                }
            }
        });
        this.TEQ.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                com.bytedance.sdk.openadsdk.component.Sj sj2 = TKC.this.HiB;
                if (sj2 != null) {
                    sj2.Sj(view);
                }
            }
        });
    }

    public void Sj(ViewGroup viewGroup) {
        com.bytedance.sdk.openadsdk.component.uA.TKC ejP = new com.bytedance.sdk.openadsdk.component.uA.EjP(this.Sj, this.sP);
        int iTzV = this.sP.TzV();
        if (iTzV == 5) {
            ejP = new com.bytedance.sdk.openadsdk.component.uA.vS(this.Sj, this.sP);
        } else if (iTzV == 4) {
            ejP = new com.bytedance.sdk.openadsdk.component.uA.HiB(this.Sj, this.sP);
        }
        this.Fmk = ejP;
        viewGroup.addView(ejP);
        this.dNu = ejP.getBackImage();
        this.Dq = ejP.getVideoContainer();
        this.sef = ejP.getImageView();
        this.uvD = ejP.getClickButton();
        this.Zq = ejP.getAdLogo();
        this.uP = ejP.getAdTitleTextView();
        this.wE = ejP.getAdIconView();
        this.ley = ejP.getScoreBar();
        this.LqL = ejP.getOverlayLayout();
        if (this.sP.yfI()) {
            this.TzV = ejP.getIconOnlyView();
            this.RiZ = ejP.getTitle();
            this.sU = ejP.getContent();
        }
        if (ejP.getDspAdChoice() != null) {
            ejP.getDspAdChoice().Sj(14, this.sP);
        }
        if (!this.sP.hzV()) {
            this.f20372ib.Sj(ejP, this.sP, this.zR, this.f20371dx, this.TKC);
        }
        this.uA = ejP.getTopDisLike();
        this.TEQ = ejP.getTopSkip();
        this.Ym = ejP.getTopCountDown();
        if (ejP instanceof com.bytedance.sdk.openadsdk.component.uA.HiB) {
            ((com.bytedance.sdk.openadsdk.component.uA.HiB) ejP).setRenderListener(new com.bytedance.sdk.openadsdk.component.uA.HiB.Sj() {
                @Override
                public void Sj(View view, int i10) {
                    TKC.this.HiB.HiB();
                }
            });
        }
    }

    private void sP(int i10) {
        FPG.Sj((View) this.Dq, i10);
    }

    public void HiB() {
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void Sj() {
        this.Zq.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                try {
                    TKC tkc = TKC.this;
                    TTWebsiteActivity.Sj(tkc.Sj, tkc.sP, "open_ad");
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("AppOpenAdNativeManager", th2.getMessage());
                }
            }
        });
        vS();
        if (this.sP.hzV()) {
            return;
        }
        com.bytedance.sdk.openadsdk.component.Sj.Sj Sj2 = com.bytedance.sdk.openadsdk.component.Sj.sP.Sj(this.sP, this.Sj, this.f20370aa);
        Sj2.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() {
            @Override
            public void Sj(View view, int i10) {
                TKC.this.HiB.HiB();
            }
        });
        Sj2.Sj(this.kF);
        if (this.sP.dNu() == 1) {
            this.Fmk.setOnClickListener(Sj2);
            this.Fmk.setOnTouchListener(Sj2);
        }
        this.uvD.setOnClickListener(Sj2);
        this.uvD.setOnTouchListener(Sj2);
    }

    protected boolean Sj(FrameLayout frameLayout) {
        com.bytedance.sdk.openadsdk.component.Dq.TKC tkc = new com.bytedance.sdk.openadsdk.component.Dq.TKC(this.Sj);
        this.kF = tkc;
        return tkc.Sj(frameLayout, this.HiB, this.sP);
    }

    public void Sj(Bitmap bitmap) {
        if (bitmap != null) {
            try {
                this.dNu.setImageDrawable(new BitmapDrawable(dNu.Sj().getResources(), bitmap));
            } catch (Throwable unused) {
                com.bytedance.sdk.component.utils.sU.sP("AppOpenAdNativeManager", "open_ad", "bindBackGroundImage error");
            }
        }
    }

    void Sj(com.bytedance.sdk.openadsdk.TzV.Sj.sP sPVar) {
        if (this.sef == null) {
            return;
        }
        if (sPVar.sP() != null) {
            this.sef.setImageBitmap(sPVar.sP());
            return;
        }
        if (this.sP.Bml() == null || this.sP.Bml().get(0) == null) {
            return;
        }
        Drawable drawableSj = com.bytedance.sdk.openadsdk.utils.uvD.Sj(sPVar.TKC(), this.sP.Bml().get(0).sP());
        this.sef.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.sef.setImageDrawable(drawableSj);
    }

    void Sj(int i10) {
        FPG.Sj((View) this.sef, i10);
    }

    public void Sj(float f10, float f11) {
        this.zR = f10;
        this.f20371dx = f11;
    }

    public void Sj(int i10, boolean z10) {
        Dq dq2;
        if (this.TEQ == null || (dq2 = this.Ym) == null) {
            return;
        }
        if (z10) {
            if (dq2.getVisibility() != 8) {
                this.Ym.setVisibility(8);
            }
            if (this.TEQ.getVisibility() != 0) {
                this.TEQ.setVisibility(0);
                return;
            }
            return;
        }
        this.Ym.setText(i10 + "s");
        if (this.Ym.getVisibility() != 0) {
            this.Ym.setVisibility(0);
        }
    }
}
