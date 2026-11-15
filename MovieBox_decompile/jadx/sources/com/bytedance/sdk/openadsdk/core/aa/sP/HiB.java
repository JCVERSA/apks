package com.bytedance.sdk.openadsdk.core.aa.sP;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Message;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import c6.a;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.HiB.Ym;
import com.bytedance.sdk.component.HiB.uvD;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.settings.Fmk;
import com.bytedance.sdk.openadsdk.core.widget.TzV;
import com.bytedance.sdk.openadsdk.core.widget.dNu;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.TEQ;
import com.bytedance.sdk.openadsdk.utils.Zq;
import com.hisavana.common.tracking.TrackingKey;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
import w5.b;
import w5.c;

public class HiB implements c, a, LqL.Sj, com.bytedance.sdk.openadsdk.core.sP.Sj.InterfaceC0258Sj, TzV.sP, dNu.Sj {
    ImageView Dq;
    com.bykv.vk.openvk.Sj.Sj.Sj.vS.a EjP;
    private vS.Sj FPG;
    com.bytedance.sdk.openadsdk.core.widget.Sj Fmk;
    ImageView HiB;
    com.bytedance.sdk.openadsdk.core.sP.Sj JcM;
    View Jcg;
    com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS LD;
    Sj LqL;
    boolean Mts;
    int RiZ;
    protected final int Sj;
    View TEQ;
    ViewGroup TKC;
    int TzV;
    com.bytedance.sdk.openadsdk.core.sP.Sj WMZ;
    private long Wjd;
    boolean Yf;
    ImageView Ym;
    TextView Zq;

    View f20436aa;
    int dNu;

    boolean f20437dx;
    b fF;

    int f20438ib;
    int kF;
    TzV ley;
    protected final int sP;
    int sU;
    TextView sef;
    View uA;
    sU uP;
    TextView uvD;
    View vS;
    Context wE;
    private final String xD;
    boolean zR;

    public HiB(Context context, ViewGroup viewGroup, boolean z10, int i10, sU sUVar, b bVar, boolean z11) {
        this.Sj = 228;
        this.sP = 160;
        this.f20437dx = true;
        this.Yf = true;
        this.Mts = true;
        this.xD = Build.MODEL;
        if (this instanceof EjP) {
            return;
        }
        this.wE = com.bytedance.sdk.openadsdk.core.dNu.Sj().getApplicationContext();
        EjP(z11);
        this.TKC = viewGroup;
        this.f20437dx = z10;
        this.kF = i10;
        this.fF = bVar;
        this.uP = sUVar;
        EjP(8);
        Sj(context, this.TKC);
        EjP();
        aa();
    }

    private boolean uP() {
        return sU.HiB(this.uP) && (!com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj(this.uP.fF()) ? this.uP.xhi() == null : this.uP.ndK() == null) && this.uP.LD() == 1;
    }

    public void Dq() {
        FPG.HiB(this.vS);
    }

