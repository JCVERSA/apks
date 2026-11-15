package com.bytedance.adsdk.ugeno.yoga.sP;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.adsdk.ugeno.Jcg.TKC;
import com.bytedance.adsdk.ugeno.yoga.Dq;
import com.bytedance.adsdk.ugeno.yoga.HiB;
import com.bytedance.adsdk.ugeno.yoga.Jcg;
import com.bytedance.adsdk.ugeno.yoga.Zq;
import com.bytedance.adsdk.ugeno.yoga.aa;
import com.bytedance.adsdk.ugeno.yoga.sP;
import com.bytedance.adsdk.ugeno.yoga.uvD;
import com.bytedance.adsdk.ugeno.yoga.vS;

public class Sj extends com.bytedance.adsdk.ugeno.sP.Sj<Dq> {
    private vS AVc;
    private uvD RrR;
    private Jcg SP;
    private aa Xqg;
    private sP dLt;
    private sP zwV;

    public static class C0189Sj extends com.bytedance.adsdk.ugeno.sP.Sj.C0184Sj {
        private boolean Ei;
        public int FPG;
        private boolean Fm;
        private boolean HpB;
        public int JcM;
        public float LD;
        public float LqL;
        public int Mts;
        public int WMZ;
        public float Wjd;
        public int Yf;
        public int fF;

        private boolean f20235jb;
        public float ley;
        public int wE;
        private boolean xD;
        private boolean xhi;

        public C0189Sj(com.bytedance.adsdk.ugeno.sP.Sj sj2) {
            super(sj2);
            this.wE = 1;
            this.ley = 0.0f;
            this.LqL = 1.0f;
            this.Yf = sP.AUTO.Sj();
            this.LD = -1.0f;
            this.fF = Zq.RELATIVE.Sj();
        }

        public boolean TKC() {
            float f10 = this.Sj;
            if (f10 == -1.0f && this.sP == -1.0f) {
                return false;
            }
            return f10 == -2.0f || this.sP == -2.0f;
        }

        @Override
        public Dq.Sj Sj() {
            Dq.Sj sj2 = new Dq.Sj((int) this.Sj, (int) this.sP);
            sj2.aa((int) (this.sU ? this.vS : this.HiB));
            sj2.sef((int) (this.f20210dx ? this.Jcg : this.HiB));
            sj2.Ym((int) (this.zR ? this.Dq : this.HiB));
            sj2.Fmk((int) (this.f20211ib ? this.uA : this.HiB));
            sj2.Sj(this.wE);
            sj2.HiB(this.Yf);
            sj2.sP(this.ley);
            sj2.TKC(this.LqL);
            sj2.uvD(this.TKC);
            sj2.dNu(this.EjP);
            if (this.xD) {
                sj2.EjP(this.LD);
            }
            sj2.vS(this.fF);
            if (this.Fm) {
                sj2.Jcg(this.JcM);
            }
            if (this.f20235jb) {
                sj2.uA(this.WMZ);
            }
            if (this.Ei) {
                sj2.Dq(this.Mts);
            }
            if (this.HpB) {
                sj2.TEQ(this.FPG);
            }
            if (this.xhi && TKC()) {
                float f10 = this.Wjd;
                if (f10 > 0.0f) {
                    sj2.Zq(f10);
                }
            }
            return sj2;
        }

        @Override
        public String toString() {
            return "LayoutParams{mOrder=" + this.wE + ", mFlexGrow=" + this.ley + ", mFlexShrink=" + this.LqL + ", mAlignSelf=" + this.Yf + ", mFlexBasis=" + this.LD + ", mPosition=" + this.fF + ", mTop=" + this.JcM + ", mBottom=" + this.WMZ + ", mLeft=" + this.Mts + ", mRight=" + this.FPG + '}';
        }

