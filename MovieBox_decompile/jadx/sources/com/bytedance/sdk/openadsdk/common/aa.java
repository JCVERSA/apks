package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.RiZ;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.wE;

public class aa extends com.bytedance.sdk.openadsdk.core.HiB.TKC {
    private long EjP;
    private Runnable HiB;
    private int Jcg;
    protected Ym Sj;
    private int TKC;
    protected boolean sP;
    private Runnable vS;

    public aa(@NonNull Context context) {
        super(context);
        this.EjP = 10L;
        this.sP = true;
        this.Jcg = 1;
        TKC();
    }

    private void TKC() {
        setBackgroundColor(Color.parseColor("#2E2E2E"));
        setVisibility(8);
    }

    public void sP(int i10) {
        Ym ym2 = this.Sj;
        if (ym2 != null) {
            ym2.Sj(i10);
        }
        if (i10 == 100 && this.sP) {
            sP();
        }
    }

    public Ym getLoadingStyle() {
        return this.Sj;
    }

    @Override
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TKC(configuration.orientation);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.HiB;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.HiB = null;
        }
    }

    private void TKC(int i10) {
        if (this.Jcg != i10) {
            this.Jcg = i10;
        }
    }

    public void Sj(sU sUVar) {
        RiZ riZFmk;
        if (sUVar != null && (riZFmk = sUVar.Fmk()) != null) {
            this.EjP = riZFmk.Sj();
        }
        Ym ym2 = new Ym(getContext());
        this.Sj = ym2;
        View viewSj = ym2.Sj();
        if (viewSj.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewSj.getParent()).removeView(viewSj);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        viewSj.setLayoutParams(layoutParams);
        if (sUVar != null) {
            boolean zIOh = sUVar.IOh();
            com.bytedance.sdk.openadsdk.core.widget.uvD uvdSP = this.Sj.sP();
            if (uvdSP != null) {
                if (zIOh) {
                    uvdSP.setVisibility(8);
                } else {
                    com.bytedance.sdk.openadsdk.core.model.uvD uvdEZ = (sUVar.EZ() == null || TextUtils.isEmpty(sUVar.EZ().Sj())) ? null : sUVar.EZ();
                    if (uvdEZ != null && !TextUtils.isEmpty(uvdEZ.Sj())) {
                        try {
                            com.bytedance.sdk.openadsdk.uA.EjP.Sj(uvdEZ).TKC(2).Sj(new com.bytedance.sdk.openadsdk.uA.sP(sUVar, uvdEZ.Sj(), new wE(uvdSP)));
                        } catch (Throwable unused) {
                            uvdSP.setVisibility(8);
                        }
                    } else {
                        uvdSP.setVisibility(8);
                    }
                }
            }
            com.bytedance.sdk.openadsdk.core.HiB.Dq dqTKC = this.Sj.TKC();
            if (dqTKC != null) {
                if (zIOh) {
                    dqTKC.setText("Loading");
                } else if (!TextUtils.isEmpty(sUVar.xu())) {
                    dqTKC.setText(sUVar.xu());
                } else {
                    dqTKC.setVisibility(8);
                }
            }
        }
        addView(viewSj);
        TKC(getResources().getConfiguration().orientation);
    }

    public void sP() {
        this.TKC = 0;
        Ym ym2 = this.Sj;
        if (ym2 != null) {
            removeView(ym2.Sj);
            this.Sj.EjP();
        }
        setVisibility(8);
        this.Sj = null;
        Runnable runnable = this.HiB;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = this.vS;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
        }
        this.vS = null;
        this.HiB = null;
    }

    public void Sj() {
        post(new Runnable() {
            @Override
            public void run() {
                aa aaVar = aa.this;
                if (aaVar.Sj != null) {
                    aaVar.setVisibility(0);
                }
            }
        });
        if (this.HiB == null) {
            this.HiB = new Runnable() {
                @Override
                public void run() {
                    aa.this.sP();
                }
            };
        }
        postDelayed(this.HiB, this.EjP * 1000);
    }

    public void Sj(int i10) {
        if (i10 == 100 || Math.abs(i10 - this.TKC) >= 7) {
            this.TKC = i10;
            if (h6.a.x()) {
                sP(this.TKC);
                return;
            }
            if (this.vS == null) {
                this.vS = new Runnable() {
                    @Override
                    public void run() {
                        aa aaVar = aa.this;
                        aaVar.sP(aaVar.TKC);
                    }
                };
            }
            post(this.vS);
        }
    }
}
