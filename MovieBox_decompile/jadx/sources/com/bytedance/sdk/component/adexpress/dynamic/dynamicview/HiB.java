package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class HiB extends FrameLayout implements IAnimation, Mts, WMZ {
    protected int Dq;
    protected float EjP;
    protected com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq Fmk;
    protected float HiB;
    protected int Jcg;
    private float RiZ;
    private float Sj;
    protected int TEQ;
    protected float TKC;
    com.bytedance.sdk.component.adexpress.dynamic.animation.view.TKC TzV;
    protected Context Ym;
    protected View Zq;

    protected com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg f20273aa;
    protected com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.sP dNu;

    private com.bytedance.sdk.component.utils.kF f20274dx;
    private float sP;
    private float sU;
    protected DynamicRootView sef;
    protected int uA;
    protected boolean uvD;
    protected float vS;
    private static final View.OnTouchListener zR = new View.OnTouchListener() {
        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    };

    private static final View.OnClickListener f20272ib = new View.OnClickListener() {
        @Override
        public void onClick(View view) {
        }
    };

    public HiB(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context);
        this.Ym = context;
        this.sef = dynamicRootView;
        this.Fmk = dq2;
        this.TKC = dq2.vS();
        this.EjP = dq2.Jcg();
        this.HiB = dq2.Dq();
        this.vS = dq2.uA();
        this.uA = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.TKC);
        this.TEQ = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.EjP);
        this.Jcg = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.HiB);
        this.Dq = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.vS);
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg = new com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg(dq2.TEQ());
        this.f20273aa = jcg;
        if (jcg.TzV() > 0) {
            this.Jcg += this.f20273aa.TzV() * 2;
            this.Dq += this.f20273aa.TzV() * 2;
            this.uA -= this.f20273aa.TzV();
            this.TEQ -= this.f20273aa.TzV();
            List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> listYm = dq2.Ym();
            if (listYm != null) {
                for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq3 : listYm) {
                    dq3.TKC(dq3.vS() + com.bytedance.sdk.component.adexpress.EjP.Jcg.sP(this.Ym, this.f20273aa.TzV()));
                    dq3.EjP(dq3.Jcg() + com.bytedance.sdk.component.adexpress.EjP.Jcg.sP(this.Ym, this.f20273aa.TzV()));
                    dq3.Sj(com.bytedance.sdk.component.adexpress.EjP.Jcg.sP(this.Ym, this.f20273aa.TzV()));
                    dq3.sP(com.bytedance.sdk.component.adexpress.EjP.Jcg.sP(this.Ym, this.f20273aa.TzV()));
                }
            }
        }
        this.uvD = this.f20273aa.sef() > 0.0d;
        this.TzV = new com.bytedance.sdk.component.adexpress.dynamic.animation.view.TKC();
    }

    protected boolean Dq() {
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 = this.Fmk;
        return dq2 == null || dq2.TEQ() == null || this.Fmk.TEQ().HiB() == null || this.Fmk.TEQ().HiB().Xqg() == null;
    }

    protected boolean EjP() {
        View.OnTouchListener onTouchListener;
        View.OnClickListener onClickListener;
        View view = this.Zq;
        View view2 = view;
        if (view == null) {
            view2 = this;
        }
        if (HiB()) {
            onTouchListener = (View.OnTouchListener) getDynamicClickListener();
            onClickListener = (View.OnClickListener) getDynamicClickListener();
        } else {
            onTouchListener = zR;
            onClickListener = f20272ib;
        }
        if (onTouchListener != null && onClickListener != null) {
            view2.setOnTouchListener(onTouchListener);
            view2.setOnClickListener(onClickListener);
            int iSj = com.bytedance.sdk.component.adexpress.dynamic.sP.Sj.Sj(this.f20273aa);
            if (iSj == 2 || iSj == 3) {
                view2.setOnClickListener(f20272ib);
            } else {
                view2.setOnClickListener(onClickListener);
            }
        }
        Sj(view2);
        sP(view2);
        return true;
    }

    public boolean HiB() {
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg = this.f20273aa;
        return (jcg == null || jcg.ley() == 0) ? false : true;
    }

    public void Jcg() {
        if (Dq()) {
            return;
        }
        View view = this.Zq;
        if (view == null) {
            view = this;
        }
        this.dNu = new com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.sP(view, this.Fmk.TEQ().HiB().Xqg());
        post(new Runnable() {
            @Override
            public void run() {
                com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.sP sPVar = HiB.this.dNu;
                if (sPVar != null) {
                    sPVar.Sj();
                }
            }
        });
    }

    public void Sj(int i10) {
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg = this.f20273aa;
        if (jcg != null && jcg.Sj(i10)) {
            uA();
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (childAt != null && (getChildAt(i11) instanceof HiB)) {
                    ((HiB) childAt).Sj(i10);
                }
            }
        }
    }

    public boolean TKC() {
        uA();
        vS();
        EjP();
        return true;
    }

    protected Drawable getBackgroundDrawable() {
        return Sj(false, "");
    }

    public boolean getBeginInvisibleAndShow() {
        return this.uvD;
    }

    public int getClickArea() {
        return this.f20273aa.ley();
    }

    protected GradientDrawable getDrawable() {
        return new GradientDrawable();
    }

    public com.bytedance.sdk.component.adexpress.dynamic.vS.Sj getDynamicClickListener() {
        return this.sef.getDynamicClickListener();
    }

    public int getDynamicHeight() {
        return this.Dq;
    }

    public com.bytedance.sdk.component.adexpress.dynamic.EjP.vS getDynamicLayoutBrickValue() {
        com.bytedance.sdk.component.adexpress.dynamic.EjP.HiB hiBTEQ;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 = this.Fmk;
        if (dq2 == null || (hiBTEQ = dq2.TEQ()) == null) {
            return null;
        }
        return hiBTEQ.HiB();
    }

    public int getDynamicWidth() {
        return this.Jcg;
    }

    public String getImageObjectFit() {
        return this.f20273aa.MuB();
    }

    @Override
    public float getMarqueeValue() {
        return this.RiZ;
    }

    protected Drawable getMutilBackgroundDrawable() {
        try {
            return new LayerDrawable(Sj(sP(this.f20273aa.FPG().replaceAll("/\\*.*\\*/", ""))));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public float getRippleValue() {
        return this.Sj;
    }

    @Override
    public float getShineValue() {
        return this.sP;
    }

    @Override
    public float getStretchValue() {
        return this.sU;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Jcg();
        Sj();
    }

    @Override
    protected void onDetachedFromWindow() {
        sP();
        super.onDetachedFromWindow();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.TzV.Sj(canvas, this, this);
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        com.bytedance.sdk.component.adexpress.dynamic.animation.view.TKC tkc = this.TzV;
        View view = this.Zq;
        if (view == null) {
            view = this;
        }
        tkc.Sj(view, i10, i11);
    }

    protected void sP(@NonNull View view) {
        com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 = this.Fmk;
        if (dq2 == null || (vSVarHiB = dq2.TEQ().HiB()) == null) {
            return;
        }
        view.setTag(2097610716, Boolean.valueOf(vSVarHiB.Aw()));
    }

    @Override
    public void setMarqueeValue(float f10) {
        this.RiZ = f10;
        postInvalidate();
    }

    @Override
    public void setRippleValue(float f10) {
        this.Sj = f10;
        postInvalidate();
    }

    @Override
    public void setShineValue(float f10) {
        this.sP = f10;
        postInvalidate();
    }

    public void setShouldInvisible(boolean z10) {
        this.uvD = z10;
    }

    @Override
    public void setStretchValue(float f10) {
        this.sU = f10;
        this.TzV.Sj(this, f10);
    }

    public void vS() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.Jcg, this.Dq);
        layoutParams.topMargin = this.TEQ;
        int i10 = this.uA;
        layoutParams.leftMargin = i10;
        layoutParams.setMarginStart(i10);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    private List<String> sP(String str) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        boolean z10 = false;
        int i11 = 0;
        for (int i12 = 0; i12 < str.length(); i12++) {
            if (str.charAt(i12) == '(') {
                i10++;
                z10 = true;
            } else if (str.charAt(i12) == ')' && (i10 = i10 - 1) == 0 && z10) {
                int i13 = i12 + 1;
                arrayList.add(str.substring(i11, i13));
                i11 = i13;
                z10 = false;
            }
        }
        return arrayList;
    }

    protected void Sj(View view) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", this.Fmk.Dq());
            jSONObject.put("height", this.Fmk.uA());
            if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.Sj.sU, this.f20273aa.Wjd());
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.Sj.f20268dx, this.Fmk.TEQ().sP());
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.Sj.zR, this.Fmk.TKC());
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.Sj.f20269ib, jSONObject.toString());
                return;
            }
            view.setTag(2097610717, this.f20273aa.Wjd());
            view.setTag(2097610715, this.Fmk.TEQ().sP());
            view.setTag(2097610714, this.Fmk.TKC());
            view.setTag(2097610713, jSONObject.toString());
            int iSj = com.bytedance.sdk.component.adexpress.dynamic.sP.Sj.Sj(this.f20273aa);
            if (iSj == 1) {
                view.setTag(2097610707, new Pair(this.f20273aa.uP(), Long.valueOf(this.f20273aa.wE())));
                view.setTag(2097610708, Integer.valueOf(iSj));
            }
        } catch (JSONException unused) {
        }
    }

    public void sP() {
        com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.sP sPVar = this.dNu;
        if (sPVar != null) {
            sPVar.sP();
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
    }

    protected Drawable Sj(boolean z10, String str) {
        String[] strArrSplit;
        int[] iArr;
        int iLqL;
        if (!TextUtils.isEmpty(this.f20273aa.FPG())) {
            try {
                String strFPG = this.f20273aa.FPG();
                String strSubstring = strFPG.substring(strFPG.indexOf("(") + 1, strFPG.length() - 1);
                if (strSubstring.contains("rgba") && strSubstring.contains("%")) {
                    strArrSplit = new String[]{strSubstring.substring(0, strSubstring.indexOf(",")).trim(), strSubstring.substring(strSubstring.indexOf(",") + 1, strSubstring.indexOf("%") + 1).trim(), strSubstring.substring(strSubstring.indexOf("%") + 2).trim()};
                    iArr = new int[]{com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg.Sj(strArrSplit[1]), com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg.Sj(strArrSplit[2])};
                } else {
                    strArrSplit = strSubstring.split(", ");
                    iArr = new int[]{com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg.Sj(strArrSplit[1].substring(0, 7)), com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg.Sj(strArrSplit[2].substring(0, 7))};
                }
                try {
                    double d10 = Double.parseDouble(strSubstring.substring(strSubstring.indexOf("linear-gradient(") + 1, strSubstring.indexOf("deg")));
                    if (d10 > 225.0d && d10 < 315.0d) {
                        int i10 = iArr[1];
                        iArr[1] = iArr[0];
                        iArr[0] = i10;
                    }
                } catch (Exception unused) {
                }
                GradientDrawable gradientDrawableSj = Sj(Sj(strArrSplit[0]), iArr);
                gradientDrawableSj.setShape(0);
                gradientDrawableSj.setCornerRadius(com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20273aa.Zq()));
                return gradientDrawableSj;
            } catch (Exception unused2) {
                Drawable mutilBackgroundDrawable = getMutilBackgroundDrawable();
                if (mutilBackgroundDrawable != null) {
                    return mutilBackgroundDrawable;
                }
            }
        }
        GradientDrawable drawable = getDrawable();
        drawable.setShape(0);
        float fSj = com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20273aa.Zq());
        drawable.setCornerRadius(fSj);
        if (fSj < 1.0f) {
            float fSj2 = com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20273aa.LD());
            float fSj3 = com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20273aa.fF());
            float fSj4 = com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20273aa.JcM());
            float fSj5 = com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20273aa.WMZ());
            float[] fArr = new float[8];
            if (fSj2 > 0.0f) {
                fArr[0] = fSj2;
                fArr[1] = fSj2;
            }
            if (fSj3 > 0.0f) {
                fArr[2] = fSj3;
                fArr[3] = fSj3;
            }
            if (fSj4 > 0.0f) {
                fArr[4] = fSj4;
                fArr[5] = fSj4;
            }
            if (fSj5 > 0.0f) {
                fArr[6] = fSj5;
                fArr[7] = fSj5;
            }
            drawable.setCornerRadii(fArr);
        }
        if (z10) {
            iLqL = Color.parseColor(str);
        } else {
            iLqL = this.f20273aa.LqL();
        }
        drawable.setColor(iLqL);
        if (this.f20273aa.dNu() > 0.0f) {
            drawable.setStroke((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20273aa.dNu()), this.f20273aa.uvD());
        } else if (this.f20273aa.TzV() > 0) {
            drawable.setStroke(this.f20273aa.TzV(), this.f20273aa.uvD());
            drawable.setAlpha(50);
            if (TextUtils.equals(this.Fmk.TEQ().sP(), "video-vd")) {
                setLayerType(1, null);
                return new RiZ((int) fSj, this.f20273aa.TzV());
            }
        }
        return drawable;
    }

    protected sP Sj(Bitmap bitmap) {
        return new Sj(bitmap, null);
    }

    private Drawable[] Sj(List<String> list) {
        Drawable[] drawableArr = new Drawable[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = list.get(i10);
            if (str.contains("linear-gradient")) {
                String[] strArrSplit = str.substring(str.indexOf("(") + 1, str.length() - 1).split(", ");
                int length = strArrSplit.length - 1;
                int[] iArr = new int[length];
                int i11 = 0;
                while (i11 < length) {
                    int i12 = i11 + 1;
                    iArr[i11] = com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg.Sj(strArrSplit[i12].substring(0, 7));
                    i11 = i12;
                }
                GradientDrawable gradientDrawableSj = Sj(Sj(strArrSplit[0]), iArr);
                gradientDrawableSj.setShape(0);
                gradientDrawableSj.setCornerRadius(com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20273aa.Zq()));
                drawableArr[(list.size() - 1) - i10] = gradientDrawableSj;
            }
        }
        return drawableArr;
    }

    protected GradientDrawable Sj(GradientDrawable.Orientation orientation, int[] iArr) {
        if (iArr != null && iArr.length != 0) {
            if (iArr.length == 1) {
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setColor(iArr[0]);
                return gradientDrawable;
            }
            return new GradientDrawable(orientation, iArr);
        }
        return new GradientDrawable();
    }

    protected GradientDrawable.Orientation Sj(String str) {
        try {
            int i10 = (int) Float.parseFloat(str.substring(0, str.length() - 3));
            if (i10 <= 90) {
                return GradientDrawable.Orientation.LEFT_RIGHT;
            }
            if (i10 <= 180) {
                return GradientDrawable.Orientation.TOP_BOTTOM;
            }
            if (i10 <= 270) {
                return GradientDrawable.Orientation.RIGHT_LEFT;
            }
            return GradientDrawable.Orientation.BOTTOM_TOP;
        } catch (Exception unused) {
            return GradientDrawable.Orientation.LEFT_RIGHT;
        }
    }

    private void Sj() {
        if (isShown()) {
            int iSj = com.bytedance.sdk.component.adexpress.dynamic.sP.Sj.Sj(this.f20273aa);
            if (iSj == 2) {
                if (this.f20274dx == null) {
                    this.f20274dx = new com.bytedance.sdk.component.utils.kF(getContext().getApplicationContext(), 1);
                }
                new Object() {
                };
                com.bytedance.sdk.component.adexpress.sP.Fmk renderRequest = this.sef.getRenderRequest();
                if (renderRequest != null) {
                    renderRequest.Zq();
                    renderRequest.dx();
                    renderRequest.RiZ();
                    return;
                }
                return;
            }
            if (iSj == 3) {
                if (this.f20274dx == null) {
                    this.f20274dx = new com.bytedance.sdk.component.utils.kF(getContext().getApplicationContext(), 2);
                }
                new Object() {
                };
                com.bytedance.sdk.component.adexpress.sP.Fmk renderRequest2 = this.sef.getRenderRequest();
                if (renderRequest2 != null) {
                    renderRequest2.dNu();
                    renderRequest2.zR();
                    renderRequest2.TzV();
                    renderRequest2.sU();
                }
            }
        }
    }
}
