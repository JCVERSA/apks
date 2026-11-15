package com.bytedance.adsdk.ugeno.sP;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.adsdk.ugeno.Jcg.Dq;
import java.util.ArrayList;
import java.util.List;

public class Sj<E extends ViewGroup> extends TKC {
    protected List<TKC<View>> Sj;

    public Sj(Context context) {
        this(context, null);
    }

    public void Sj(TKC tkc) {
        if (tkc == null) {
            return;
        }
        this.Sj.add(tkc);
        View viewYm = tkc.Ym();
        if (viewYm != null) {
            ((ViewGroup) this.HiB).addView(viewYm);
        }
    }

    public C0184Sj TEQ() {
        return new C0184Sj(this);
    }

    @Override
    public void sP() {
        super.sP();
    }

    public List<TKC<View>> uA() {
        return this.Sj;
    }

    public Sj(Context context, Sj sj2) {
        super(context, sj2);
        this.Sj = new ArrayList();
    }

    @Override
    public TKC sP(String str) {
        TKC<T> tkcEjP;
        if (!TextUtils.isEmpty(str) && TextUtils.equals(str, this.f20212aa)) {
            return this;
        }
        for (TKC<View> tkc : this.Sj) {
            if (tkc != null && (tkcEjP = tkc.EjP(str)) != 0) {
                return tkcEjP;
            }
        }
        return null;
    }

    public void Sj(TKC tkc, ViewGroup.LayoutParams layoutParams) {
        if (tkc == null) {
            return;
        }
        this.Sj.add(tkc);
        View viewYm = tkc.Ym();
        if (viewYm != null) {
            ((ViewGroup) this.HiB).addView(viewYm, layoutParams);
        }
    }

    @Override
    public TKC Sj(String str) {
        TKC<T> TKC;
        if (!TextUtils.isEmpty(str) && TextUtils.equals(str, this.Ym)) {
            return this;
        }
        for (TKC<View> tkc : this.Sj) {
            if (tkc != null && (TKC = tkc.TKC(str)) != 0) {
                return TKC;
            }
        }
        return null;
    }

    public static class C0184Sj {
        protected float Dq;
        protected float Fmk;
        protected float HiB;
        protected float Jcg;
        protected boolean RiZ;
        protected float TEQ;
        protected boolean TzV;
        protected float Ym;
        protected boolean Zq;

        protected float f20209aa;
        protected boolean dNu;

        protected boolean f20210dx;

        protected boolean f20211ib;
        protected ViewGroup.LayoutParams kF;
        protected boolean sU;
        protected float sef;
        protected float uA;
        protected Sj uP;
        protected boolean uvD;
        protected float vS;
        protected boolean zR;
        protected float Sj = -2.0f;
        protected float sP = -2.0f;
        protected float TKC = 0.0f;
        protected float EjP = 0.0f;

        public C0184Sj(Sj sj2) {
            this.uP = sj2;
        }

        public void Sj(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
            }
            str.hashCode();
            switch (str) {
                case "paddingLeft":
                    this.Ym = Dq.Sj(context, str2);
                    this.uvD = true;
                    break;
                case "minWidth":
                    this.TKC = Dq.Sj(context, str2);
                    break;
                case "height":
                    if (TextUtils.equals(str2, "match_parent")) {
                        Sj sj2 = this.uP;
                        if (sj2 != null && sj2.LD() && this.uP.FPG() == -2 && !this.uP.HpB()) {
                            this.sP = -2.0f;
                        } else {
                            this.sP = -1.0f;
                        }
                        break;
                    } else {
                        if (!TextUtils.equals(str2, "wrap_content")) {
                            this.sP = Dq.Sj(context, str2);
                        } else {
                            this.sP = -2.0f;
                        }
                        break;
                    }
                    break;
                case "margin":
                    this.HiB = Dq.Sj(context, str2);
                    break;
                case "marginTop":
                    this.Dq = Dq.Sj(context, str2);
                    this.zR = true;
                    break;
                case "padding":
                    this.TEQ = Dq.Sj(context, str2);
                    this.Zq = true;
                    break;
                case "marginBottom":
                    this.uA = Dq.Sj(context, str2);
                    this.f20211ib = true;
                    break;
                case "minHeight":
                    this.EjP = Dq.Sj(context, str2);
                    break;
                case "paddingTop":
                    this.f20209aa = Dq.Sj(context, str2);
                    this.TzV = true;
                    break;
                case "width":
                    if (TextUtils.equals(str2, "match_parent")) {
                        Sj sj3 = this.uP;
                        if (sj3 != null && sj3.LD() && this.uP.Mts() == -2 && !this.uP.HpB()) {
                            this.Sj = -2.0f;
                        } else {
                            this.Sj = -1.0f;
                        }
                        break;
                    } else {
                        if (!TextUtils.equals(str2, "wrap_content")) {
                            this.Sj = Dq.Sj(context, str2);
                        } else {
                            this.Sj = -2.0f;
                        }
                        break;
                    }
                    break;
                case "paddingBottom":
                    this.sef = Dq.Sj(context, str2);
                    this.RiZ = true;
                    break;
                case "paddingRight":
                    this.Fmk = Dq.Sj(context, str2);
                    this.dNu = true;
                    break;
                case "marginRight":
                    this.Jcg = Dq.Sj(context, str2);
                    this.f20210dx = true;
                    break;
                case "marginLeft":
                    this.vS = Dq.Sj(context, str2);
                    this.sU = true;
                    break;
            }
        }

        public String toString() {
            return "LayoutParams{mWidth=" + this.Sj + ", mHeight=" + this.sP + ", mMargin=" + this.HiB + ", mMarginLeft=" + this.vS + ", mMarginRight=" + this.Jcg + ", mMarginTop=" + this.Dq + ", mMarginBottom=" + this.uA + ", mParams=" + this.kF + '}';
        }

        public ViewGroup.LayoutParams Sj() {
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams((int) this.Sj, (int) this.sP);
            marginLayoutParams.leftMargin = (int) (this.sU ? this.vS : this.HiB);
            marginLayoutParams.rightMargin = (int) (this.f20210dx ? this.Jcg : this.HiB);
            marginLayoutParams.topMargin = (int) (this.zR ? this.Dq : this.HiB);
            marginLayoutParams.bottomMargin = (int) (this.f20211ib ? this.uA : this.HiB);
            return marginLayoutParams;
        }
    }
}