        @Override
        public void Sj(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
            }
            super.Sj(context, str, str2);
            str.hashCode();
            switch (str) {
                case "flexBasis":
                    this.xD = true;
                    this.LD = TKC.Sj(str2, -1.0f);
                    break;
                case "bottom":
                    this.f20235jb = true;
                    this.WMZ = (int) com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(context, TKC.Sj(str2, 0));
                    break;
                case "top":
                    this.Fm = true;
                    this.JcM = (int) com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(context, TKC.Sj(str2, 0));
                    break;
                case "left":
                    this.Ei = true;
                    this.Mts = (int) com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(context, TKC.Sj(str2, 0));
                    break;
                case "order":
                    this.wE = TKC.Sj(str2, 1);
                    break;
                case "ratio":
                    this.xhi = true;
                    this.Wjd = TKC.Sj(str2, 0.0f);
                    break;
                case "right":
                    this.HpB = true;
                    this.FPG = (int) com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(context, TKC.Sj(str2, 0));
                    break;
                case "position":
                    this.fF = Zq.Sj(str2).Sj();
                    break;
                case "flexShrink":
                    this.LqL = TKC.Sj(str2, 1.0f);
                    break;
                case "flexGrow":
                    this.ley = TKC.Sj(str2, 0.0f);
                    break;
                case "alignSelf":
                    this.Yf = sP.Sj(str2).Sj();
                    break;
            }
        }
    }

    public Sj(Context context) {
        super(context);
        this.AVc = vS.ROW;
        this.RrR = uvD.NO_WRAP;
        this.SP = Jcg.FLEX_START;
        sP sPVar = sP.STRETCH;
        this.dLt = sPVar;
        this.zwV = sPVar;
    }

    @Override
    protected void Fmk() {
        if (this.fF) {
            this.Xqg.sP(HiB.ALL, this.wE);
        }
        if (this.JcM) {
            this.Xqg.sP(HiB.LEFT, this.ley);
        }
        if (this.WMZ) {
            this.Xqg.sP(HiB.RIGHT, this.LqL);
        }
        if (this.Mts) {
            this.Xqg.sP(HiB.TOP, this.Yf);
        }
        if (this.FPG) {
            this.Xqg.sP(HiB.BOTTOM, this.LD);
        }
    }

    @Override
    protected void wE() {
        ImageView.ScaleType scaleType;
        if (this.Ei) {
            com.bytedance.adsdk.ugeno.HiB.Sj().sP().Sj(this.uA, this.xD, new com.bytedance.adsdk.ugeno.Sj.InterfaceC0180Sj() {
                @Override
                public void Sj(Bitmap bitmap) {
                    final Bitmap bitmapSj;
                    if (bitmap == null || (bitmapSj = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(((com.bytedance.adsdk.ugeno.sP.TKC) Sj.this).sP, bitmap, (int) ((com.bytedance.adsdk.ugeno.sP.TKC) Sj.this).f20217jb)) == null) {
                        return;
                    }
                    com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(new Runnable() {
                        @Override
                        public void run() {
                            Sj.this.Sj(new BitmapDrawable(bitmapSj));
                        }
                    });
                }
            });
            return;
        }
        ImageView imageView = new ImageView(this.sP);
        com.bytedance.adsdk.ugeno.HiB.Sj().sP().Sj(this.uA, this.xD, imageView, this.HiB.getWidth(), this.HiB.getHeight());
        if (!this.HpB || (scaleType = this.Fm) == ImageView.ScaleType.FIT_XY) {
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        } else {
            imageView.setScaleType(scaleType);
        }
        Dq.Sj sj2 = new Dq.Sj(-1, -1);
        sj2.vS(Zq.ABSOLUTE.Sj());
        T t10 = this.HiB;
        if (t10 instanceof Dq) {
            ((Dq) t10).addView(imageView, 0, sj2);
            Sj(imageView);
        }
    }

    @Override
    public C0189Sj TEQ() {
        return new C0189Sj(this);
    }

    @Override
    public Dq Sj() {
        Dq dq2 = new Dq(this.sP);
        dq2.Sj(this);
        this.Xqg = dq2.getYogaNode();
        return dq2;
    }

    @Override
    public void sP() {
        super.sP();
        this.Xqg.Sj(this.AVc);
        this.Xqg.Sj(this.RrR);
        this.Xqg.Sj(this.SP);
        this.Xqg.Sj(this.dLt);
        this.Xqg.TKC(this.zwV);
    }

    @Override
    protected void Sj(Drawable drawable) {
        ImageView.ScaleType scaleType;
        ImageView imageView = new ImageView(this.sP);
        imageView.setImageDrawable(drawable);
        if (this.HpB && (scaleType = this.Fm) != ImageView.ScaleType.FIT_XY) {
            imageView.setScaleType(scaleType);
        } else {
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        }
        Dq.Sj sj2 = new Dq.Sj(-1, -1);
        sj2.vS(Zq.ABSOLUTE.Sj());
        T t10 = this.HiB;
        if (t10 instanceof Dq) {
            ((Dq) t10).addView(imageView, 0, sj2);
            Sj(imageView);
        }
    }

    private void Sj(final ImageView imageView) {
        this.HiB.post(new Runnable() {
            @Override
            public void run() {
                aa aaVarSj;
                if (((com.bytedance.adsdk.ugeno.sP.TKC) Sj.this).HiB == null || (aaVarSj = ((Dq) ((com.bytedance.adsdk.ugeno.sP.TKC) Sj.this).HiB).Sj(imageView)) == null) {
                    return;
                }
                aaVarSj.EjP(((com.bytedance.adsdk.ugeno.sP.TKC) Sj.this).HiB.getWidth());
                aaVarSj.vS(((com.bytedance.adsdk.ugeno.sP.TKC) Sj.this).HiB.getHeight());
                ((com.bytedance.adsdk.ugeno.sP.TKC) Sj.this).HiB.requestLayout();
            }
        });
    }

    @Override
    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        super.Sj(tkc);
    }

    @Override
    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, ViewGroup.LayoutParams layoutParams) {
        if (tkc == null) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.sP.Sj) this).Sj.add(tkc);
        View viewYm = tkc.Ym();
        if (viewYm != null) {
            ((Dq) this.HiB).addView(viewYm, layoutParams);
        }
    }

    @Override
    public void Sj(String str, String str2) {
        super.Sj(str, str2);
        str.hashCode();
        switch (str) {
            case "alignItems":
                this.dLt = sP.Sj(str2);
                break;
            case "flexDirection":
                this.AVc = vS.Sj(str2);
                break;
            case "alignContent":
                this.zwV = sP.Sj(str2);
                break;
            case "flexWrap":
                this.RrR = uvD.Sj(str2);
                break;
            case "justifyContent":
                this.SP = Jcg.Sj(str2);
                break;
        }
    }
}
