package com.bytedance.sdk.openadsdk.Sj.sP;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGImageItem;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoMediaView;
import com.bytedance.sdk.openadsdk.core.Dq.RiZ;
import com.bytedance.sdk.openadsdk.core.Dq.TzV;
import com.bytedance.sdk.openadsdk.core.Dq.uA;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uvD;
import com.bytedance.sdk.openadsdk.core.settings.Fmk;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.lang.ref.WeakReference;
import java.util.List;

public class Sj {
    private PAGMediaView Dq;
    private boolean EjP;
    private boolean Fmk = false;
    private WeakReference<com.bytedance.sdk.openadsdk.core.aa.sP.vS> HiB;
    private com.bytedance.sdk.openadsdk.Sj.sP.Sj.TKC Jcg;
    protected final sU Sj;
    private PAGMediaView TEQ;
    private final String TKC;
    private com.bytedance.sdk.openadsdk.core.sP.Sj Ym;

    private com.bytedance.sdk.openadsdk.core.sP.sP f20328aa;
    private final Context sP;
    private WeakReference<com.bytedance.sdk.openadsdk.core.Ym.vS> sef;
    private RiZ uA;
    private sP vS;

    public Sj(Context context, sU sUVar, String str) {
        this.sP = context;
        this.Sj = sUVar;
        this.TKC = str;
    }

    private PAGMediaView sef() {
        if (!sU.HiB(this.Sj)) {
            com.bytedance.sdk.openadsdk.Sj.sP.Sj.TKC tkc = this.Jcg;
            if (tkc == null) {
                return null;
            }
            RiZ riZEjP = tkc.EjP();
            riZEjP.setTag(520093762, Boolean.TRUE);
            if (!this.Fmk) {
                this.Jcg.HiB();
            }
            this.Fmk = true;
            return Sj(riZEjP);
        }
        com.bytedance.sdk.openadsdk.Sj.sP.Sj.TKC tkc2 = this.Jcg;
        if (tkc2 == null || !(tkc2 instanceof com.bytedance.sdk.openadsdk.Sj.sP.Sj.sP)) {
            return null;
        }
        TzV tzV = (TzV) tkc2.EjP();
        tzV.setTag(520093762, Boolean.TRUE);
        if (!this.Fmk) {
            this.Jcg.HiB();
        }
        this.Fmk = true;
        return Sj(tzV);
    }

    public PAGMediaView Dq() {
        return this.TEQ;
    }

    public String EjP() {
        sU sUVar = this.Sj;
        if (sUVar != null) {
            return Sj(sUVar);
        }
        return null;
    }

    public void Fmk() {
        com.bytedance.sdk.openadsdk.core.Ym.vS vSVar;
        WeakReference<com.bytedance.sdk.openadsdk.core.Ym.vS> weakReference = this.sef;
        if (weakReference == null || (vSVar = weakReference.get()) == null) {
            return;
        }
        vSVar.Sj(13);
    }

