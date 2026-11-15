package com.bytedance.adsdk.ugeno.yoga;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import java.util.Map;

public class Dq extends ViewGroup implements com.bytedance.adsdk.ugeno.Sj.HiB, com.bytedance.adsdk.ugeno.sP.sP {
    private com.bytedance.adsdk.ugeno.Sj.vS EjP;
    private final Map<View, aa> Sj;
    private com.bytedance.adsdk.ugeno.EjP TKC;
    private final aa sP;

    public Dq(Context context) {
        this(context, null, 0);
    }

    public void EjP(View view, int i10) {
        int iSj;
        view.setVisibility(i10);
        try {
            aa aaVar = this.Sj.get(view);
            Object tag = view.getTag(151060224);
            if (i10 != 0) {
                if (i10 != 8 || (iSj = this.sP.Sj(aaVar)) == -1) {
                    return;
                }
                this.sP.sP(iSj);
                view.setTag(151060224, Integer.valueOf(iSj));
                Sj(this.sP);
                return;
            }
            if (tag == null || this.sP.Sj(aaVar) != -1) {
                return;
            }
            int iIntValue = ((Integer) tag).intValue();
            if (iIntValue < this.sP.Sj()) {
                this.sP.Sj(this.Sj.get(view), iIntValue);
            } else {
                this.sP.Sj(this.Sj.get(view), this.sP.Sj());
            }
            Sj(this.sP);
        } catch (Throwable unused) {
        }
    }

    public aa Sj(View view) {
        return this.Sj.get(view);
    }

