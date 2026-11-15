package com.bytedance.adsdk.ugeno.HiB;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.adsdk.ugeno.Jcg.Jcg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class HiB extends ViewGroup implements com.bytedance.adsdk.ugeno.HiB.Sj {
    private Drawable Dq;
    private int EjP;
    private int[] Fmk;
    private int HiB;
    private Drawable Jcg;
    private int Sj;
    private int TEQ;
    private int TKC;
    private EjP.Sj TzV;
    private int Ym;
    private EjP Zq;

    private int f20194aa;
    private com.bytedance.adsdk.ugeno.EjP dNu;
    private int sP;
    private SparseIntArray sef;
    private int uA;
    private List<TKC> uvD;
    private int vS;

    public static class Sj extends ViewGroup.MarginLayoutParams implements sP {
        public static final Parcelable.Creator<Sj> CREATOR = new Parcelable.Creator<Sj>() {
            @Override
            public Sj createFromParcel(Parcel parcel) {
                return new Sj(parcel);
            }

            @Override
            public Sj[] newArray(int i10) {
                return new Sj[i10];
            }
        };
        private int Dq;
        private int EjP;
        private float HiB;
        private int Jcg;
        private int Sj;
        private boolean TEQ;
        private float TKC;
        private float sP;
        private int uA;
        private int vS;

        public Sj(Sj sj2) {
            super((ViewGroup.MarginLayoutParams) sj2);
            this.Sj = 1;
            this.sP = 0.0f;
            this.TKC = 0.0f;
            this.EjP = -1;
            this.HiB = -1.0f;
            this.vS = -1;
            this.Jcg = -1;
            this.Dq = 16777215;
            this.uA = 16777215;
            this.Sj = sj2.Sj;
            this.sP = sj2.sP;
            this.TKC = sj2.TKC;
            this.EjP = sj2.EjP;
            this.HiB = sj2.HiB;
            this.vS = sj2.vS;
            this.Jcg = sj2.Jcg;
            this.Dq = sj2.Dq;
            this.uA = sj2.uA;
            this.TEQ = sj2.TEQ;
        }

        @Override
        public int Dq() {
            return this.Jcg;
        }

        @Override
        public float EjP() {
            return this.sP;
        }

        @Override
        public int Fmk() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override
        public float HiB() {
            return this.TKC;
        }

        @Override
        public int Jcg() {
            return this.vS;
        }

        @Override
        public int Sj() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override
        public int TEQ() {
            return this.uA;
        }

        @Override
        public int TKC() {
            return this.Sj;
        }

        @Override
        public boolean Ym() {
            return this.TEQ;
        }

        @Override
        public int Zq() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override
        public float aa() {
            return this.HiB;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public int sP() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override
        public int sef() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override
        public int uA() {
            return this.Dq;
        }

        @Override
        public int uvD() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override
        public int vS() {
            return this.EjP;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.Sj);
            parcel.writeFloat(this.sP);
            parcel.writeFloat(this.TKC);
            parcel.writeInt(this.EjP);
            parcel.writeFloat(this.HiB);
            parcel.writeInt(this.vS);
            parcel.writeInt(this.Jcg);
            parcel.writeInt(this.Dq);
            parcel.writeInt(this.uA);
            parcel.writeByte(this.TEQ ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        public void EjP(int i10) {
            this.EjP = i10;
        }

        public void Sj(float f10) {
            this.sP = f10;
        }

        public void TKC(int i10) {
            this.Sj = i10;
        }

        public void sP(float f10) {
            this.TKC = f10;
        }

        @Override
        public void Sj(int i10) {
            this.vS = i10;
        }

        public void TKC(float f10) {
            this.HiB = f10;
        }

        @Override
        public void sP(int i10) {
            this.Jcg = i10;
        }

        public Sj(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.Sj = 1;
            this.sP = 0.0f;
            this.TKC = 0.0f;
            this.EjP = -1;
            this.HiB = -1.0f;
            this.vS = -1;
            this.Jcg = -1;
            this.Dq = 16777215;
            this.uA = 16777215;
        }

        public Sj(int i10, int i11) {
            super(new ViewGroup.LayoutParams(i10, i11));
            this.Sj = 1;
            this.sP = 0.0f;
            this.TKC = 0.0f;
            this.EjP = -1;
            this.HiB = -1.0f;
            this.vS = -1;
            this.Jcg = -1;
            this.Dq = 16777215;
            this.uA = 16777215;
        }

        public Sj(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.Sj = 1;
            this.sP = 0.0f;
            this.TKC = 0.0f;
            this.EjP = -1;
            this.HiB = -1.0f;
            this.vS = -1;
            this.Jcg = -1;
            this.Dq = 16777215;
            this.uA = 16777215;
        }

        protected Sj(Parcel parcel) {
            super(0, 0);
            this.Sj = 1;
            this.sP = 0.0f;
            this.TKC = 0.0f;
            this.EjP = -1;
            this.HiB = -1.0f;
            this.vS = -1;
            this.Jcg = -1;
            this.Dq = 16777215;
            this.uA = 16777215;
            this.Sj = parcel.readInt();
            this.sP = parcel.readFloat();
            this.TKC = parcel.readFloat();
            this.EjP = parcel.readInt();
            this.HiB = parcel.readFloat();
            this.vS = parcel.readInt();
            this.Jcg = parcel.readInt();
            this.Dq = parcel.readInt();
            this.uA = parcel.readInt();
            this.TEQ = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }
    }

    public HiB(Context context) {
        super(context, null);
        this.vS = -1;
        this.Zq = new EjP(this);
        this.uvD = new ArrayList();
        this.TzV = new EjP.Sj();
    }

    private boolean EjP(int i10, int i11) {
        if (HiB(i10, i11)) {
            if (Sj()) {
                return (this.TEQ & 1) != 0;
            }
            return (this.uA & 1) != 0;
        }
        if (Sj()) {
            return (this.TEQ & 2) != 0;
        }
        return (this.uA & 2) != 0;
    }

    private boolean HiB(int i10, int i11) {
        for (int i12 = 1; i12 <= i11; i12++) {
            View viewTKC = TKC(i10 - i12);
            if (viewTKC != null && viewTKC.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    private boolean vS(int i10) {
        if (i10 >= 0 && i10 < this.uvD.size()) {
            for (int i11 = i10 + 1; i11 < this.uvD.size(); i11++) {
                if (this.uvD.get(i11).sP() > 0) {
                    return false;
                }
            }
            if (Sj()) {
                return (this.uA & 4) != 0;
            }
            if ((this.TEQ & 4) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int Sj(View view) {
        return 0;
    }

    public View TKC(int i10) {
        if (i10 < 0) {
            return null;
        }
        int[] iArr = this.Fmk;
        if (i10 >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[i10]);
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (this.sef == null) {
            this.sef = new SparseIntArray(getChildCount());
        }
        this.Fmk = this.Zq.Sj(view, i10, layoutParams, this.sef);
        super.addView(view, i10, layoutParams);
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof Sj;
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof Sj) {
            return new Sj((Sj) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new Sj((ViewGroup.MarginLayoutParams) layoutParams) : new Sj(layoutParams);
    }

    @Override
    public int getAlignContent() {
        return this.HiB;
    }

    @Override
    public int getAlignItems() {
        return this.EjP;
    }

    public Drawable getDividerDrawableHorizontal() {
        return this.Jcg;
    }

    public Drawable getDividerDrawableVertical() {
        return this.Dq;
    }

    @Override
    public int getFlexDirection() {
        return this.Sj;
    }

    @Override
    public int getFlexItemCount() {
        return getChildCount();
    }

    public List<TKC> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.uvD.size());
        for (TKC tkc : this.uvD) {
            if (tkc.sP() != 0) {
                arrayList.add(tkc);
            }
        }
        return arrayList;
    }

    @Override
    public List<TKC> getFlexLinesInternal() {
        return this.uvD;
    }

    @Override
    public int getFlexWrap() {
        return this.sP;
    }

    public int getJustifyContent() {
        return this.TKC;
    }

    @Override
    public int getLargestMainSize() {
        Iterator<TKC> it = this.uvD.iterator();
        int iMax = Integer.MIN_VALUE;
        while (it.hasNext()) {
            iMax = Math.max(iMax, it.next().HiB);
        }
        return iMax;
    }

    @Override
    public int getMaxLine() {
        return this.vS;
    }

    public int getShowDividerHorizontal() {
        return this.uA;
    }

    public int getShowDividerVertical() {
        return this.TEQ;
    }

    @Override
    public int getSumOfCrossSize() {
        int size = this.uvD.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            TKC tkc = this.uvD.get(i11);
            if (EjP(i11)) {
                i10 += Sj() ? this.Ym : this.f20194aa;
            }
            if (vS(i11)) {
                i10 += Sj() ? this.Ym : this.f20194aa;
            }
            i10 += tkc.Jcg;
        }
        return i10;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bytedance.adsdk.ugeno.EjP ejP = this.dNu;
        if (ejP != null) {
            ejP.Jcg();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.bytedance.adsdk.ugeno.EjP ejP = this.dNu;
        if (ejP != null) {
            ejP.Dq();
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        if (this.Dq == null && this.Jcg == null) {
            return;
        }
        if (this.uA == 0 && this.TEQ == 0) {
            return;
        }
        int iSj = Jcg.Sj(this);
        int i10 = this.Sj;
        if (i10 == 0) {
            Sj(canvas, iSj == 1, this.sP == 2);
            return;
        }
        if (i10 == 1) {
            Sj(canvas, iSj != 1, this.sP == 2);
            return;
        }
        if (i10 == 2) {
            boolean z10 = iSj == 1;
            if (this.sP == 2) {
                z10 = !z10;
            }
            sP(canvas, z10, false);
            return;
        }
        if (i10 != 3) {
            return;
        }
        boolean z11 = iSj == 1;
        if (this.sP == 2) {
            z11 = !z11;
        }
        sP(canvas, z11, true);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean z11;
        com.bytedance.adsdk.ugeno.EjP ejP = this.dNu;
        if (ejP != null) {
            ejP.vS();
        }
        int iSj = Jcg.Sj(this);
        int i14 = this.Sj;
        if (i14 == 0) {
            Sj(iSj == 1, i10, i11, i12, i13);
        } else if (i14 == 1) {
            Sj(iSj != 1, i10, i11, i12, i13);
        } else if (i14 == 2) {
            z11 = iSj == 1;
            Sj(this.sP == 2 ? !z11 : z11, false, i10, i11, i12, i13);
        } else {
            if (i14 != 3) {
                throw new IllegalStateException("Invalid flex direction is set: " + this.Sj);
            }
            z11 = iSj == 1;
            Sj(this.sP == 2 ? !z11 : z11, true, i10, i11, i12, i13);
        }
        com.bytedance.adsdk.ugeno.EjP ejP2 = this.dNu;
        if (ejP2 != null) {
            ejP2.Sj(i10, i11, i12, i13);
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        com.bytedance.adsdk.ugeno.EjP ejP = this.dNu;
        if (ejP != null) {
            int[] iArrSj = ejP.Sj(i10, i11);
            Sj(iArrSj[0], iArrSj[1]);
        } else {
            Sj(i10, i11);
        }
        com.bytedance.adsdk.ugeno.EjP ejP2 = this.dNu;
        if (ejP2 != null) {
            ejP2.HiB();
        }
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        com.bytedance.adsdk.ugeno.EjP ejP = this.dNu;
        if (ejP != null) {
            ejP.sP(i10, i11, i12, i13);
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    @Override
    public View sP(int i10) {
        return TKC(i10);
    }

    public void setAlignContent(int i10) {
        if (this.HiB != i10) {
            this.HiB = i10;
            requestLayout();
        }
    }

    public void setAlignItems(int i10) {
        if (this.EjP != i10) {
            this.EjP = i10;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(Drawable drawable) {
        if (drawable == this.Jcg) {
            return;
        }
        this.Jcg = drawable;
        if (drawable != null) {
            this.Ym = drawable.getIntrinsicHeight();
        } else {
            this.Ym = 0;
        }
        sP();
        requestLayout();
    }

    public void setDividerDrawableVertical(Drawable drawable) {
        if (drawable == this.Dq) {
            return;
        }
        this.Dq = drawable;
        if (drawable != null) {
            this.f20194aa = drawable.getIntrinsicWidth();
        } else {
            this.f20194aa = 0;
        }
        sP();
        requestLayout();
    }

    public void setFlexDirection(int i10) {
        if (this.Sj != i10) {
            this.Sj = i10;
            requestLayout();
        }
    }

    @Override
    public void setFlexLines(List<TKC> list) {
        this.uvD = list;
    }

    public void setFlexWrap(int i10) {
        if (this.sP != i10) {
            this.sP = i10;
            requestLayout();
        }
    }

    public void setJustifyContent(int i10) {
        if (this.TKC != i10) {
            this.TKC = i10;
            requestLayout();
        }
    }

    public void setMaxLine(int i10) {
        if (this.vS != i10) {
            this.vS = i10;
            requestLayout();
        }
    }

    public void setShowDivider(int i10) {
        setShowDividerVertical(i10);
        setShowDividerHorizontal(i10);
    }

    public void setShowDividerHorizontal(int i10) {
        if (i10 != this.uA) {
            this.uA = i10;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i10) {
        if (i10 != this.TEQ) {
            this.TEQ = i10;
            requestLayout();
        }
    }

    private void Sj(int i10, int i11) {
        if (this.sef == null) {
            this.sef = new SparseIntArray(getChildCount());
        }
        if (this.Zq.sP(this.sef)) {
            this.Fmk = this.Zq.Sj(this.sef);
        }
        int i12 = this.Sj;
        if (i12 == 0 || i12 == 1) {
            sP(i10, i11);
        } else if (i12 == 2 || i12 == 3) {
            TKC(i10, i11);
        } else {
            throw new IllegalStateException("Invalid value for the flex direction is set: " + this.Sj);
        }
    }

    private void sP(int i10, int i11) {
        this.uvD.clear();
        this.TzV.Sj();
        this.Zq.Sj(this.TzV, i10, i11);
        this.uvD = this.TzV.Sj;
        this.Zq.Sj(i10, i11);
        if (this.EjP == 3) {
            for (TKC tkc : this.uvD) {
                int iMax = Integer.MIN_VALUE;
                for (int i12 = 0; i12 < tkc.Dq; i12++) {
                    View viewTKC = TKC(tkc.Zq + i12);
                    if (viewTKC != null && viewTKC.getVisibility() != 8) {
                        Sj sj2 = (Sj) viewTKC.getLayoutParams();
                        iMax = this.sP != 2 ? Math.max(iMax, viewTKC.getMeasuredHeight() + Math.max(tkc.f20195aa - viewTKC.getBaseline(), ((ViewGroup.MarginLayoutParams) sj2).topMargin) + ((ViewGroup.MarginLayoutParams) sj2).bottomMargin) : Math.max(iMax, viewTKC.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) sj2).topMargin + Math.max((tkc.f20195aa - viewTKC.getMeasuredHeight()) + viewTKC.getBaseline(), ((ViewGroup.MarginLayoutParams) sj2).bottomMargin));
                    }
                }
                tkc.Jcg = iMax;
            }
        }
        this.Zq.sP(i10, i11, getPaddingTop() + getPaddingBottom());
        this.Zq.Sj();
        Sj(this.Sj, i10, i11, this.TzV.sP);
    }

    private boolean HiB(int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.uvD.get(i11).sP() > 0) {
                return false;
            }
        }
        return true;
    }

    private void TKC(int i10, int i11) {
        this.uvD.clear();
        this.TzV.Sj();
        this.Zq.sP(this.TzV, i10, i11);
        this.uvD = this.TzV.Sj;
        this.Zq.Sj(i10, i11);
        this.Zq.sP(i10, i11, getPaddingLeft() + getPaddingRight());
        this.Zq.Sj();
        Sj(this.Sj, i10, i11, this.TzV.sP);
    }

    private boolean EjP(int i10) {
        if (i10 >= 0 && i10 < this.uvD.size()) {
            if (HiB(i10)) {
                if (Sj()) {
                    return (this.uA & 1) != 0;
                }
                return (this.TEQ & 1) != 0;
            }
            if (Sj()) {
                return (this.uA & 2) != 0;
            }
            if ((this.TEQ & 2) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public View Sj(int i10) {
        return getChildAt(i10);
    }

    private void Sj(int i10, int i11, int i12, int i13) {
        int sumOfCrossSize;
        int largestMainSize;
        int iResolveSizeAndState;
        int iResolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size2 = View.MeasureSpec.getSize(i12);
        if (i10 == 0 || i10 == 1) {
            sumOfCrossSize = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
            largestMainSize = getLargestMainSize();
        } else {
            if (i10 != 2 && i10 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(i10)));
            }
            sumOfCrossSize = getLargestMainSize();
            largestMainSize = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i13 = View.combineMeasuredStates(i13, 16777216);
            } else {
                size = largestMainSize;
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i11, i13);
        } else if (mode == 0) {
            iResolveSizeAndState = View.resolveSizeAndState(largestMainSize, i11, i13);
        } else if (mode == 1073741824) {
            if (size < largestMainSize) {
                i13 = View.combineMeasuredStates(i13, 16777216);
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i11, i13);
        } else {
            throw new IllegalStateException("Unknown width mode is set: ".concat(String.valueOf(mode)));
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < sumOfCrossSize) {
                i13 = View.combineMeasuredStates(i13, 256);
            } else {
                size2 = sumOfCrossSize;
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i12, i13);
        } else if (mode2 == 0) {
            iResolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, i12, i13);
        } else if (mode2 == 1073741824) {
            if (size2 < sumOfCrossSize) {
                i13 = View.combineMeasuredStates(i13, 256);
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i12, i13);
        } else {
            throw new IllegalStateException("Unknown height mode is set: ".concat(String.valueOf(mode2)));
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    private void sP(Canvas canvas, boolean z10, boolean z11) {
        int i10;
        int i11;
        int bottom;
        int top;
        int paddingTop = getPaddingTop();
        int iMax = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.uvD.size();
        for (int i12 = 0; i12 < size; i12++) {
            TKC tkc = this.uvD.get(i12);
            for (int i13 = 0; i13 < tkc.Dq; i13++) {
                int i14 = tkc.Zq + i13;
                View viewTKC = TKC(i14);
                if (viewTKC != null && viewTKC.getVisibility() != 8) {
                    Sj sj2 = (Sj) viewTKC.getLayoutParams();
                    if (EjP(i14, i13)) {
                        if (z11) {
                            top = viewTKC.getBottom() + ((ViewGroup.MarginLayoutParams) sj2).bottomMargin;
                        } else {
                            top = (viewTKC.getTop() - ((ViewGroup.MarginLayoutParams) sj2).topMargin) - this.Ym;
                        }
                        sP(canvas, tkc.Sj, top, tkc.Jcg);
                    }
                    if (i13 == tkc.Dq - 1 && (this.uA & 4) > 0) {
                        if (z11) {
                            bottom = (viewTKC.getTop() - ((ViewGroup.MarginLayoutParams) sj2).topMargin) - this.Ym;
                        } else {
                            bottom = viewTKC.getBottom() + ((ViewGroup.MarginLayoutParams) sj2).bottomMargin;
                        }
                        sP(canvas, tkc.Sj, bottom, tkc.Jcg);
                    }
                }
            }
            if (EjP(i12)) {
                if (z10) {
                    i11 = tkc.TKC;
                } else {
                    i11 = tkc.Sj - this.f20194aa;
                }
                Sj(canvas, i11, paddingTop, iMax);
            }
            if (vS(i12) && (this.TEQ & 4) > 0) {
                if (z10) {
                    i10 = tkc.Sj - this.f20194aa;
                } else {
                    i10 = tkc.TKC;
                }
                Sj(canvas, i10, paddingTop, iMax);
            }
        }
    }

    @Override
    public boolean Sj() {
        int i10 = this.Sj;
        return i10 == 0 || i10 == 1;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:43:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:48:0x0103  */
    /* JADX WARN: Code duplicated, block: B:51:0x010c  */
    /* JADX WARN: Code duplicated, block: B:53:0x0114  */
    /* JADX WARN: Code duplicated, block: B:54:0x0119  */
    /* JADX WARN: Code duplicated, block: B:58:0x0122 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x0124  */
    /* JADX WARN: Code duplicated, block: B:60:0x0157  */
    /* JADX WARN: Code duplicated, block: B:61:0x0181  */
    /* JADX WARN: Code duplicated, block: B:63:0x018e  */
    /* JADX WARN: Code duplicated, block: B:64:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:67:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:68:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:70:0x0200  */
    /* JADX WARN: Code duplicated, block: B:71:0x020b  */
    private void Sj(boolean z10, int i10, int i11, int i12, int i13) {
        float measuredWidth;
        float f10;
        float f11;
        float fMax;
        int i14;
        int i15;
        View viewTKC;
        int i16;
        int i17;
        int i18;
        char c10;
        Sj sj2;
        float f12;
        float f13;
        float f14;
        int i19;
        char c11;
        int i20;
        Sj sj3;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i21 = i12 - i10;
        int paddingBottom = (i13 - i11) - getPaddingBottom();
        int paddingTop = getPaddingTop();
        int size = this.uvD.size();
        int i22 = 0;
        while (i22 < size) {
            TKC tkc = this.uvD.get(i22);
            if (EjP(i22)) {
                int i23 = this.Ym;
                paddingBottom -= i23;
                paddingTop += i23;
            }
            int i24 = this.TKC;
            char c12 = 4;
            int i25 = 1;
            if (i24 == 0) {
                measuredWidth = paddingLeft;
                f10 = i21 - paddingRight;
            } else if (i24 == 1) {
                int i26 = tkc.HiB;
                f10 = i26 - paddingLeft;
                measuredWidth = (i21 - i26) + paddingRight;
            } else {
                if (i24 == 2) {
                    int i27 = tkc.HiB;
                    measuredWidth = paddingLeft + ((i21 - i27) / 2.0f);
                    f10 = (i21 - paddingRight) - ((i21 - i27) / 2.0f);
                } else if (i24 == 3) {
                    measuredWidth = paddingLeft;
                    int iSP = tkc.sP();
                    f11 = (i21 - tkc.HiB) / (iSP != 1 ? iSP - 1 : 1.0f);
                    f10 = i21 - paddingRight;
                } else if (i24 == 4) {
                    int iSP2 = tkc.sP();
                    f11 = iSP2 != 0 ? (i21 - tkc.HiB) / iSP2 : 0.0f;
                    float f15 = f11 / 2.0f;
                    measuredWidth = paddingLeft + f15;
                    f10 = (i21 - paddingRight) - f15;
                } else if (i24 == 5) {
                    int iSP3 = tkc.sP();
                    f11 = iSP3 != 0 ? (i21 - tkc.HiB) / (iSP3 + 1) : 0.0f;
                    measuredWidth = paddingLeft + f11;
                    f10 = (i21 - paddingRight) - f11;
                } else {
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.TKC);
                }
                fMax = Math.max(f11, 0.0f);
                i14 = 0;
                while (i14 < tkc.Dq) {
                    i15 = tkc.Zq + i14;
                    viewTKC = TKC(i15);
                    if (viewTKC != null) {
                        i16 = paddingLeft;
                        i17 = i25;
                        i18 = i14;
                        c10 = c12;
                    } else if (viewTKC.getVisibility() != 8) {
                        sj2 = (Sj) viewTKC.getLayoutParams();
                        f12 = measuredWidth + ((ViewGroup.MarginLayoutParams) sj2).leftMargin;
                        f13 = f10 - ((ViewGroup.MarginLayoutParams) sj2).rightMargin;
                        if (EjP(i15, i14)) {
                            int i28 = this.f20194aa;
                            float f16 = i28;
                            f12 += f16;
                            i19 = i28;
                            f14 = f13 - f16;
                        } else {
                            f14 = f13;
                            i19 = 0;
                        }
                        if (i14 == tkc.Dq - i25) {
                            c11 = 4;
                            i20 = (this.TEQ & 4) > 0 ? this.f20194aa : 0;
                            if (this.sP == 2) {
                                i16 = paddingLeft;
                                i17 = i25;
                                i18 = i14;
                                sj3 = sj2;
                                c10 = c11;
                                if (z10) {
                                    this.Zq.Sj(viewTKC, tkc, Math.round(f14) - viewTKC.getMeasuredWidth(), paddingTop, Math.round(f14), paddingTop + viewTKC.getMeasuredHeight());
                                } else {
                                    this.Zq.Sj(viewTKC, tkc, Math.round(f12), paddingTop, Math.round(f12) + viewTKC.getMeasuredWidth(), paddingTop + viewTKC.getMeasuredHeight());
                                }
                            } else if (z10) {
                                i17 = i25;
                                i18 = i14;
                                i16 = paddingLeft;
                                sj3 = sj2;
                                c10 = c11;
                                this.Zq.Sj(viewTKC, tkc, Math.round(f14) - viewTKC.getMeasuredWidth(), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f14), paddingBottom);
                            } else {
                                i16 = paddingLeft;
                                i17 = i25;
                                i18 = i14;
                                sj3 = sj2;
                                c10 = c11;
                                this.Zq.Sj(viewTKC, tkc, Math.round(f12), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f12) + viewTKC.getMeasuredWidth(), paddingBottom);
                            }
                            measuredWidth = f12 + viewTKC.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) sj3).rightMargin;
                            float measuredWidth2 = f14 - ((viewTKC.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) sj3).leftMargin);
                            if (z10) {
                                tkc.Sj(viewTKC, i20, 0, i19, 0);
                            } else {
                                tkc.Sj(viewTKC, i19, 0, i20, 0);
                            }
                            f10 = measuredWidth2;
                        } else {
                            c11 = 4;
                        }
                        if (this.sP == 2) {
                            i16 = paddingLeft;
                            i17 = i25;
                            i18 = i14;
                            sj3 = sj2;
                            c10 = c11;
                            if (z10) {
                                this.Zq.Sj(viewTKC, tkc, Math.round(f14) - viewTKC.getMeasuredWidth(), paddingTop, Math.round(f14), paddingTop + viewTKC.getMeasuredHeight());
                            } else {
                                this.Zq.Sj(viewTKC, tkc, Math.round(f12), paddingTop, Math.round(f12) + viewTKC.getMeasuredWidth(), paddingTop + viewTKC.getMeasuredHeight());
                            }
                        } else if (z10) {
                            i17 = i25;
                            i18 = i14;
                            i16 = paddingLeft;
                            sj3 = sj2;
                            c10 = c11;
                            this.Zq.Sj(viewTKC, tkc, Math.round(f14) - viewTKC.getMeasuredWidth(), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f14), paddingBottom);
                        } else {
                            i16 = paddingLeft;
                            i17 = i25;
                            i18 = i14;
                            sj3 = sj2;
                            c10 = c11;
                            this.Zq.Sj(viewTKC, tkc, Math.round(f12), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f12) + viewTKC.getMeasuredWidth(), paddingBottom);
                        }
                        measuredWidth = f12 + viewTKC.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) sj3).rightMargin;
                        float measuredWidth3 = f14 - ((viewTKC.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) sj3).leftMargin);
                        if (z10) {
                            tkc.Sj(viewTKC, i20, 0, i19, 0);
                        } else {
                            tkc.Sj(viewTKC, i19, 0, i20, 0);
                        }
                        f10 = measuredWidth3;
                    } else {
                        i16 = paddingLeft;
                        i17 = i25;
                        i18 = i14;
                        c10 = 4;
                    }
                    i14 = i18 + 1;
                    c12 = c10;
                    i25 = i17;
                    paddingLeft = i16;
                }
                int i29 = paddingLeft;
                int i30 = tkc.Jcg;
                paddingTop += i30;
                paddingBottom -= i30;
                i22++;
                paddingLeft = i29;
            }
            f11 = 0.0f;
            fMax = Math.max(f11, 0.0f);
            i14 = 0;
            while (i14 < tkc.Dq) {
                i15 = tkc.Zq + i14;
                viewTKC = TKC(i15);
                if (viewTKC != null) {
                    i16 = paddingLeft;
                    i17 = i25;
                    i18 = i14;
                    c10 = c12;
                } else if (viewTKC.getVisibility() != 8) {
                    sj2 = (Sj) viewTKC.getLayoutParams();
                    f12 = measuredWidth + ((ViewGroup.MarginLayoutParams) sj2).leftMargin;
                    f13 = f10 - ((ViewGroup.MarginLayoutParams) sj2).rightMargin;
                    if (EjP(i15, i14)) {
                        int i210 = this.f20194aa;
                        float f17 = i210;
                        f12 += f17;
                        i19 = i210;
                        f14 = f13 - f17;
                    } else {
                        f14 = f13;
                        i19 = 0;
                    }
                    if (i14 == tkc.Dq - i25) {
                        c11 = 4;
                        if ((this.TEQ & 4) > 0) {
                        }
                        if (this.sP == 2) {
                            i16 = paddingLeft;
                            i17 = i25;
                            i18 = i14;
                            sj3 = sj2;
                            c10 = c11;
                            if (z10) {
                                this.Zq.Sj(viewTKC, tkc, Math.round(f14) - viewTKC.getMeasuredWidth(), paddingTop, Math.round(f14), paddingTop + viewTKC.getMeasuredHeight());
                            } else {
                                this.Zq.Sj(viewTKC, tkc, Math.round(f12), paddingTop, Math.round(f12) + viewTKC.getMeasuredWidth(), paddingTop + viewTKC.getMeasuredHeight());
                            }
                        } else if (z10) {
                            i17 = i25;
                            i18 = i14;
                            i16 = paddingLeft;
                            sj3 = sj2;
                            c10 = c11;
                            this.Zq.Sj(viewTKC, tkc, Math.round(f14) - viewTKC.getMeasuredWidth(), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f14), paddingBottom);
                        } else {
                            i16 = paddingLeft;
                            i17 = i25;
                            i18 = i14;
                            sj3 = sj2;
                            c10 = c11;
                            this.Zq.Sj(viewTKC, tkc, Math.round(f12), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f12) + viewTKC.getMeasuredWidth(), paddingBottom);
                        }
                        measuredWidth = f12 + viewTKC.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) sj3).rightMargin;
                        float measuredWidth4 = f14 - ((viewTKC.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) sj3).leftMargin);
                        if (z10) {
                            tkc.Sj(viewTKC, i20, 0, i19, 0);
                        } else {
                            tkc.Sj(viewTKC, i19, 0, i20, 0);
                        }
                        f10 = measuredWidth4;
                    } else {
                        c11 = 4;
                    }
                    if (this.sP == 2) {
                        i16 = paddingLeft;
                        i17 = i25;
                        i18 = i14;
                        sj3 = sj2;
                        c10 = c11;
                        if (z10) {
                            this.Zq.Sj(viewTKC, tkc, Math.round(f14) - viewTKC.getMeasuredWidth(), paddingTop, Math.round(f14), paddingTop + viewTKC.getMeasuredHeight());
                        } else {
                            this.Zq.Sj(viewTKC, tkc, Math.round(f12), paddingTop, Math.round(f12) + viewTKC.getMeasuredWidth(), paddingTop + viewTKC.getMeasuredHeight());
                        }
                    } else if (z10) {
                        i17 = i25;
                        i18 = i14;
                        i16 = paddingLeft;
                        sj3 = sj2;
                        c10 = c11;
                        this.Zq.Sj(viewTKC, tkc, Math.round(f14) - viewTKC.getMeasuredWidth(), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f14), paddingBottom);
                    } else {
                        i16 = paddingLeft;
                        i17 = i25;
                        i18 = i14;
                        sj3 = sj2;
                        c10 = c11;
                        this.Zq.Sj(viewTKC, tkc, Math.round(f12), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f12) + viewTKC.getMeasuredWidth(), paddingBottom);
                    }
                    measuredWidth = f12 + viewTKC.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) sj3).rightMargin;
                    float measuredWidth5 = f14 - ((viewTKC.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) sj3).leftMargin);
                    if (z10) {
                        tkc.Sj(viewTKC, i20, 0, i19, 0);
                    } else {
                        tkc.Sj(viewTKC, i19, 0, i20, 0);
                    }
                    f10 = measuredWidth5;
                } else {
                    i16 = paddingLeft;
                    i17 = i25;
                    i18 = i14;
                    c10 = 4;
                }
                i14 = i18 + 1;
                c12 = c10;
                i25 = i17;
                paddingLeft = i16;
            }
            int i211 = paddingLeft;
            int i31 = tkc.Jcg;
            paddingTop += i31;
            paddingBottom -= i31;
            i22++;
            paddingLeft = i211;
        }
    }

    private void sP(Canvas canvas, int i10, int i11, int i12) {
        Drawable drawable = this.Jcg;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i10, i11, i12 + i10, this.Ym + i11);
        this.Jcg.draw(canvas);
    }

    @Override
    public int sP(int i10, int i11, int i12) {
        return ViewGroup.getChildMeasureSpec(i10, i11, i12);
    }

    private void sP() {
        if (this.Jcg == null && this.Dq == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00da  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:49:0x0103  */
    /* JADX WARN: Code duplicated, block: B:52:0x010f  */
    /* JADX WARN: Code duplicated, block: B:54:0x0117  */
    /* JADX WARN: Code duplicated, block: B:55:0x011c  */
    /* JADX WARN: Code duplicated, block: B:58:0x0122 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x0124  */
    /* JADX WARN: Code duplicated, block: B:60:0x0153  */
    /* JADX WARN: Code duplicated, block: B:61:0x017b  */
    /* JADX WARN: Code duplicated, block: B:63:0x0185  */
    /* JADX WARN: Code duplicated, block: B:64:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:67:0x01de  */
    /* JADX WARN: Code duplicated, block: B:68:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:70:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:71:0x0203  */
    private void Sj(boolean z10, boolean z11, int i10, int i11, int i12, int i13) {
        float f10;
        int i14;
        float f11;
        float f12;
        float fMax;
        int i15;
        int i16;
        View viewTKC;
        int i17;
        boolean z12;
        char c10;
        Sj sj2;
        float f13;
        float f14;
        float f15;
        float f16;
        int i18;
        char c11;
        int i19;
        Sj sj3;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int i20 = i13 - i11;
        int i21 = (i12 - i10) - paddingRight;
        int size = this.uvD.size();
        for (int i22 = 0; i22 < size; i22++) {
            TKC tkc = this.uvD.get(i22);
            if (EjP(i22)) {
                int i23 = this.f20194aa;
                paddingLeft += i23;
                i21 -= i23;
            }
            int i24 = this.TKC;
            char c12 = 4;
            boolean z13 = true;
            if (i24 != 0) {
                if (i24 == 1) {
                    int i25 = tkc.HiB;
                    f10 = (i20 - i25) + paddingBottom;
                    i14 = i25 - paddingTop;
                } else if (i24 == 2) {
                    int i26 = tkc.HiB;
                    f11 = (i20 - paddingBottom) - ((i20 - i26) / 2.0f);
                    f10 = paddingTop + ((i20 - i26) / 2.0f);
                    f12 = 0.0f;
                } else if (i24 == 3) {
                    f10 = paddingTop;
                    int iSP = tkc.sP();
                    f12 = (i20 - tkc.HiB) / (iSP != 1 ? iSP - 1 : 1.0f);
                    f11 = i20 - paddingBottom;
                } else if (i24 == 4) {
                    int iSP2 = tkc.sP();
                    f12 = iSP2 != 0 ? (i20 - tkc.HiB) / iSP2 : 0.0f;
                    float f17 = f12 / 2.0f;
                    f10 = paddingTop + f17;
                    f11 = (i20 - paddingBottom) - f17;
                } else if (i24 == 5) {
                    int iSP3 = tkc.sP();
                    f12 = iSP3 != 0 ? (i20 - tkc.HiB) / (iSP3 + 1) : 0.0f;
                    f10 = paddingTop + f12;
                    f11 = (i20 - paddingBottom) - f12;
                } else {
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.TKC);
                }
                fMax = Math.max(f12, 0.0f);
                i15 = 0;
                while (i15 < tkc.Dq) {
                    i16 = tkc.Zq + i15;
                    viewTKC = TKC(i16);
                    if (viewTKC != null) {
                        i17 = i15;
                        z12 = z13;
                        c10 = c12;
                    } else if (viewTKC.getVisibility() != 8) {
                        sj2 = (Sj) viewTKC.getLayoutParams();
                        f13 = f10 + ((ViewGroup.MarginLayoutParams) sj2).topMargin;
                        f14 = f11 - ((ViewGroup.MarginLayoutParams) sj2).bottomMargin;
                        if (EjP(i16, i15)) {
                            int i27 = this.Ym;
                            float f18 = i27;
                            f15 = f13 + f18;
                            i18 = i27;
                            f16 = f14 - f18;
                        } else {
                            f15 = f13;
                            f16 = f14;
                            i18 = 0;
                        }
                        if (i15 == tkc.Dq - 1) {
                            c11 = 4;
                            i19 = (this.uA & 4) > 0 ? this.Ym : 0;
                            if (z10) {
                                i17 = i15;
                                z12 = true;
                                sj3 = sj2;
                                c10 = c11;
                                if (z11) {
                                    this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f16) - viewTKC.getMeasuredHeight(), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f16));
                                } else {
                                    this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f15), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f15) + viewTKC.getMeasuredHeight());
                                }
                            } else if (z11) {
                                i17 = i15;
                                z12 = true;
                                sj3 = sj2;
                                c10 = c11;
                                this.Zq.Sj(viewTKC, tkc, true, i21 - viewTKC.getMeasuredWidth(), Math.round(f16) - viewTKC.getMeasuredHeight(), i21, Math.round(f16));
                            } else {
                                i17 = i15;
                                z12 = true;
                                sj3 = sj2;
                                c10 = c11;
                                this.Zq.Sj(viewTKC, tkc, true, i21 - viewTKC.getMeasuredWidth(), Math.round(f15), i21, Math.round(f15) + viewTKC.getMeasuredHeight());
                            }
                            Sj sj4 = sj3;
                            float measuredHeight = f15 + viewTKC.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) sj4).bottomMargin;
                            float measuredHeight2 = f16 - ((viewTKC.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) sj4).topMargin);
                            if (z11) {
                                tkc.Sj(viewTKC, 0, i19, 0, i18);
                            } else {
                                tkc.Sj(viewTKC, 0, i18, 0, i19);
                            }
                            f10 = measuredHeight;
                            f11 = measuredHeight2;
                        } else {
                            c11 = 4;
                        }
                        if (z10) {
                            i17 = i15;
                            z12 = true;
                            sj3 = sj2;
                            c10 = c11;
                            if (z11) {
                                this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f16) - viewTKC.getMeasuredHeight(), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f16));
                            } else {
                                this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f15), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f15) + viewTKC.getMeasuredHeight());
                            }
                        } else if (z11) {
                            i17 = i15;
                            z12 = true;
                            sj3 = sj2;
                            c10 = c11;
                            this.Zq.Sj(viewTKC, tkc, true, i21 - viewTKC.getMeasuredWidth(), Math.round(f16) - viewTKC.getMeasuredHeight(), i21, Math.round(f16));
                        } else {
                            i17 = i15;
                            z12 = true;
                            sj3 = sj2;
                            c10 = c11;
                            this.Zq.Sj(viewTKC, tkc, true, i21 - viewTKC.getMeasuredWidth(), Math.round(f15), i21, Math.round(f15) + viewTKC.getMeasuredHeight());
                        }
                        Sj sj5 = sj3;
                        float measuredHeight3 = f15 + viewTKC.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) sj5).bottomMargin;
                        float measuredHeight4 = f16 - ((viewTKC.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) sj5).topMargin);
                        if (z11) {
                            tkc.Sj(viewTKC, 0, i19, 0, i18);
                        } else {
                            tkc.Sj(viewTKC, 0, i18, 0, i19);
                        }
                        f10 = measuredHeight3;
                        f11 = measuredHeight4;
                    } else {
                        i17 = i15;
                        z12 = true;
                        c10 = 4;
                    }
                    i15 = i17 + 1;
                    z13 = z12;
                    c12 = c10;
                }
                int i28 = tkc.Jcg;
                paddingLeft += i28;
                i21 -= i28;
            } else {
                f10 = paddingTop;
                i14 = i20 - paddingBottom;
            }
            f11 = i14;
            f12 = 0.0f;
            fMax = Math.max(f12, 0.0f);
            i15 = 0;
            while (i15 < tkc.Dq) {
                i16 = tkc.Zq + i15;
                viewTKC = TKC(i16);
                if (viewTKC != null) {
                    i17 = i15;
                    z12 = z13;
                    c10 = c12;
                } else if (viewTKC.getVisibility() != 8) {
                    sj2 = (Sj) viewTKC.getLayoutParams();
                    f13 = f10 + ((ViewGroup.MarginLayoutParams) sj2).topMargin;
                    f14 = f11 - ((ViewGroup.MarginLayoutParams) sj2).bottomMargin;
                    if (EjP(i16, i15)) {
                        int i29 = this.Ym;
                        float f19 = i29;
                        f15 = f13 + f19;
                        i18 = i29;
                        f16 = f14 - f19;
                    } else {
                        f15 = f13;
                        f16 = f14;
                        i18 = 0;
                    }
                    if (i15 == tkc.Dq - 1) {
                        c11 = 4;
                        if ((this.uA & 4) > 0) {
                        }
                        if (z10) {
                            i17 = i15;
                            z12 = true;
                            sj3 = sj2;
                            c10 = c11;
                            if (z11) {
                                this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f16) - viewTKC.getMeasuredHeight(), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f16));
                            } else {
                                this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f15), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f15) + viewTKC.getMeasuredHeight());
                            }
                        } else if (z11) {
                            i17 = i15;
                            z12 = true;
                            sj3 = sj2;
                            c10 = c11;
                            this.Zq.Sj(viewTKC, tkc, true, i21 - viewTKC.getMeasuredWidth(), Math.round(f16) - viewTKC.getMeasuredHeight(), i21, Math.round(f16));
                        } else {
                            i17 = i15;
                            z12 = true;
                            sj3 = sj2;
                            c10 = c11;
                            this.Zq.Sj(viewTKC, tkc, true, i21 - viewTKC.getMeasuredWidth(), Math.round(f15), i21, Math.round(f15) + viewTKC.getMeasuredHeight());
                        }
                        Sj sj6 = sj3;
                        float measuredHeight5 = f15 + viewTKC.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) sj6).bottomMargin;
                        float measuredHeight6 = f16 - ((viewTKC.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) sj6).topMargin);
                        if (z11) {
                            tkc.Sj(viewTKC, 0, i19, 0, i18);
                        } else {
                            tkc.Sj(viewTKC, 0, i18, 0, i19);
                        }
                        f10 = measuredHeight5;
                        f11 = measuredHeight6;
                    } else {
                        c11 = 4;
                    }
                    if (z10) {
                        i17 = i15;
                        z12 = true;
                        sj3 = sj2;
                        c10 = c11;
                        if (z11) {
                            this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f16) - viewTKC.getMeasuredHeight(), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f16));
                        } else {
                            this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f15), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f15) + viewTKC.getMeasuredHeight());
                        }
                    } else if (z11) {
                        i17 = i15;
                        z12 = true;
                        sj3 = sj2;
                        c10 = c11;
                        this.Zq.Sj(viewTKC, tkc, true, i21 - viewTKC.getMeasuredWidth(), Math.round(f16) - viewTKC.getMeasuredHeight(), i21, Math.round(f16));
                    } else {
                        i17 = i15;
                        z12 = true;
                        sj3 = sj2;
                        c10 = c11;
                        this.Zq.Sj(viewTKC, tkc, true, i21 - viewTKC.getMeasuredWidth(), Math.round(f15), i21, Math.round(f15) + viewTKC.getMeasuredHeight());
                    }
                    Sj sj7 = sj3;
                    float measuredHeight7 = f15 + viewTKC.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) sj7).bottomMargin;
                    float measuredHeight8 = f16 - ((viewTKC.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) sj7).topMargin);
                    if (z11) {
                        tkc.Sj(viewTKC, 0, i19, 0, i18);
                    } else {
                        tkc.Sj(viewTKC, 0, i18, 0, i19);
                    }
                    f10 = measuredHeight7;
                    f11 = measuredHeight8;
                } else {
                    i17 = i15;
                    z12 = true;
                    c10 = 4;
                }
                i15 = i17 + 1;
                z13 = z12;
                c12 = c10;
            }
            int i210 = tkc.Jcg;
            paddingLeft += i210;
            i21 -= i210;
        }
    }

    private void Sj(Canvas canvas, boolean z10, boolean z11) {
        int i10;
        int i11;
        int right;
        int left;
        int paddingLeft = getPaddingLeft();
        int iMax = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.uvD.size();
        for (int i12 = 0; i12 < size; i12++) {
            TKC tkc = this.uvD.get(i12);
            for (int i13 = 0; i13 < tkc.Dq; i13++) {
                int i14 = tkc.Zq + i13;
                View viewTKC = TKC(i14);
                if (viewTKC != null && viewTKC.getVisibility() != 8) {
                    Sj sj2 = (Sj) viewTKC.getLayoutParams();
                    if (EjP(i14, i13)) {
                        if (z10) {
                            left = viewTKC.getRight() + ((ViewGroup.MarginLayoutParams) sj2).rightMargin;
                        } else {
                            left = (viewTKC.getLeft() - ((ViewGroup.MarginLayoutParams) sj2).leftMargin) - this.f20194aa;
                        }
                        Sj(canvas, left, tkc.sP, tkc.Jcg);
                    }
                    if (i13 == tkc.Dq - 1 && (this.TEQ & 4) > 0) {
                        if (z10) {
                            right = (viewTKC.getLeft() - ((ViewGroup.MarginLayoutParams) sj2).leftMargin) - this.f20194aa;
                        } else {
                            right = viewTKC.getRight() + ((ViewGroup.MarginLayoutParams) sj2).rightMargin;
                        }
                        Sj(canvas, right, tkc.sP, tkc.Jcg);
                    }
                }
            }
            if (EjP(i12)) {
                if (z11) {
                    i11 = tkc.EjP;
                } else {
                    i11 = tkc.sP - this.Ym;
                }
                sP(canvas, paddingLeft, i11, iMax);
            }
            if (vS(i12) && (this.uA & 4) > 0) {
                if (z11) {
                    i10 = tkc.sP - this.Ym;
                } else {
                    i10 = tkc.EjP;
                }
                sP(canvas, paddingLeft, i10, iMax);
            }
        }
    }

    private void Sj(Canvas canvas, int i10, int i11, int i12) {
        Drawable drawable = this.Dq;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i10, i11, this.f20194aa + i10, i12 + i11);
        this.Dq.draw(canvas);
    }

    @Override
    public int Sj(View view, int i10, int i11) {
        int i12;
        int i13;
        if (Sj()) {
            i12 = EjP(i10, i11) ? this.f20194aa : 0;
            if ((this.TEQ & 4) <= 0) {
                return i12;
            }
            i13 = this.f20194aa;
        } else {
            i12 = EjP(i10, i11) ? this.Ym : 0;
            if ((this.uA & 4) <= 0) {
                return i12;
            }
            i13 = this.Ym;
        }
        return i12 + i13;
    }

    @Override
    public void Sj(TKC tkc) {
        if (Sj()) {
            if ((this.TEQ & 4) > 0) {
                int i10 = tkc.HiB;
                int i11 = this.f20194aa;
                tkc.HiB = i10 + i11;
                tkc.vS += i11;
                return;
            }
            return;
        }
        if ((this.uA & 4) > 0) {
            int i12 = tkc.HiB;
            int i13 = this.Ym;
            tkc.HiB = i12 + i13;
            tkc.vS += i13;
        }
    }

    @Override
    public int Sj(int i10, int i11, int i12) {
        return ViewGroup.getChildMeasureSpec(i10, i11, i12);
    }

    @Override
    public void Sj(View view, int i10, int i11, TKC tkc) {
        if (EjP(i10, i11)) {
            if (Sj()) {
                int i12 = tkc.HiB;
                int i13 = this.f20194aa;
                tkc.HiB = i12 + i13;
                tkc.vS += i13;
                return;
            }
            int i14 = tkc.HiB;
            int i15 = this.Ym;
            tkc.HiB = i14 + i15;
            tkc.vS += i15;
        }
    }

    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        this.dNu = tkc;
    }
}