    public String HiB() {
        sU sUVar = this.Sj;
        if (sUVar != null) {
            return sP(sUVar);
        }
        return null;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public PAGMediaView Jcg() {
        PAGMediaView pAGMediaViewUA;
        com.bytedance.sdk.openadsdk.utils.sP.Sj(this.Sj);
        if (this.Sj.ley() == 2) {
            pAGMediaViewUA = sef();
            Sj(pAGMediaViewUA);
        } else {
            pAGMediaViewUA = uA();
        }
        if (pAGMediaViewUA != null) {
            pAGMediaViewUA.setMrcTrackerKey(com.bytedance.sdk.openadsdk.kF.sP.HiB.sP(this.Sj));
        } else {
            pAGMediaViewUA = new PAGMediaView(this.sP) {
                @Override
                protected void onAttachedToWindow() {
                    super.onAttachedToWindow();
                    com.bytedance.sdk.openadsdk.utils.EjP.Sj(this, Sj.this.Sj);
                }
            };
        }
        if (pAGMediaViewUA instanceof PAGVideoMediaView) {
            ((PAGVideoMediaView) pAGMediaViewUA).setMaterialMeta(this.Sj);
        }
        this.TEQ = pAGMediaViewUA;
        return pAGMediaViewUA;
    }

    public void Sj(sP sPVar) {
        this.vS = sPVar;
    }

    public View TEQ() {
        if (dNu.Sj() == null) {
            return null;
        }
        PAGLogoView pAGLogoView = new PAGLogoView(dNu.Sj()) {
            int Sj = 0;
            int sP = 0;

            @Override
            protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
                super.onLayout(z10, i10, i11, i12, i13);
                try {
                    Object parent = getParent();
                    if (parent == null || this.Sj == 0 || this.sP == 0) {
                        return;
                    }
                    int width = ((View) parent).getWidth();
                    int height = ((View) parent).getHeight();
                    int i14 = this.Sj;
                    if (width < i14 || height < this.sP) {
                        float fMin = Math.min(height / this.sP, width / i14);
                        int i15 = (width - this.Sj) / 2;
                        if (fMin != 1.0f) {
                            setScaleX(fMin);
                            setScaleY(fMin);
                            setTranslationX(i15);
                        }
                    }
                } catch (Throwable th2) {
                    th2.getMessage();
                }
            }

            @Override
            protected void onMeasure(int i10, int i11) {
                if (this.Sj == 0) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(1073741823, Integer.MIN_VALUE), i11);
                    this.Sj = getMeasuredWidth();
                    this.sP = this.containerHeight;
                }
                setMeasuredDimension(this.Sj, this.sP);
            }
        };
        pAGLogoView.initData(this.Sj);
        pAGLogoView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Sj.this.aa();
            }
        });
        return pAGLogoView;
    }

    public PAGImageItem TKC() {
        sU sUVar = this.Sj;
        if (sUVar == null || sUVar.EZ() == null) {
            return null;
        }
        return new PAGImageItem(this.Sj.EZ().TKC(), this.Sj.EZ().sP(), this.Sj.EZ().Sj(), (float) this.Sj.EZ().EjP());
    }

    public View Ym() {
        sU sUVar;
        if (dNu.Sj() == null || (sUVar = this.Sj) == null || !sUVar.Ph() || !this.Sj.aa()) {
            return null;
        }
        ImageView imageView = new ImageView(dNu.Sj());
        com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj((int) FPG.Sj(dNu.Sj(), 14.0f, true), imageView, this.Sj);
        return imageView;
    }

    public void aa() {
        Context context = this.sP;
        if (context != null) {
            TTWebsiteActivity.Sj(context, this.Sj, this.TKC);
        }
    }

    public RiZ sP() {
        return this.uA;
    }

    public PAGMediaView uA() {
        if (!sU.HiB(this.Sj)) {
            List<uvD> listBml = this.Sj.Bml();
            if (listBml == null || listBml.isEmpty()) {
                ApmHelper.reportCustomError("images empty", "getMediaView return null", new RuntimeException());
                return null;
            }
            ImageView imageView = new ImageView(this.sP);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            uvD uvd = listBml.get(0);
            if (uvd != null) {
                com.bytedance.sdk.openadsdk.uA.EjP.Sj(uvd).TKC(2).Sj(com.bytedance.sdk.openadsdk.uA.TKC.Sj(this.Sj, uvd.Sj(), imageView));
            }
            PAGMediaView pAGMediaViewSj = Sj(imageView);
            if (this.Ym == null || !Fmk.gq().EjP(String.valueOf(this.Sj.If()))) {
                pAGMediaViewSj.setOnClickListener(null);
                pAGMediaViewSj.setOnTouchListener(null);
            } else {
                pAGMediaViewSj.setOnClickListener(this.Ym);
                pAGMediaViewSj.setOnTouchListener(this.Ym);
            }
            pAGMediaViewSj.setTag(520093762, Boolean.TRUE);
            PAGMediaView pAGMediaView = this.Dq;
            if (pAGMediaView != null) {
                pAGMediaView.setOnClickListener(null);
                this.Dq.setOnTouchListener(null);
            }
            this.Dq = pAGMediaViewSj;
            return pAGMediaViewSj;
        }
        sP sPVar = this.vS;
        if (sPVar == null) {
            ApmHelper.reportCustomError("mPAGFeedVideoAdImpl null", "getMediaView return null", new RuntimeException());
            return null;
        }
        View viewHiB = sPVar.HiB();
        if (viewHiB == null) {
            ApmHelper.reportCustomError("adVideoView null", "getMediaView return null", new RuntimeException());
            return null;
        }
        if (viewHiB.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewHiB.getParent()).removeView(viewHiB);
        }
        PAGMediaView pAGMediaView2 = this.Dq;
        if (pAGMediaView2 != null) {
            pAGMediaView2.setOnClickListener(null);
            this.Dq.setOnTouchListener(null);
        }
        PAGVideoMediaView pAGVideoMediaView = new PAGVideoMediaView(this.sP, viewHiB, this);
        pAGVideoMediaView.setTag(520093762, Boolean.TRUE);
        if (this.Ym == null || !Fmk.gq().EjP(String.valueOf(this.Sj.If()))) {
            com.bytedance.sdk.openadsdk.core.sP.TKC tkc = new com.bytedance.sdk.openadsdk.core.sP.TKC() {
                @Override
                protected void Sj(View view, float f10, float f11, float f12, float f13, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, boolean z10) {
                    try {
                        ((PAGVideoMediaView) view).handleInterruptVideo();
                    } catch (Exception unused) {
                    }
                }
            };
            pAGVideoMediaView.setOnClickListener(tkc);
            pAGVideoMediaView.setOnTouchListener(tkc);
        } else {
            pAGVideoMediaView.setOnClickListener(this.Ym);
            pAGVideoMediaView.setOnTouchListener(this.Ym);
        }
        this.Dq = pAGVideoMediaView;
        pAGVideoMediaView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return pAGVideoMediaView;
    }

    public String vS() {
        sU sUVar = this.Sj;
        if (sUVar != null) {
            return sUVar.Ir();
        }
        return null;
    }

    private String sP(sU sUVar) {
        if (TextUtils.isEmpty(sUVar.xu())) {
            return !TextUtils.isEmpty(sUVar.gR()) ? sUVar.gR() : "";
        }
        return sUVar.xu();
    }

    public void Sj(com.bytedance.sdk.openadsdk.Sj.sP.Sj.TKC tkc) {
        this.Jcg = tkc;
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar) {
        this.HiB = new WeakReference<>(vSVar);
    }

    public void Sj(boolean z10) {
        this.EjP = z10;
    }

    public PAGMediaView Sj() {
        return this.Dq;
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.sP.Sj sj2) {
        this.Ym = sj2;
    }

    private String Sj(sU sUVar) {
        if (sUVar.tz() != null && !TextUtils.isEmpty(sUVar.tz().sP())) {
            return sUVar.tz().sP();
        }
        if (!TextUtils.isEmpty(sUVar.dwU())) {
            return sUVar.dwU();
        }
        if (!TextUtils.isEmpty(sUVar.xu())) {
            return sUVar.xu();
        }
        return "";
    }

    private TKC sP(final PAGVideoAdListener pAGVideoAdListener) {
        return new TKC() {
            @Override
            public void Sj(int i10, int i11) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoError();
                }
            }

            @Override
            public void TKC(PAGNativeAd pAGNativeAd) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdComplete();
                }
            }

            @Override
            public void sP(PAGNativeAd pAGNativeAd) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPaused();
                }
            }

            @Override
            public void Sj(PAGNativeAd pAGNativeAd) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPlay();
                }
            }
        };
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.sP.sP sPVar) {
        this.f20328aa = sPVar;
    }

    private void Sj(PAGMediaView pAGMediaView) {
        if (pAGMediaView == null) {
            return;
        }
        try {
            pAGMediaView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        } catch (Exception unused) {
        }
    }

    private PAGMediaView Sj(final View view) {
        int i10;
        if (view == null) {
            return null;
        }
        if (view.getParent() instanceof ViewGroup) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        RiZ riZ = this.uA;
        if (riZ != null) {
            riZ.setClickListener(null);
            this.uA.setClickCreativeListener(null);
        }
        com.bytedance.sdk.openadsdk.core.sP.sP sPVar = this.f20328aa;
        if (sPVar != null && (sPVar instanceof uA) && (view instanceof RiZ)) {
            ((RiZ) view).setClickListener((uA) sPVar);
        }
        com.bytedance.sdk.openadsdk.core.sP.Sj sj2 = this.Ym;
        if (sj2 != null && (sj2 instanceof com.bytedance.sdk.openadsdk.core.Dq.Dq) && (view instanceof RiZ)) {
            ((RiZ) view).setClickCreativeListener((com.bytedance.sdk.openadsdk.core.Dq.Dq) sj2);
        }
        PAGMediaView pAGMediaView = new PAGMediaView(this.sP) {
            private void Sj(boolean z10) {
                Integer num = this.Sj;
                if (num != null) {
                    com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(num), z10 ? 4 : 8);
                }
                sU sUVar = Sj.this.Sj;
                if (sUVar != null) {
                    com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(sUVar, z10);
                }
            }

            @Override
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                com.bytedance.sdk.openadsdk.utils.EjP.Sj(this, Sj.this.Sj);
            }

            @Override
            public void onWindowFocusChanged(boolean z10) {
                super.onWindowFocusChanged(z10);
                if (view instanceof RiZ) {
                    return;
                }
                Sj(z10);
            }

            @Override
            public void setVideoAdListener(PAGVideoAdListener pAGVideoAdListener) {
                super.setVideoAdListener(pAGVideoAdListener);
                Sj.this.Sj(pAGVideoAdListener);
            }
        };
        int i11 = -1;
        pAGMediaView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            i11 = layoutParams.width;
            i10 = layoutParams.height;
        } else {
            i10 = -1;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i11, i10);
        layoutParams2.gravity = 17;
        pAGMediaView.addView(view, layoutParams2);
        if (view instanceof RiZ) {
            this.uA = (RiZ) view;
        }
        return pAGMediaView;
    }

    public void Sj(PAGVideoAdListener pAGVideoAdListener) {
        com.bytedance.sdk.openadsdk.Sj.sP.Sj.TKC tkc;
        if (this.Sj.ley() == 2 && sU.HiB(this.Sj) && (tkc = this.Jcg) != null && (tkc instanceof com.bytedance.sdk.openadsdk.Sj.sP.Sj.sP)) {
            TzV tzV = (TzV) tkc.EjP();
            if (tzV != null) {
                tzV.setVideoAdListener(sP(pAGVideoAdListener));
                return;
            }
            return;
        }
        sP sPVar = this.vS;
        if (sPVar != null) {
            sPVar.Sj(sP(pAGVideoAdListener));
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.Ym.vS vSVar) {
        this.sef = new WeakReference<>(vSVar);
    }
}