    @Override
    public void TKC(View view, int i10) {
        EjP(view, i10);
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        aa aaVarSj;
        this.sP.Sj((uA) null);
        if (view instanceof com.bytedance.adsdk.ugeno.yoga.Sj) {
            throw null;
        }
        super.addView(view, i10, layoutParams);
        if (this.Sj.containsKey(view)) {
            return;
        }
        if (view instanceof Dq) {
            aaVarSj = ((Dq) view).getYogaNode();
        } else {
            aaVarSj = this.Sj.containsKey(view) ? this.Sj.get(view) : Fmk.Sj();
            aaVarSj.Sj(view);
            aaVarSj.Sj((uA) new sP());
        }
        Sj((Sj) view.getLayoutParams(), aaVarSj, view);
        this.Sj.put(view, aaVarSj);
        if (view.getVisibility() == 8) {
            view.setTag(151060224, Integer.valueOf(this.sP.Sj()));
        } else {
            aa aaVar = this.sP;
            aaVar.Sj(aaVarSj, aaVar.Sj());
        }
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof Sj;
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.sP(canvas);
        }
    }

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new Sj(-1, -1);
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new Sj(layoutParams);
    }

    public float getBorderRadius() {
        return this.EjP.Sj();
    }

    @Override
    public float getRipple() {
        return this.EjP.getRipple();
    }

    @Override
    public float getRubIn() {
        return this.EjP.getRubIn();
    }

    @Override
    public float getShine() {
        return this.EjP.getShine();
    }

    @Override
    public float getStretch() {
        return this.EjP.getStretch();
    }

    public aa getYogaNode() {
        return this.sP;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.Jcg();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.Dq();
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.Sj(canvas);
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.vS();
        }
        if (!(getParent() instanceof Dq)) {
            Sj(View.MeasureSpec.makeMeasureSpec(i12 - i10, 1073741824), View.MeasureSpec.makeMeasureSpec(i13 - i11, 1073741824));
        }
        Sj(this.sP, 0.0f, 0.0f);
        com.bytedance.adsdk.ugeno.EjP ejP2 = this.TKC;
        if (ejP2 != null) {
            ejP2.Sj(i10, i11, i12, i13);
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        if (!(getParent() instanceof Dq)) {
            Sj(i10, i11);
        }
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            int[] iArrSj = ejP.Sj(i10, i11);
            setMeasuredDimension(iArrSj[0], iArrSj[1]);
        } else {
            setMeasuredDimension(Math.round(this.sP.Jcg()), Math.round(this.sP.Dq()));
        }
        com.bytedance.adsdk.ugeno.EjP ejP2 = this.TKC;
        if (ejP2 != null) {
            ejP2.HiB();
        }
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.sP(i10, i11, i12, i13);
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    @Override
    public void removeAllViews() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            Sj(getChildAt(i10), false);
        }
        super.removeAllViews();
    }

    @Override
    public void removeAllViewsInLayout() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            Sj(getChildAt(i10), true);
        }
        super.removeAllViewsInLayout();
    }

    @Override
    public void removeView(View view) {
        Sj(view, false);
        super.removeView(view);
    }

    @Override
    public void removeViewAt(int i10) {
        Sj(getChildAt(i10), false);
        super.removeViewAt(i10);
    }

    @Override
    public void removeViewInLayout(View view) {
        Sj(view, true);
        super.removeViewInLayout(view);
    }

    @Override
    public void removeViews(int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            Sj(getChildAt(i12), false);
        }
        super.removeViews(i10, i11);
    }

    @Override
    public void removeViewsInLayout(int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            Sj(getChildAt(i12), true);
        }
        super.removeViewsInLayout(i10, i11);
    }

    @Override
    public void sP(int i10) {
        aa aaVar = this.sP;
        if (aaVar != null) {
            sP(aaVar, i10);
            requestLayout();
        }
    }

    @Override
    public void setBackgroundColor(int i10) {
        this.EjP.Sj(i10);
    }

    public void setBorderRadius(float f10) {
        this.EjP.Sj(f10);
    }

    public void setRipple(float f10) {
        com.bytedance.adsdk.ugeno.Sj.vS vSVar = this.EjP;
        if (vSVar != null) {
            vSVar.sP(f10);
        }
    }

    public void setRubIn(float f10) {
        com.bytedance.adsdk.ugeno.Sj.vS vSVar = this.EjP;
        if (vSVar != null) {
            vSVar.HiB(f10);
        }
    }

    public void setShine(float f10) {
        com.bytedance.adsdk.ugeno.Sj.vS vSVar = this.EjP;
        if (vSVar != null) {
            vSVar.TKC(f10);
        }
    }

    public void setStretch(float f10) {
        com.bytedance.adsdk.ugeno.Sj.vS vSVar = this.EjP;
        if (vSVar != null) {
            vSVar.EjP(f10);
        }
    }

    public Dq(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.EjP = new com.bytedance.adsdk.ugeno.Sj.vS(this);
        aa aaVarSj = Fmk.Sj();
        this.sP = aaVarSj;
        this.Sj = new HashMap();
        aaVarSj.Sj(this);
        aaVarSj.Sj((uA) new sP());
        Sj((Sj) generateDefaultLayoutParams(), aaVarSj, this);
    }

    @Override
    public void Sj(int i10) {
        aa aaVar = this.sP;
        if (aaVar != null) {
            Sj(aaVar, i10);
            requestLayout();
        }
    }

    @Override
    public void sP(View view, int i10) {
        aa aaVarSj;
        if (view == null || (aaVarSj = Sj(view)) == null) {
            return;
        }
        sP(aaVarSj, i10);
        view.requestLayout();
    }

    @Override
    public void Sj(View view, int i10) {
        aa aaVarSj;
        if (view == null || (aaVarSj = Sj(view)) == null) {
            return;
        }
        Sj(aaVarSj, i10);
        view.requestLayout();
    }

    private void sP(aa aaVar, int i10) {
        if (i10 == -1) {
            aaVar.Jcg(100.0f);
        } else if (i10 == -2) {
            aaVar.EjP();
        } else {
            aaVar.vS(i10);
        }
    }

    private void Sj(aa aaVar, int i10) {
        if (i10 == -1) {
            aaVar.HiB(100.0f);
        } else if (i10 == -2) {
            aaVar.TKC();
        } else {
            aaVar.EjP(i10);
        }
    }

    public static class sP implements uA {
        @Override
        public long Sj(aa aaVar, float f10, TEQ teq, float f11, TEQ teq2) {
            View view = (View) aaVar.uA();
            if (view == null || (view instanceof Dq)) {
                return Ym.Sj(0, 0);
            }
            view.measure(View.MeasureSpec.makeMeasureSpec((int) f10, Sj(teq)), View.MeasureSpec.makeMeasureSpec((int) f11, Sj(teq2)));
            return Ym.Sj(view.getMeasuredWidth(), view.getMeasuredHeight());
        }

        private int Sj(TEQ teq) {
            if (teq == TEQ.AT_MOST) {
                return Integer.MIN_VALUE;
            }
            return teq == TEQ.EXACTLY ? 1073741824 : 0;
        }
    }

    public static class Sj extends ViewGroup.LayoutParams {
        private float Dq;
        private float EjP;
        private float Fmk;
        private float HiB;
        private float Jcg;
        private float RiZ;
        SparseArray<Float> Sj;
        private float TEQ;
        private float TKC;
        private float TzV;
        private float Ym;
        private float Zq;

        private float f20234aa;
        private float dNu;
        SparseArray<String> sP;
        private float sef;
        private float uA;
        private float uvD;
        private float vS;

        public Sj(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            if (layoutParams instanceof Sj) {
                Sj sj2 = (Sj) layoutParams;
                this.Sj = sj2.Sj.clone();
                this.sP = sj2.sP.clone();
                return;
            }
            this.Sj = new SparseArray<>();
            this.sP = new SparseArray<>();
            if (layoutParams.width >= 0) {
                this.Sj.put(15, Float.valueOf(((ViewGroup.LayoutParams) this).width));
            }
            if (layoutParams.height >= 0) {
                this.Sj.put(16, Float.valueOf(((ViewGroup.LayoutParams) this).height));
            }
        }

        public void Dq(float f10) {
            this.sef = f10;
            this.Sj.put(11, Float.valueOf(f10));
        }

        public void EjP(float f10) {
            this.TEQ = f10;
            this.Sj.put(8, Float.valueOf(f10));
        }

        public void Fmk(float f10) {
            this.HiB = f10;
            this.Sj.put(19, Float.valueOf(f10));
        }

        public void HiB(float f10) {
            this.Ym = f10;
            this.Sj.put(9, Float.valueOf(f10));
        }

        public void Jcg(float f10) {
            this.Fmk = f10;
            this.Sj.put(10, Float.valueOf(f10));
        }

        public void Sj(float f10) {
            this.Jcg = f10;
            this.Sj.put(5, Float.valueOf(f10));
        }

        public void TEQ(float f10) {
            this.uvD = f10;
            this.Sj.put(13, Float.valueOf(f10));
        }

        public void TKC(float f10) {
            this.uA = f10;
            this.Sj.put(7, Float.valueOf(f10));
        }

        public void Ym(float f10) {
            this.TKC = f10;
            this.Sj.put(17, Float.valueOf(f10));
        }

        public void Zq(float f10) {
            this.dNu = f10;
            this.Sj.put(25, Float.valueOf(f10));
        }

        public void aa(float f10) {
            this.EjP = f10;
            this.Sj.put(18, Float.valueOf(f10));
        }

        public void dNu(float f10) {
            this.RiZ = f10;
            this.Sj.put(28, Float.valueOf(f10));
        }

        public void sP(float f10) {
            this.Dq = f10;
            this.Sj.put(6, Float.valueOf(f10));
        }

        public void sef(float f10) {
            this.vS = f10;
            this.Sj.put(20, Float.valueOf(f10));
        }

        public void uA(float f10) {
            this.Zq = f10;
            this.Sj.put(12, Float.valueOf(f10));
        }

        public void uvD(float f10) {
            this.TzV = f10;
            this.Sj.put(27, Float.valueOf(f10));
        }

        public void vS(float f10) {
            this.f20234aa = f10;
            this.Sj.put(14, Float.valueOf(f10));
        }

        public Sj(int i10, int i11) {
            super(i10, i11);
            this.Sj = new SparseArray<>();
            this.sP = new SparseArray<>();
            if (i10 == -2 || i10 == -1 || i10 >= 0) {
                this.Sj.put(15, Float.valueOf(i10));
            }
            if (i11 == -2 || i11 == -1 || i11 >= 0) {
                this.Sj.put(16, Float.valueOf(i11));
            }
        }
    }

    private void Sj(aa aaVar) {
        if (aaVar.sP() != null) {
            Sj(aaVar.sP());
        } else {
            aaVar.Sj(Float.NaN, Float.NaN);
        }
    }

    private void Sj(View view, boolean z10) {
        aa aaVar = this.Sj.get(view);
        if (aaVar == null) {
            return;
        }
        aa aaVarSP = aaVar.sP();
        for (int i10 = 0; i10 < aaVarSP.Sj(); i10++) {
            if (aaVarSP.Sj(i10).equals(aaVar)) {
                aaVarSP.sP(i10);
                break;
            }
        }
        aaVar.Sj((Object) null);
        this.Sj.remove(view);
        if (z10) {
            this.sP.Sj(Float.NaN, Float.NaN);
        }
    }

    private void Sj(aa aaVar, float f10, float f11) {
        View view = (View) aaVar.uA();
        if (view != null && view != this) {
            if (view.getVisibility() == 8) {
                return;
            }
            int iRound = Math.round(aaVar.HiB() + f10);
            int iRound2 = Math.round(aaVar.vS() + f11);
            view.measure(View.MeasureSpec.makeMeasureSpec(Math.round(aaVar.Jcg()), 1073741824), View.MeasureSpec.makeMeasureSpec(Math.round(aaVar.Dq()), 1073741824));
            view.layout(iRound, iRound2, view.getMeasuredWidth() + iRound, view.getMeasuredHeight() + iRound2);
        }
        int iSj = aaVar.Sj();
        for (int i10 = 0; i10 < iSj; i10++) {
            if (equals(view)) {
                Sj(aaVar.Sj(i10), f10, f11);
            } else if (!(view instanceof Dq)) {
                Sj(aaVar.Sj(i10), aaVar.HiB() + f10, aaVar.vS() + f11);
            }
        }
    }

    private void Sj(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode2 == 1073741824) {
            this.sP.vS(size2);
        }
        if (mode == 1073741824) {
            this.sP.EjP(size);
        }
        if (mode2 == Integer.MIN_VALUE) {
            this.sP.Ym(size2);
        }
        if (mode == Integer.MIN_VALUE) {
            this.sP.TEQ(size);
        }
        this.sP.Sj(Float.NaN, Float.NaN);
    }

    protected static void Sj(Sj sj2, aa aaVar, View view) {
        if (view.getResources().getConfiguration().getLayoutDirection() == 1) {
            aaVar.Sj(EjP.RTL);
        }
        Drawable background = view.getBackground();
        if (background != null) {
            Rect rect = new Rect();
            if (background.getPadding(rect)) {
                aaVar.sP(HiB.LEFT, rect.left);
                aaVar.sP(HiB.TOP, rect.top);
                aaVar.sP(HiB.RIGHT, rect.right);
                aaVar.sP(HiB.BOTTOM, rect.bottom);
            }
        }
        for (int i10 = 0; i10 < sj2.Sj.size(); i10++) {
            int iKeyAt = sj2.Sj.keyAt(i10);
            float fFloatValue = sj2.Sj.valueAt(i10).floatValue();
            if (iKeyAt == 4) {
                aaVar.TKC(com.bytedance.adsdk.ugeno.yoga.sP.Sj(Math.round(fFloatValue)));
            } else if (iKeyAt == 0) {
                aaVar.Sj(com.bytedance.adsdk.ugeno.yoga.sP.Sj(Math.round(fFloatValue)));
            } else if (iKeyAt == 9) {
                aaVar.sP(com.bytedance.adsdk.ugeno.yoga.sP.Sj(Math.round(fFloatValue)));
            } else if (iKeyAt == 25) {
                aaVar.aa(fFloatValue);
            } else if (iKeyAt == 8) {
                aaVar.TKC(fFloatValue);
            } else if (iKeyAt == 1) {
                aaVar.Sj(vS.Sj(Math.round(fFloatValue)));
            } else if (iKeyAt == 6) {
                aaVar.Sj(fFloatValue);
            } else if (iKeyAt == 7) {
                aaVar.sP(fFloatValue);
            } else if (iKeyAt == 16) {
                if (fFloatValue == -1.0f) {
                    aaVar.Jcg(100.0f);
                } else if (fFloatValue == -2.0f) {
                    aaVar.EjP();
                } else {
                    aaVar.vS(fFloatValue);
                }
            } else if (iKeyAt == 18) {
                aaVar.Sj(HiB.LEFT, fFloatValue);
            } else if (iKeyAt == 3) {
                aaVar.Sj(Jcg.Sj(Math.round(fFloatValue)));
            } else if (iKeyAt == 17) {
                aaVar.Sj(HiB.TOP, fFloatValue);
            } else if (iKeyAt == 20) {
                aaVar.Sj(HiB.RIGHT, fFloatValue);
            } else if (iKeyAt == 19) {
                aaVar.Sj(HiB.BOTTOM, fFloatValue);
            } else if (iKeyAt == 28) {
                aaVar.uA(fFloatValue);
            } else if (iKeyAt == 27) {
                aaVar.Dq(fFloatValue);
            } else if (iKeyAt == 22) {
                aaVar.sP(HiB.LEFT, fFloatValue);
            } else if (iKeyAt == 21) {
                aaVar.sP(HiB.TOP, fFloatValue);
            } else if (iKeyAt == 24) {
                aaVar.sP(HiB.RIGHT, fFloatValue);
            } else if (iKeyAt == 23) {
                aaVar.sP(HiB.BOTTOM, fFloatValue);
            } else if (iKeyAt == 11) {
                aaVar.TKC(HiB.LEFT, fFloatValue);
            } else if (iKeyAt == 10) {
                aaVar.TKC(HiB.TOP, fFloatValue);
            } else if (iKeyAt == 13) {
                aaVar.TKC(HiB.RIGHT, fFloatValue);
            } else if (iKeyAt == 12) {
                aaVar.TKC(HiB.BOTTOM, fFloatValue);
            } else if (iKeyAt == 14) {
                aaVar.Sj(Zq.Sj(Math.round(fFloatValue)));
            } else if (iKeyAt == 15) {
                if (fFloatValue == -1.0f) {
                    aaVar.HiB(100.0f);
                } else if (fFloatValue == -2.0f) {
                    aaVar.TKC();
                } else {
                    aaVar.EjP(fFloatValue);
                }
            } else if (iKeyAt == 2) {
                aaVar.Sj(uvD.Sj(Math.round(fFloatValue)));
            }
        }
    }

    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        this.TKC = tkc;
    }
}