    void EjP() {
        this.EjP.Sj(this);
        this.HiB.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (HiB.this.uvD()) {
                    TextView textView = HiB.this.uvD;
                    if (textView == null || textView.getVisibility() != 0) {
                        HiB hiB = HiB.this;
                        hiB.LqL.Sj(hiB, view);
                    }
                }
            }
        });
    }

    public com.bykv.vk.openvk.Sj.Sj.Sj.vS.a Fmk() {
        return this.EjP;
    }

    public void HiB() {
    }

    public void Jcg() {
        sU sUVar;
        FPG.vS(this.vS);
        FPG.vS(this.Jcg);
        if (this.Dq != null && (sUVar = this.uP) != null && sUVar.UHs() != null && this.uP.UHs().r() != null) {
            FPG.vS(this.Dq);
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.uP.UHs().r(), this.uP.UHs().t(), this.uP.UHs().C(), this.Dq, this.uP);
        }
        if (this.HiB.getVisibility() == 0) {
            FPG.Sj((View) this.HiB, 8);
        }
    }

    void RiZ() {
        try {
            FPG.Sj(this.TEQ, 8);
            FPG.Sj((View) this.Ym, 8);
            FPG.Sj(this.f20436aa, 8);
            FPG.Sj((View) this.Fmk, 8);
            FPG.Sj((View) this.sef, 8);
            FPG.Sj((View) this.Zq, 8);
            FPG.Sj((View) this.uvD, 8);
        } catch (Exception unused) {
        }
    }

    public void Sj(int i10) {
    }

    public boolean TEQ() {
        return false;
    }

    public void TKC(boolean z10) {
    }

    @TargetApi(14)
    public void TzV() {
        FPG.Sj((View) this.TKC, 0);
        com.bykv.vk.openvk.Sj.Sj.Sj.vS.a aVar = this.EjP;
        if (aVar != null) {
            FPG.Sj(aVar.getView(), 0);
        }
    }

    public void Ym() {
        Sj(true, false);
    }

    public void Zq() {
        TzV tzV = this.ley;
        if (tzV != null) {
            tzV.Sj(false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003b  */
    /* JADX WARN: Code duplicated, block: B:22:0x005c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0062  */
    /* JADX WARN: Code duplicated, block: B:31:0x0094  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    void aa() {
        String str;
        int i10;
        String str2;
        int i11;
        com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS vSVar;
        com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS vSVar2;
        com.bytedance.sdk.openadsdk.core.sP.Sj sj2;
        String str3 = this.Yf ? "embeded_ad" : "embeded_ad_landingpage";
        if (this.uP.TT()) {
            str2 = "rewarded_video";
            i11 = 7;
        } else {
            if (!this.uP.Ss()) {
                if (this.uP.ewz()) {
                    str2 = "banner_ad";
                    i11 = 2;
                } else {
                    str = str3;
                    i10 = 1;
                }
                if (this.uP.sdp() == 4) {
                    this.LD = Jcg.Sj(this.wE, this.uP, str);
                }
                com.bytedance.sdk.openadsdk.core.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.core.sP.Sj(this.wE, this.uP, str, i10);
                this.JcM = sj3;
                sj3.Sj(this);
                this.JcM.sP(true);
                if (this.Yf) {
                    this.JcM.Sj(true);
                } else {
                    this.JcM.Sj(false);
                    this.JcM.TKC(true);
                }
                this.JcM.Sj(this.fF);
                this.JcM.HiB(true);
                this.JcM.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() {
                    @Override
                    public void Sj(View view, int i12) {
                        if (HiB.this.FPG != null) {
                            HiB.this.FPG.Sj(view, i12);
                        }
                    }
                });
                vSVar = this.LD;
                if (vSVar != null && (sj2 = this.JcM) != null) {
                    sj2.Sj(vSVar);
                }
                if (uP()) {
                    com.bytedance.sdk.openadsdk.core.sP.Sj sj4 = new com.bytedance.sdk.openadsdk.core.sP.Sj(this.wE, this.uP, str, i10) {
                        @Override
                        public boolean TKC() {
                            View view = HiB.this.TEQ;
                            if (view != null && view.getVisibility() == 0) {
                                return true;
                            }
                            View view2 = HiB.this.f20436aa;
                            if (view2 != null && view2.getVisibility() == 0) {
                                return true;
                            }
                            com.bytedance.sdk.openadsdk.core.widget.Sj sj5 = HiB.this.Fmk;
                            if (sj5 != null && sj5.getVisibility() == 0) {
                                return true;
                            }
                            TextView textView = HiB.this.sef;
                            return textView != null && textView.getVisibility() == 0;
                        }

                        @Override
                        public boolean sP() {
                            TzV tzV = HiB.this.ley;
                            boolean zSj = tzV != null ? tzV.Sj() : false;
                            HiB.this.HiB.getVisibility();
                            return zSj || HiB.this.HiB.getVisibility() == 0;
                        }
                    };
                    this.WMZ = sj4;
                    sj4.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() {
                        @Override
                        public void Sj(View view, int i12) {
                            if (HiB.this.FPG != null) {
                                HiB.this.FPG.Sj(view, i12);
                            }
                        }
                    });
                    this.WMZ.sP(true);
                    this.WMZ.Sj(this.Yf);
                    this.WMZ.Sj(this.fF);
                    this.WMZ.HiB(true);
                    vSVar2 = this.LD;
                    if (vSVar2 != null) {
                        this.WMZ.Sj(vSVar2);
                    }
                    this.WMZ.Sj(this);
                }
            }
            str2 = "fullscreen_interstitial_ad";
            i11 = 5;
        }
        str = str2;
        i10 = i11;
        if (this.uP.sdp() == 4) {
            this.LD = Jcg.Sj(this.wE, this.uP, str);
        }
        com.bytedance.sdk.openadsdk.core.sP.Sj sj5 = new com.bytedance.sdk.openadsdk.core.sP.Sj(this.wE, this.uP, str, i10);
        this.JcM = sj5;
        sj5.Sj(this);
        this.JcM.sP(true);
        if (this.Yf) {
            this.JcM.Sj(true);
        } else {
            this.JcM.Sj(false);
            this.JcM.TKC(true);
        }
        this.JcM.Sj(this.fF);
        this.JcM.HiB(true);
        this.JcM.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() {
            @Override
            public void Sj(View view, int i12) {
                if (HiB.this.FPG != null) {
                    HiB.this.FPG.Sj(view, i12);
                }
            }
        });
        vSVar = this.LD;
        if (vSVar != null) {
            sj2.Sj(vSVar);
        }
        if (uP()) {
            com.bytedance.sdk.openadsdk.core.sP.Sj sj6 = new com.bytedance.sdk.openadsdk.core.sP.Sj(this.wE, this.uP, str, i10) {
                @Override
                public boolean TKC() {
                    View view = HiB.this.TEQ;
                    if (view != null && view.getVisibility() == 0) {
                        return true;
                    }
                    View view2 = HiB.this.f20436aa;
                    if (view2 != null && view2.getVisibility() == 0) {
                        return true;
                    }
                    com.bytedance.sdk.openadsdk.core.widget.Sj sj7 = HiB.this.Fmk;
                    if (sj7 != null && sj7.getVisibility() == 0) {
                        return true;
                    }
                    TextView textView = HiB.this.sef;
                    return textView != null && textView.getVisibility() == 0;
                }

                @Override
                public boolean sP() {
                    TzV tzV = HiB.this.ley;
                    boolean zSj = tzV != null ? tzV.Sj() : false;
                    HiB.this.HiB.getVisibility();
                    return zSj || HiB.this.HiB.getVisibility() == 0;
                }
            };
            this.WMZ = sj6;
            sj6.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() {
                @Override
                public void Sj(View view, int i12) {
                    if (HiB.this.FPG != null) {
                        HiB.this.FPG.Sj(view, i12);
                    }
                }
            });
            this.WMZ.sP(true);
            this.WMZ.Sj(this.Yf);
            this.WMZ.Sj(this.fF);
            this.WMZ.HiB(true);
            vSVar2 = this.LD;
            if (vSVar2 != null) {
                this.WMZ.Sj(vSVar2);
            }
            this.WMZ.Sj(this);
        }
    }

    public void dNu() {
        FPG.vS(this.vS);
        FPG.vS(this.Jcg);
        if (this.HiB.getVisibility() == 0) {
            FPG.Sj((View) this.HiB, 8);
        }
    }

    public boolean dx() {
        return this.f20437dx;
    }

    @Override
    public long getVideoProgress() {
        if (this.Wjd <= 0) {
            sU sUVar = this.uP;
            if (sUVar != null && sUVar.UHs() != null) {
                this.Wjd = (long) (this.uP.UHs().K() * 1000.0d);
            }
            b bVar = this.fF;
            if (bVar != null) {
                this.Wjd = bVar.Dq();
            }
        }
        return this.Wjd;
    }

    @Override
    public boolean ib() {
        TzV tzV = this.ley;
        return tzV != null && tzV.Sj();
    }

    boolean kF() {
        return (this.kF & 4) != 4 || this.f20437dx;
    }

    public void sP(ViewGroup viewGroup) {
    }

    public void sU() {
        ImageView imageView = this.Ym;
        if (imageView != null) {
            imageView.setImageBitmap(null);
        }
        com.bytedance.sdk.openadsdk.core.widget.Sj sj2 = this.Fmk;
        if (sj2 != null) {
            sj2.setImageBitmap(null);
        }
    }

    void sef() {
        if (this.LqL == null || this.ley != null) {
            return;
        }
        System.currentTimeMillis();
        TzV tzV = new TzV();
        this.ley = tzV;
        tzV.Sj(this.wE, this.TKC);
        this.ley.Sj(this.LqL, this);
        System.currentTimeMillis();
    }

    public void uA() {
        EjP(8);
        if (kF()) {
            this.EjP.setVisibility(8);
        }
        ImageView imageView = this.Dq;
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
        EjP(8);
        FPG.Sj(this.TEQ, 8);
        FPG.Sj((View) this.Ym, 8);
        FPG.Sj(this.f20436aa, 8);
        FPG.Sj((View) this.Fmk, 8);
        FPG.Sj((View) this.sef, 8);
        FPG.Sj((View) this.Zq, 8);
        TzV tzV = this.ley;
        if (tzV != null) {
            tzV.Sj(true);
        }
    }

    boolean uvD() {
        return this.LqL != null;
    }

    public void vS() {
    }

    public boolean zR() {
        return this.zR;
    }

    private int HiB(int i10) {
        if (this.RiZ <= 0 || this.sU <= 0) {
            return 0;
        }
        int iSP = FPG.sP(this.wE, 228.0f);
        int iSP2 = FPG.sP(this.wE, 160.0f);
        int i11 = (int) (this.sU * ((i10 * 1.0f) / this.RiZ));
        if (i11 > iSP) {
            return iSP;
        }
        return i11 < iSP2 ? iSP2 : i11;
    }

    private void vS(int i10) {
        FPG.Sj(this.f20436aa, i10);
    }

    public void Sj(long j10) {
    }

    public void TKC(int i10) {
        FPG.Sj((View) this.TKC, 0);
        com.bykv.vk.openvk.Sj.Sj.Sj.vS.a aVar = this.EjP;
        if (aVar != null) {
            aVar.setVisibility(i10);
        }
    }

    public void sP(boolean z10) {
    }

    public void EjP(boolean z10) {
        this.Yf = z10;
        if (z10) {
            com.bytedance.sdk.openadsdk.core.sP.Sj sj2 = this.JcM;
            if (sj2 != null) {
                sj2.Sj(true);
            }
            com.bytedance.sdk.openadsdk.core.sP.Sj sj3 = this.WMZ;
            if (sj3 != null) {
                sj3.Sj(true);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.core.sP.Sj sj4 = this.JcM;
        if (sj4 != null) {
            sj4.Sj(false);
        }
        com.bytedance.sdk.openadsdk.core.sP.Sj sj5 = this.WMZ;
        if (sj5 != null) {
            sj5.Sj(false);
        }
    }

    public void Sj(long j10, long j11) {
    }

    public boolean sP(int i10) {
        return false;
    }

    public void Sj(Message message) {
    }

    public void sP(boolean z10, boolean z11) {
        ImageView imageView = this.HiB;
        if (imageView != null) {
            if (z10) {
                imageView.setImageDrawable(TEQ.Sj(this.wE, "tt_play_movebar_textpage"));
            } else {
                imageView.setImageDrawable(TEQ.Sj(this.wE, "tt_stop_movebar_textpage"));
            }
        }
    }

    public void Sj(View view, boolean z10) {
    }

    public void TKC(int i10, int i11) {
        this.RiZ = i10;
        this.sU = i11;
    }

    public void Sj(ViewGroup viewGroup) {
    }

    public void Sj(String str) {
    }

    public void TKC(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        if (this.TKC.getParent() == null) {
            viewGroup.addView(this.TKC);
        }
        EjP(0);
    }

    public void sP(int i10, int i11) {
        ViewGroup.LayoutParams layoutParams = this.TKC.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        if (i10 == -1 || i10 == -2 || i10 > 0) {
            layoutParams.width = i10;
        }
        if (i11 == -1 || i11 == -2 || i11 > 0) {
            layoutParams.height = i11;
        }
        this.TKC.setLayoutParams(layoutParams);
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public void Sj(Object obj, WeakReference weakReference, boolean z10) {
        Sj((sU) obj, (WeakReference<Context>) weakReference, z10);
    }

    @Override
    public View TKC() {
        return this.TKC;
    }

    public void Sj(vS.Sj sj2) {
        this.FPG = sj2;
    }

    @Override
    public void sP() {
        FPG.HiB(this.vS);
        FPG.HiB(this.Jcg);
        ImageView imageView = this.Dq;
        if (imageView != null) {
            FPG.HiB(imageView);
        }
    }

    public void EjP(int i10) {
        this.f20438ib = i10;
        FPG.Sj((View) this.TKC, i10);
    }

    public void Sj(PAGNativeAd pAGNativeAd) {
        com.bytedance.sdk.openadsdk.core.sP.Sj sj2 = this.JcM;
        if (sj2 != null) {
            sj2.Sj(pAGNativeAd);
        }
        com.bytedance.sdk.openadsdk.core.sP.Sj sj3 = this.WMZ;
        if (sj3 != null) {
            sj3.Sj(pAGNativeAd);
        }
    }

    @Override
    public void sP(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != this.EjP.getHolder()) {
            return;
        }
        this.zR = false;
        if (uvD()) {
            this.LqL.sP(this, surfaceHolder);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.view.ViewGroup, android.widget.RelativeLayout] */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v5, types: [android.view.View, com.bykv.vk.openvk.Sj.Sj.Sj.vS.a] */
    void Sj(Context context, View view) {
        ?? tkc;
        System.currentTimeMillis();
        sU sUVar = this.uP;
        if ((sUVar == null || ((!sUVar.MGU() && !this.uP.ewz()) || Fmk.gq().AVc())) && view != null) {
            view.setKeepScreenOn(true);
        }
        b bVar = this.fF;
        if (bVar != null && bVar.dNu()) {
            tkc = new com.bykv.vk.openvk.Sj.Sj.Sj.vS.EjP(this.wE);
        } else {
            tkc = new com.bykv.vk.openvk.Sj.Sj.Sj.vS.TKC(this.wE);
        }
        if (view instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            ((RelativeLayout) view).addView(tkc, 0, layoutParams);
        }
        FPG.Sj((View) tkc, 8);
        this.EjP = tkc;
        this.HiB = (ImageView) view.findViewById(Zq.f20521vb);
        this.vS = view.findViewById(Zq.GMp);
        this.Jcg = view.findViewById(Zq.TX);
        this.Dq = (ImageView) view.findViewById(Zq.hzV);
        this.uA = view.findViewById(Zq.f20519mj);
        System.currentTimeMillis();
    }

    public HiB(Context context, ViewGroup viewGroup, boolean z10, int i10, sU sUVar, b bVar) {
        this(context, viewGroup, z10, i10, sUVar, bVar, true);
    }

    void Sj(View view, Context context) {
        View view2;
        if (view == null || context == null || (view2 = this.uA) == null || view2.getParent() == null || this.TEQ != null) {
            return;
        }
        this.TEQ = this.uA;
        this.Ym = (ImageView) view.findViewById(Zq.Ph);
        this.f20436aa = view.findViewById(Zq.f20515gq);
        this.Fmk = (com.bytedance.sdk.openadsdk.core.widget.Sj) view.findViewById(Zq.f20517jb);
        this.sef = (TextView) view.findViewById(Zq.Ei);
        this.Zq = (TextView) view.findViewById(Zq.HpB);
        this.uvD = (TextView) view.findViewById(Zq.xhi);
    }

    public boolean Sj(int i10, a6.b bVar, boolean z10) {
        TzV tzV = this.ley;
        return tzV == null || tzV.Sj(i10, bVar, z10);
    }

    public void Sj(w5.a aVar) {
        if (aVar instanceof Sj) {
            this.LqL = (Sj) aVar;
            sef();
        }
    }

    public void Sj(int i10, int i11) {
        if (i10 == -1) {
            i10 = FPG.TKC(this.wE);
        }
        if (i10 <= 0) {
            return;
        }
        this.dNu = i10;
        if (!dx() && !TEQ() && (this.kF & 8) != 8) {
            this.TzV = HiB(i10);
        } else {
            this.TzV = i11;
        }
        sP(this.dNu, this.TzV);
    }

    @Override
    public void Sj() {
        Sj(false, this.f20437dx);
        RiZ();
    }

    @Override
    public void Sj(boolean z10) {
        this.Mts = z10;
    }

    /* JADX WARN: Code duplicated, block: B:92:0x0218  */
    @SuppressLint({"ClickableViewAccessibility"})
    public void Sj(final sU sUVar, WeakReference<Context> weakReference, boolean z10) {
        String strGR;
        sU sUVar2;
        sU sUVar3;
        if (sUVar == null) {
            return;
        }
        Sj(false, this.f20437dx);
        Sj(this.TKC, com.bytedance.sdk.openadsdk.core.dNu.Sj());
        View view = this.TEQ;
        if (view != null) {
            FPG.Sj(view, 0);
        }
        ImageView imageView = this.Ym;
        if (imageView != null) {
            FPG.Sj((View) imageView, 0);
        }
        FPG.Sj(this.f20436aa, 0);
        if (this.Ym != null && (sUVar3 = this.uP) != null && sUVar3.UHs() != null && this.uP.UHs().r() != null) {
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.uP.UHs().r(), this.uP.UHs().t(), this.uP.UHs().C(), this.Ym, sUVar);
        }
        if (!TextUtils.isEmpty(sUVar.dwU())) {
            strGR = sUVar.dwU();
        } else if (!TextUtils.isEmpty(sUVar.xu())) {
            strGR = sUVar.xu();
        } else if (!TextUtils.isEmpty(sUVar.gR())) {
            strGR = sUVar.gR();
        } else {
            strGR = "";
        }
        if (this.Fmk != null && (sUVar2 = this.uP) != null && sUVar2.EZ() != null && this.uP.EZ().Sj() != null) {
            FPG.Sj((View) this.Fmk, 0);
            FPG.Sj((View) this.sef, 4);
            sU sUVar4 = this.uP;
            if (sUVar4 != null && sUVar4.Ph()) {
                com.bytedance.sdk.openadsdk.uA.EjP.Sj(this.uP.EZ()).TKC(2).Sj(new com.bytedance.sdk.openadsdk.uA.sP(sUVar, this.uP.EZ().Sj(), new uvD<Bitmap>() {
                    @Override
                    public void Sj(Ym<Bitmap> ym2) {
                        if (ym2 == null || ym2.sP() == null) {
                            return;
                        }
                        com.bytedance.sdk.openadsdk.core.widget.Sj sj2 = HiB.this.Fmk;
                        if (sj2 != null) {
                            sj2.setImageBitmap(ym2.sP());
                        }
                        com.bytedance.sdk.openadsdk.EjP.TKC.sP(HiB.this.uP, HiB.this.uP != null ? Mts.TKC(sUVar.DKa()) : null, "load_vast_icon_success", (JSONObject) null);
                    }

                    @Override
                    public void Sj(int i10, String str, Throwable th2) {
                        HiB.this.Sj(i10, str, sUVar);
                    }
                }));
                if (this.uP.GMp() != null && this.uP.GMp().sP() != null) {
                    this.uP.GMp().sP().sP(0L);
                }
            } else {
                com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.uP.EZ(), this.Fmk, sUVar);
            }
            sU sUVar5 = this.uP;
            if (sUVar5 != null && sUVar5.Ph()) {
                try {
                    this.Fmk.setTag(570425345, "VAST_ICON");
                } catch (Throwable unused) {
                }
            }
            sU sUVar6 = this.uP;
            if (sUVar6 != null && sUVar6.GMp() != null && this.uP.GMp().sP() != null) {
                final com.bytedance.sdk.openadsdk.core.Ym.sP sPVarSP = this.uP.GMp().sP();
                com.bytedance.sdk.openadsdk.core.widget.Sj sj2 = this.Fmk;
                if (sj2 != null) {
                    sj2.post(new Runnable() {
                        @Override
                        public void run() {
                            com.bytedance.sdk.openadsdk.core.Ym.sP sPVar;
                            com.bytedance.sdk.openadsdk.core.widget.Sj sj3 = HiB.this.Fmk;
                            if (sj3 == null || !sj3.isShown() || (sPVar = sPVarSP) == null) {
                                return;
                            }
                            sPVar.sP(HiB.this.getVideoProgress());
                        }
                    });
                }
            }
            if (uP()) {
                this.Fmk.setOnClickListener(this.WMZ);
                this.Fmk.setOnTouchListener(this.WMZ);
            } else {
                this.Fmk.setOnClickListener(this.JcM);
                this.Fmk.setOnTouchListener(this.JcM);
            }
        } else if (!TextUtils.isEmpty(strGR)) {
            FPG.Sj((View) this.Fmk, 4);
            FPG.Sj((View) this.sef, 0);
            TextView textView = this.sef;
            if (textView != null) {
                textView.setText(strGR.substring(0, 1));
                if (uP()) {
                    this.sef.setOnClickListener(this.WMZ);
                    this.sef.setOnTouchListener(this.WMZ);
                } else {
                    this.sef.setOnClickListener(this.JcM);
                    this.sef.setOnTouchListener(this.JcM);
                }
            }
        }
        if (this.Zq != null && !TextUtils.isEmpty(strGR)) {
            this.Zq.setText(strGR);
            this.Zq.setTag(570425345, "VAST_TITLE");
        }
        FPG.Sj((View) this.Zq, 0);
        FPG.Sj((View) this.uvD, 0);
        String strIr = sUVar.Ir();
        if (TextUtils.isEmpty(strIr)) {
            int iSdp = sUVar.sdp();
            if (iSdp == 2 || iSdp == 3) {
                strIr = ib.Sj(this.wE, "tt_video_mobile_go_detail");
            } else if (iSdp == 4) {
                strIr = ib.Sj(this.wE, "tt_video_download_apk");
            } else if (iSdp == 5) {
                strIr = ib.Sj(this.wE, "tt_video_dial_phone");
            } else if (iSdp != 8) {
                strIr = ib.Sj(this.wE, "tt_video_mobile_go_detail");
            } else {
                strIr = ib.Sj(this.wE, "tt_video_mobile_go_detail");
            }
        }
        TextView textView2 = this.uvD;
        if (textView2 != null) {
            textView2.setText(strIr);
            this.uvD.setOnClickListener(this.JcM);
            this.uvD.setOnTouchListener(this.JcM);
        }
        if (this.Mts) {
            return;
        }
        vS(4);
    }

    public void Sj(final int i10, final String str, final sU sUVar) {
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(new Dq("load_vast_icon_fail") {
            @Override
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("error_code", i10);
                    jSONObject.put(TrackingKey.DESCRIPTION, i10 + ":" + str);
                    jSONObject.put("url", HiB.this.uP.EZ().Sj());
                } catch (Throwable unused) {
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(HiB.this.uP, HiB.this.uP != null ? Mts.TKC(sUVar.DKa()) : null, "load_vast_icon_fail", jSONObject);
            }
        });
    }

    @Override
    public void Sj(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != this.EjP.getHolder()) {
            return;
        }
        this.zR = true;
        if (uvD()) {
            this.LqL.Sj(this, surfaceHolder);
        }
    }

    @Override
    public void Sj(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        if (surfaceHolder != this.EjP.getHolder()) {
            return;
        }
        uvD();
    }

    @Override
    public void Sj(SurfaceTexture surfaceTexture, int i10, int i11) {
        this.zR = true;
        if (uvD()) {
            this.LqL.Sj(this, surfaceTexture);
        }
    }

    @Override
    public boolean Sj(SurfaceTexture surfaceTexture) {
        this.zR = false;
        if (!uvD()) {
            return true;
        }
        this.LqL.sP(this, surfaceTexture);
        return true;
    }

    public void Sj(boolean z10, boolean z11, boolean z12) {
        FPG.Sj((View) this.HiB, (!z10 || this.vS.getVisibility() == 0) ? 8 : 0);
    }

    public void Sj(boolean z10, boolean z11) {
        FPG.Sj((View) this.HiB, 8);
    }

    @Override
    public void Sj(Drawable drawable) {
        ViewGroup viewGroup = this.TKC;
        if (viewGroup != null) {
            viewGroup.setBackgroundDrawable(drawable);
        }
    }
}
