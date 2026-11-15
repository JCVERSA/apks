package com.bytedance.adsdk.ugeno.Dq;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class TKC extends ViewGroup {
    private int Bml;
    private HiB Chv;
    private final sP Dq;
    private EjP EZ;
    private int Ei;
    int EjP;
    private float FPG;
    private VelocityTracker Fm;
    private Scroller Fmk;
    private int HpB;
    private List<EjP> IOh;
    private int JcM;
    private final ArrayList<sP> Jcg;
    private int LD;
    private boolean LqL;
    private float Mts;
    private int MuB;
    private int RiZ;
    private int Sj;
    private int TEQ;
    com.bytedance.adsdk.ugeno.Dq.sP TKC;
    private int TzV;
    private boolean UHs;
    private final Runnable Uc;
    private float WMZ;
    private float Wjd;
    private boolean Yf;
    private Parcelable Ym;
    private vS Zq;
    private int aNB;

    private ClassLoader f20184aa;
    private ArrayList<View> cX;
    private Drawable dNu;

    private boolean f20185db;
    private boolean dwU;

    private float f20186dx;
    private int fF;
    private List<Object> gY;

    private int f20187ib;

    private int f20188jb;
    private boolean kF;
    private int ley;
    private EdgeEffect ndK;
    private EjP pfr;
    private EdgeEffect qRN;
    private float sU;
    private boolean sdp;
    private boolean sef;
    private final Rect uA;
    private boolean uP;
    private int uvD;
    private boolean wE;
    private int xD;
    private int xhi;

    private int f20189xu;
    private int zR;
    static final int[] sP = {R.attr.layout_gravity};
    private static final Comparator<sP> HiB = new Comparator<sP>() {
        @Override
        public int compare(sP sPVar, sP sPVar2) {
            return sPVar.sP - sPVar2.sP;
        }
    };
    private static final Interpolator vS = new Interpolator() {
        @Override
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    };

    private static final Dq f20183kb = new Dq();

    static class Dq implements Comparator<View> {
        Dq() {
        }

        @Override
        public int compare(View view, View view2) {
            C0176TKC c0176tkc = (C0176TKC) view.getLayoutParams();
            C0176TKC c0176tkc2 = (C0176TKC) view2.getLayoutParams();
            boolean z10 = c0176tkc.Sj;
            if (z10 != c0176tkc2.Sj) {
                return z10 ? 1 : -1;
            }
            return c0176tkc.HiB - c0176tkc2.HiB;
        }
    }

    public interface EjP {
        void Sj(int i10, float f10, int i11);

        void TEQ(int i10);

        void Ym(int i10);
    }

    public interface HiB {
        void Sj(View view, float f10);
    }

    public static class Jcg extends com.bytedance.adsdk.ugeno.Dq.Sj {
        public static final Parcelable.Creator<Jcg> CREATOR = new Parcelable.ClassLoaderCreator<Jcg>() {
            @Override
            public Jcg createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new Jcg(parcel, classLoader);
            }

            @Override
            public Jcg createFromParcel(Parcel parcel) {
                return new Jcg(parcel, null);
            }

            @Override
            public Jcg[] newArray(int i10) {
                return new Jcg[i10];
            }
        };
        ClassLoader EjP;
        Parcelable TKC;
        int sP;

        public Jcg(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.sP + "}";
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.sP);
            parcel.writeParcelable(this.TKC, i10);
        }

        Jcg(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.sP = parcel.readInt();
            this.TKC = parcel.readParcelable(classLoader);
            this.EjP = classLoader;
        }
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface Sj {
    }

    static class sP {
        float EjP;
        float HiB;
        Object Sj;
        boolean TKC;
        int sP;

        sP() {
        }
    }

    private class vS extends DataSetObserver {
        vS() {
        }

        @Override
        public void onChanged() {
            TKC.this.sP();
        }

        @Override
        public void onInvalidated() {
            TKC.this.sP();
        }
    }

    public TKC(Context context) {
        super(context);
        this.Jcg = new ArrayList<>();
        this.Dq = new sP();
        this.uA = new Rect();
        this.TEQ = -1;
        this.Ym = null;
        this.f20184aa = null;
        this.sU = -3.4028235E38f;
        this.f20186dx = Float.MAX_VALUE;
        this.ley = 1;
        this.xD = -1;
        this.UHs = true;
        this.dwU = false;
        this.Uc = new Runnable() {
            @Override
            public void run() {
                TKC.this.setScrollState(0);
                TKC.this.TKC();
            }
        };
        this.f20189xu = 0;
        Sj();
    }

    private boolean Dq() {
        this.xD = -1;
        TEQ();
        this.ndK.onRelease();
        this.qRN.onRelease();
        return this.ndK.isFinished() || this.qRN.isFinished();
    }

    private boolean EjP(int i10) {
        if (this.Jcg.size() == 0) {
            if (this.UHs) {
                return false;
            }
            this.sdp = false;
            Sj(0, 0.0f, 0);
            if (this.sdp) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        sP sPVarUA = uA();
        int clientWidth = getClientWidth();
        int i11 = this.uvD;
        int i12 = clientWidth + i11;
        float f10 = clientWidth;
        int i13 = sPVarUA.sP;
        float f11 = ((i10 / f10) - sPVarUA.HiB) / (sPVarUA.EjP + (i11 / f10));
        this.sdp = false;
        Sj(i13, f11, (int) (i12 * f11));
        if (this.sdp) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    private void HiB(int i10) {
        EjP ejP = this.pfr;
        if (ejP != null) {
            ejP.TEQ(i10);
        }
        List<EjP> list = this.IOh;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                EjP ejP2 = this.IOh.get(i11);
                if (ejP2 != null) {
                    ejP2.TEQ(i10);
                }
            }
        }
        EjP ejP3 = this.EZ;
        if (ejP3 != null) {
            ejP3.TEQ(i10);
        }
    }

    private void Jcg() {
        if (this.aNB != 0) {
            ArrayList<View> arrayList = this.cX;
            if (arrayList == null) {
                this.cX = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                this.cX.add(getChildAt(i10));
            }
            Collections.sort(this.cX, f20183kb);
        }
    }

    private void TEQ() {
        this.LqL = false;
        this.Yf = false;
        VelocityTracker velocityTracker = this.Fm;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.Fm = null;
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z10) {
        if (this.uP != z10) {
            this.uP = z10;
        }
    }

    private sP uA() {
        int i10;
        int clientWidth = getClientWidth();
        float f10 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f11 = clientWidth > 0 ? this.uvD / clientWidth : 0.0f;
        int i11 = 0;
        boolean z10 = true;
        sP sPVar = null;
        int i12 = -1;
        float f12 = 0.0f;
        while (i11 < this.Jcg.size()) {
            sP sPVar2 = this.Jcg.get(i11);
            if (!z10 && sPVar2.sP != (i10 = i12 + 1)) {
                sPVar2 = this.Dq;
                sPVar2.HiB = f10 + f12 + f11;
                sPVar2.sP = i10;
                sPVar2.EjP = this.TKC.Sj(i10);
                i11--;
            }
            sP sPVar3 = sPVar2;
            f10 = sPVar3.HiB;
            float f13 = sPVar3.EjP + f10 + f11;
            if (!z10 && scrollX < f10) {
                return sPVar;
            }
            if (scrollX < f13 || i11 == this.Jcg.size() - 1) {
                return sPVar3;
            }
            int i13 = sPVar3.sP;
            float f14 = sPVar3.EjP;
            i11++;
            z10 = false;
            i12 = i13;
            f12 = f14;
            sPVar = sPVar3;
        }
        return sPVar;
    }

    private void vS() {
        int i10 = 0;
        while (i10 < getChildCount()) {
            if (!((C0176TKC) getChildAt(i10).getLayoutParams()).Sj) {
                removeViewAt(i10);
                i10--;
            }
            i10++;
        }
    }

    void Sj() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.Fmk = new Scroller(context, vS);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.JcM = viewConfiguration.getScaledPagingTouchSlop();
        this.f20188jb = (int) (400.0f * f10);
        this.Ei = viewConfiguration.getScaledMaximumFlingVelocity();
        this.ndK = new EdgeEffect(context);
        this.qRN = new EdgeEffect(context);
        this.HpB = (int) (25.0f * f10);
        this.xhi = (int) (2.0f * f10);
        this.LD = (int) (f10 * 16.0f);
    }

    void TKC() {
        Sj(this.EjP);
    }

    @Override
    public void addFocusables(ArrayList<View> arrayList, int i10, int i11) {
        sP sPVarSj;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i12 = 0; i12 < getChildCount(); i12++) {
                View childAt = getChildAt(i12);
                if (childAt.getVisibility() == 0 && (sPVarSj = Sj(childAt)) != null && sPVarSj.sP == this.EjP) {
                    childAt.addFocusables(arrayList, i10, i11);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i11 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override
    public void addTouchables(ArrayList<View> arrayList) {
        sP sPVarSj;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (sPVarSj = Sj(childAt)) != null && sPVarSj.sP == this.EjP) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        C0176TKC c0176tkc = (C0176TKC) layoutParams;
        boolean zTKC = c0176tkc.Sj | TKC(view);
        c0176tkc.Sj = zTKC;
        if (!this.kF) {
            super.addView(view, i10, layoutParams);
        } else {
            if (zTKC) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            c0176tkc.EjP = true;
            addViewInLayout(view, i10, layoutParams);
        }
    }

    @Override
    public boolean canScrollHorizontally(int i10) {
        if (this.TKC == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i10 < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.sU));
        }
        return i10 > 0 && scrollX < ((int) (((float) clientWidth) * this.f20186dx));
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0176TKC) && super.checkLayoutParams(layoutParams);
    }

    @Override
    public void computeScroll() {
        this.sef = true;
        if (this.Fmk.isFinished() || !this.Fmk.computeScrollOffset()) {
            Sj(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.Fmk.getCurrX();
        int currY = this.Fmk.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!EjP(currX)) {
                this.Fmk.abortAnimation();
                scrollTo(0, currY);
            }
        }
        postInvalidateOnAnimation();
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || Sj(keyEvent);
    }

    @Override
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        sP sPVarSj;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (sPVarSj = Sj(childAt)) != null && sPVarSj.sP == this.EjP && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void draw(Canvas canvas) {
        com.bytedance.adsdk.ugeno.Dq.sP sPVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (sPVar = this.TKC) != null && sPVar.Sj() > 1)) {
            if (!this.ndK.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.sU * width);
                this.ndK.setSize(height, width);
                zDraw = this.ndK.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.qRN.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f20186dx + 1.0f)) * width2);
                this.qRN.setSize(height2, width2);
                zDraw |= this.qRN.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.ndK.finish();
            this.qRN.finish();
        }
        if (zDraw) {
            postInvalidateOnAnimation();
        }
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.dNu;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0176TKC();
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public com.bytedance.adsdk.ugeno.Dq.sP getAdapter() {
        return this.TKC;
    }

    @Override
    protected int getChildDrawingOrder(int i10, int i11) {
        if (this.aNB == 2) {
            i11 = (i10 - 1) - i11;
        }
        return ((C0176TKC) this.cX.get(i11).getLayoutParams()).vS;
    }

    public int getCurrentItem() {
        return this.EjP;
    }

    public int getOffscreenPageLimit() {
        return this.ley;
    }

    public int getPageMargin() {
        return this.uvD;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.UHs = true;
    }

    @Override
    protected void onDetachedFromWindow() {
        removeCallbacks(this.Uc);
        Scroller scroller = this.Fmk;
        if (scroller != null && !scroller.isFinished()) {
            this.Fmk.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        int i10;
        float f10;
        super.onDraw(canvas);
        if (this.uvD <= 0 || this.dNu == null || this.Jcg.size() <= 0 || this.TKC == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f11 = width;
        float f12 = this.uvD / f11;
        int i11 = 0;
        sP sPVar = this.Jcg.get(0);
        float f13 = sPVar.HiB;
        int size = this.Jcg.size();
        int i12 = sPVar.sP;
        int i13 = this.Jcg.get(size - 1).sP;
        while (i12 < i13) {
            while (true) {
                i10 = sPVar.sP;
                if (i12 <= i10 || i11 >= size) {
                    break;
                }
                i11++;
                sPVar = this.Jcg.get(i11);
            }
            if (i12 == i10) {
                float f14 = sPVar.HiB;
                float f15 = sPVar.EjP;
                f10 = (f14 + f15) * f11;
                f13 = f14 + f15 + f12;
            } else {
                float fSj = this.TKC.Sj(i12);
                f10 = (f13 + fSj) * f11;
                f13 += fSj + f12;
            }
            if (this.uvD + f10 > scrollX) {
                this.dNu.setBounds(Math.round(f10), this.TzV, Math.round(this.uvD + f10), this.RiZ);
                this.dNu.draw(canvas);
            }
            if (f10 > scrollX + width) {
                return;
            }
            i12++;
            f12 = f12;
        }
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int iFindPointerIndex;
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            Dq();
            return false;
        }
        if (action != 0) {
            if (this.LqL) {
                return true;
            }
            if (this.Yf) {
                return false;
            }
        }
        if (action == 0) {
            float x10 = motionEvent.getX();
            this.FPG = x10;
            this.WMZ = x10;
            float y10 = motionEvent.getY();
            this.Wjd = y10;
            this.Mts = y10;
            this.xD = motionEvent.getPointerId(0);
            this.Yf = false;
            this.sef = true;
            this.Fmk.computeScrollOffset();
            if (this.f20189xu != 2 || Math.abs(this.Fmk.getFinalX() - this.Fmk.getCurrX()) <= this.xhi) {
                Sj(false);
                this.LqL = false;
            } else {
                this.Fmk.abortAnimation();
                this.wE = false;
                TKC();
                this.LqL = true;
                TKC(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i10 = this.xD;
            if (i10 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i10)) != -1) {
                float x11 = motionEvent.getX(iFindPointerIndex);
                float f10 = x11 - this.WMZ;
                float fAbs = Math.abs(f10);
                float y11 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y11 - this.Wjd);
                if (f10 != 0.0f && !Sj(this.WMZ, f10) && Sj(this, false, (int) f10, (int) x11, (int) y11)) {
                    this.WMZ = x11;
                    this.Mts = y11;
                    this.Yf = true;
                    return false;
                }
                int i11 = this.JcM;
                if (fAbs > i11 && fAbs * 0.5f > fAbs2) {
                    this.LqL = true;
                    TKC(true);
                    setScrollState(1);
                    float f11 = this.FPG;
                    float f12 = this.JcM;
                    this.WMZ = f10 > 0.0f ? f11 + f12 : f11 - f12;
                    this.Mts = y11;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > i11) {
                    this.Yf = true;
                }
                if (this.LqL && sP(x11)) {
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            Sj(motionEvent);
        }
        if (this.Fm == null) {
            this.Fm = VelocityTracker.obtain();
        }
        this.Fm.addMovement(motionEvent);
        return this.LqL;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0072  */
    /* JADX WARN: Code duplicated, block: B:24:0x0076  */
    /* JADX WARN: Code duplicated, block: B:26:0x007a  */
    /* JADX WARN: Code duplicated, block: B:27:0x007c  */
    /* JADX WARN: Code duplicated, block: B:29:0x008e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0094  */
    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean z11;
        sP sPVarSj;
        int iMax;
        int measuredWidth;
        int iMax2;
        int measuredHeight;
        int childCount = getChildCount();
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                C0176TKC c0176tkc = (C0176TKC) childAt.getLayoutParams();
                if (c0176tkc.Sj) {
                    int i18 = c0176tkc.sP;
                    int i19 = i18 & 7;
                    int i20 = i18 & 112;
                    if (i19 != 1) {
                        if (i19 == 3) {
                            measuredWidth = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i19 != 5) {
                            measuredWidth = paddingLeft;
                        } else {
                            iMax = (i14 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i20 != 16) {
                            if (i20 != 48) {
                                measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i20 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                iMax2 = (i15 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i21 = paddingLeft + scrollX;
                            childAt.layout(i21, paddingTop, childAt.getMeasuredWidth() + i21, paddingTop + childAt.getMeasuredHeight());
                            i16++;
                            paddingTop = measuredHeight;
                            paddingLeft = measuredWidth;
                        } else {
                            iMax2 = Math.max((i15 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        }
                        int i22 = iMax2;
                        measuredHeight = paddingTop;
                        paddingTop = i22;
                        int i23 = paddingLeft + scrollX;
                        childAt.layout(i23, paddingTop, childAt.getMeasuredWidth() + i23, paddingTop + childAt.getMeasuredHeight());
                        i16++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax = Math.max((i14 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i24 = iMax;
                    measuredWidth = paddingLeft;
                    paddingLeft = i24;
                    if (i20 != 16) {
                        if (i20 != 48) {
                            measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                        } else if (i20 != 80) {
                            measuredHeight = paddingTop;
                        } else {
                            iMax2 = (i15 - paddingBottom) - childAt.getMeasuredHeight();
                            paddingBottom += childAt.getMeasuredHeight();
                        }
                        int i25 = paddingLeft + scrollX;
                        childAt.layout(i25, paddingTop, childAt.getMeasuredWidth() + i25, paddingTop + childAt.getMeasuredHeight());
                        i16++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax2 = Math.max((i15 - childAt.getMeasuredHeight()) / 2, paddingTop);
                    }
                    int i26 = iMax2;
                    measuredHeight = paddingTop;
                    paddingTop = i26;
                    int i27 = paddingLeft + scrollX;
                    childAt.layout(i27, paddingTop, childAt.getMeasuredWidth() + i27, paddingTop + childAt.getMeasuredHeight());
                    i16++;
                    paddingTop = measuredHeight;
                    paddingLeft = measuredWidth;
                }
            }
        }
        int i28 = (i14 - paddingLeft) - paddingRight;
        for (int i29 = 0; i29 < childCount; i29++) {
            View childAt2 = getChildAt(i29);
            if (childAt2.getVisibility() != 8) {
                C0176TKC c0176tkc2 = (C0176TKC) childAt2.getLayoutParams();
                if (!c0176tkc2.Sj && (sPVarSj = Sj(childAt2)) != null) {
                    float f10 = i28;
                    int i30 = ((int) (sPVarSj.HiB * f10)) + paddingLeft;
                    if (c0176tkc2.EjP) {
                        c0176tkc2.EjP = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f10 * c0176tkc2.TKC), 1073741824), View.MeasureSpec.makeMeasureSpec((i15 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i30, paddingTop, childAt2.getMeasuredWidth() + i30, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.TzV = paddingTop;
        this.RiZ = i15 - paddingBottom;
        this.MuB = i16;
        if (this.UHs) {
            z11 = false;
            Sj(this.EjP, false, 0, false);
        } else {
            z11 = false;
        }
        this.UHs = z11;
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        C0176TKC c0176tkc;
        C0176TKC c0176tkc2;
        int i12;
        setMeasuredDimension(View.getDefaultSize(0, i10), View.getDefaultSize(0, i11));
        int measuredWidth = getMeasuredWidth();
        this.fF = Math.min(measuredWidth / 10, this.LD);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i13 = 0;
        while (true) {
            boolean z10 = true;
            int i14 = 1073741824;
            if (i13 >= childCount) {
                break;
            }
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8 && (c0176tkc2 = (C0176TKC) childAt.getLayoutParams()) != null && c0176tkc2.Sj) {
                int i15 = c0176tkc2.sP;
                int i16 = i15 & 7;
                int i17 = i15 & 112;
                boolean z11 = i17 == 48 || i17 == 80;
                if (i16 != 3 && i16 != 5) {
                    z10 = false;
                }
                int i18 = Integer.MIN_VALUE;
                if (z11) {
                    i12 = Integer.MIN_VALUE;
                    i18 = 1073741824;
                } else {
                    i12 = z10 ? 1073741824 : Integer.MIN_VALUE;
                }
                int i19 = ((ViewGroup.LayoutParams) c0176tkc2).width;
                if (i19 != -2) {
                    if (i19 == -1) {
                        i19 = paddingLeft;
                    }
                    i18 = 1073741824;
                } else {
                    i19 = paddingLeft;
                }
                int i20 = ((ViewGroup.LayoutParams) c0176tkc2).height;
                if (i20 == -2) {
                    i20 = measuredHeight;
                    i14 = i12;
                } else if (i20 == -1) {
                    i20 = measuredHeight;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i19, i18), View.MeasureSpec.makeMeasureSpec(i20, i14));
                if (z11) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z10) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i13++;
        }
        this.zR = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.f20187ib = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.kF = true;
        TKC();
        this.kF = false;
        int childCount2 = getChildCount();
        for (int i21 = 0; i21 < childCount2; i21++) {
            View childAt2 = getChildAt(i21);
            if (childAt2.getVisibility() != 8 && ((c0176tkc = (C0176TKC) childAt2.getLayoutParams()) == null || !c0176tkc.Sj)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * c0176tkc.TKC), 1073741824), this.f20187ib);
            }
        }
    }

    @Override
    protected boolean onRequestFocusInDescendants(int i10, Rect rect) {
        int i11;
        int i12;
        int i13;
        sP sPVarSj;
        int childCount = getChildCount();
        if ((i10 & 2) != 0) {
            i12 = childCount;
            i11 = 0;
            i13 = 1;
        } else {
            i11 = childCount - 1;
            i12 = -1;
            i13 = -1;
        }
        while (i11 != i12) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 0 && (sPVarSj = Sj(childAt)) != null && sPVarSj.sP == this.EjP && childAt.requestFocus(i10, rect)) {
                return true;
            }
            i11 += i13;
        }
        return false;
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Jcg)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Jcg jcg = (Jcg) parcelable;
        super.onRestoreInstanceState(jcg.Sj());
        if (this.TKC != null) {
            Sj(jcg.sP, false, true);
            return;
        }
        this.TEQ = jcg.sP;
        this.Ym = jcg.TKC;
        this.f20184aa = jcg.EjP;
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Jcg jcg = new Jcg(super.onSaveInstanceState());
        jcg.sP = this.EjP;
        com.bytedance.adsdk.ugeno.Dq.sP sPVar = this.TKC;
        if (sPVar != null) {
            jcg.TKC = sPVar.sP();
        }
        return jcg;
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 != i12) {
            int i14 = this.uvD;
            Sj(i10, i12, i14, i14);
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        com.bytedance.adsdk.ugeno.Dq.sP sPVar;
        int iFindPointerIndex;
        if (this.f20185db) {
            return true;
        }
        boolean zDq = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (sPVar = this.TKC) == null || sPVar.Sj() == 0) {
            return false;
        }
        if (this.Fm == null) {
            this.Fm = VelocityTracker.obtain();
        }
        this.Fm.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.Fmk.abortAnimation();
            this.wE = false;
            TKC();
            float x10 = motionEvent.getX();
            this.FPG = x10;
            this.WMZ = x10;
            float y10 = motionEvent.getY();
            this.Wjd = y10;
            this.Mts = y10;
            this.xD = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        if (actionIndex != -1) {
                            this.WMZ = motionEvent.getX(actionIndex);
                            this.xD = motionEvent.getPointerId(actionIndex);
                        }
                    } else if (action == 6) {
                        Sj(motionEvent);
                        int iFindPointerIndex2 = motionEvent.findPointerIndex(this.xD);
                        if (iFindPointerIndex2 != -1) {
                            this.WMZ = motionEvent.getX(iFindPointerIndex2);
                        }
                    }
                } else if (this.LqL) {
                    Sj(this.EjP, true, 0, false);
                    zDq = Dq();
                }
            } else if (!this.LqL) {
                int iFindPointerIndex3 = motionEvent.findPointerIndex(this.xD);
                if (iFindPointerIndex3 == -1) {
                    zDq = Dq();
                } else {
                    float x11 = motionEvent.getX(iFindPointerIndex3);
                    float fAbs = Math.abs(x11 - this.WMZ);
                    float y11 = motionEvent.getY(iFindPointerIndex3);
                    float fAbs2 = Math.abs(y11 - this.Mts);
                    if (fAbs > this.JcM && fAbs > fAbs2) {
                        this.LqL = true;
                        TKC(true);
                        float f10 = this.FPG;
                        this.WMZ = x11 - f10 > 0.0f ? f10 + this.JcM : f10 - this.JcM;
                        this.Mts = y11;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (this.LqL) {
                        zDq = sP(motionEvent.getX(iFindPointerIndex));
                    }
                }
            } else if (this.LqL && (iFindPointerIndex = motionEvent.findPointerIndex(this.xD)) != -1) {
                zDq = sP(motionEvent.getX(iFindPointerIndex));
            }
        } else if (this.LqL) {
            VelocityTracker velocityTracker = this.Fm;
            velocityTracker.computeCurrentVelocity(1000, this.Ei);
            int xVelocity = (int) velocityTracker.getXVelocity(this.xD);
            this.wE = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            sP sPVarUA = uA();
            float f11 = clientWidth;
            float f12 = this.uvD / f11;
            int i10 = sPVarUA.sP;
            float f13 = ((scrollX / f11) - sPVarUA.HiB) / (sPVarUA.EjP + f12);
            int iFindPointerIndex4 = motionEvent.findPointerIndex(this.xD);
            if (iFindPointerIndex4 != -1) {
                Sj(Sj(i10, f13, xVelocity, (int) (motionEvent.getX(iFindPointerIndex4) - this.FPG)), true, true, xVelocity);
                zDq = Dq();
            }
        }
        if (zDq) {
            postInvalidateOnAnimation();
        }
        return true;
    }

    @Override
    public void removeView(View view) {
        if (this.kF) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    void sP() {
        int iSj = this.TKC.Sj();
        this.Sj = iSj;
        boolean z10 = this.Jcg.size() < (this.ley * 2) + 1 && this.Jcg.size() < iSj;
        int iMax = this.EjP;
        int i10 = 0;
        while (i10 < this.Jcg.size()) {
            sP sPVar = this.Jcg.get(i10);
            int iSj2 = this.TKC.Sj(sPVar.Sj);
            if (iSj2 != -1) {
                if (iSj2 == -2) {
                    this.Jcg.remove(i10);
                    i10--;
                    this.TKC.Sj((ViewGroup) this, sPVar.sP, sPVar.Sj);
                    int i11 = this.EjP;
                    if (i11 == sPVar.sP) {
                        iMax = Math.max(0, Math.min(i11, iSj - 1));
                    }
                } else {
                    int i12 = sPVar.sP;
                    if (i12 != iSj2) {
                        if (i12 == this.EjP) {
                            iMax = iSj2;
                        }
                        sPVar.sP = iSj2;
                    }
                }
                z10 = true;
            }
            i10++;
        }
        Collections.sort(this.Jcg, HiB);
        if (z10) {
            int childCount = getChildCount();
            for (int i13 = 0; i13 < childCount; i13++) {
                C0176TKC c0176tkc = (C0176TKC) getChildAt(i13).getLayoutParams();
                if (!c0176tkc.Sj) {
                    c0176tkc.TKC = 0.0f;
                }
            }
            Sj(iMax, false, true);
            requestLayout();
        }
    }

    public void setAdapter(com.bytedance.adsdk.ugeno.Dq.sP sPVar) {
        com.bytedance.adsdk.ugeno.Dq.sP sPVar2 = this.TKC;
        if (sPVar2 != null) {
            sPVar2.Sj((DataSetObserver) null);
            for (int i10 = 0; i10 < this.Jcg.size(); i10++) {
                sP sPVar3 = this.Jcg.get(i10);
                this.TKC.Sj((ViewGroup) this, sPVar3.sP, sPVar3.Sj);
            }
            this.Jcg.clear();
            vS();
            this.EjP = 0;
            scrollTo(0, 0);
        }
        this.TKC = sPVar;
        this.Sj = 0;
        if (sPVar != null) {
            if (this.Zq == null) {
                this.Zq = new vS();
            }
            this.TKC.Sj((DataSetObserver) this.Zq);
            this.wE = false;
            boolean z10 = this.UHs;
            this.UHs = true;
            this.Sj = this.TKC.Sj();
            int i11 = this.TEQ;
            if (i11 >= 0) {
                Sj(i11, false, true);
                this.TEQ = -1;
                this.Ym = null;
                this.f20184aa = null;
            } else if (z10) {
                requestLayout();
            } else {
                TKC();
            }
        }
        List<Object> list = this.gY;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.gY.size();
        for (int i12 = 0; i12 < size; i12++) {
            this.gY.get(i12);
        }
    }

    public void setCurrentItem(int i10) {
        this.wE = false;
        Sj(i10, !this.UHs, false);
    }

    public void setOffscreenPageLimit(int i10) {
        if (i10 <= 0) {
            Log.w("ViewPager", "Requested offscreen page limit " + i10 + " too small; defaulting to 1");
            i10 = 1;
        }
        if (i10 != this.ley) {
            this.ley = i10;
            TKC();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(EjP ejP) {
        this.pfr = ejP;
    }

    public void setPageMargin(int i10) {
        int i11 = this.uvD;
        this.uvD = i10;
        int width = getWidth();
        Sj(width, width, i10, i11);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.dNu = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    void setScrollState(int i10) {
        if (this.f20189xu == i10) {
            return;
        }
        this.f20189xu = i10;
        if (this.Chv != null) {
            sP(i10 != 0);
        }
        vS(i10);
    }

    public void setScroller(Scroller scroller) {
        this.Fmk = scroller;
    }

    @Override
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.dNu;
    }

    public static class C0176TKC extends ViewGroup.LayoutParams {
        boolean EjP;
        int HiB;
        public boolean Sj;
        float TKC;
        public int sP;
        int vS;

        public C0176TKC() {
            super(-1, -1);
            this.TKC = 0.0f;
        }

        public C0176TKC(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.TKC = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, TKC.sP);
            this.sP = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private static boolean TKC(View view) {
        return view.getClass().getAnnotation(Sj.class) != null;
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0176TKC(getContext(), attributeSet);
    }

    private void TKC(boolean z10) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z10);
        }
    }

    public void setPageMarginDrawable(int i10) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i10));
    }

    private void vS(int i10) {
        EjP ejP = this.pfr;
        if (ejP != null) {
            ejP.Ym(i10);
        }
        List<EjP> list = this.IOh;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                EjP ejP2 = this.IOh.get(i11);
                if (ejP2 != null) {
                    ejP2.Ym(i10);
                }
            }
        }
        EjP ejP3 = this.EZ;
        if (ejP3 != null) {
            ejP3.Ym(i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b9  */
    public boolean TKC(int i10) {
        boolean zEjP;
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
            break;
        }
        if (viewFindFocus != null) {
            ViewParent parent = viewFindFocus.getParent();
            while (true) {
                if (!(parent instanceof ViewGroup)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(viewFindFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        sb2.append(" => ");
                        sb2.append(parent2.getClass().getSimpleName());
                    }
                    Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb2.toString());
                    viewFindFocus = null;
                    break;
                }
                if (parent == this) {
                    break;
                }
                parent = parent.getParent();
            }
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i10);
        if (viewFindNextFocus == null || viewFindNextFocus == viewFindFocus) {
            if (i10 == 17 || i10 == 1) {
                zEjP = EjP();
            } else if (i10 == 66 || i10 == 2) {
                zEjP = HiB();
            } else {
                zEjP = false;
            }
        } else if (i10 == 17) {
            int i11 = Sj(this.uA, viewFindNextFocus).left;
            int i12 = Sj(this.uA, viewFindFocus).left;
            if (viewFindFocus != null && i11 >= i12) {
                zEjP = EjP();
            } else {
                zEjP = viewFindNextFocus.requestFocus();
            }
        } else if (i10 == 66) {
            int i13 = Sj(this.uA, viewFindNextFocus).left;
            int i14 = Sj(this.uA, viewFindFocus).left;
            if (viewFindFocus == null || i13 > i14) {
                zEjP = viewFindNextFocus.requestFocus();
            } else {
                zEjP = HiB();
            }
        } else {
            zEjP = false;
        }
        if (zEjP) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i10));
        }
        return zEjP;
    }

    boolean HiB() {
        com.bytedance.adsdk.ugeno.Dq.sP sPVar = this.TKC;
        if (sPVar == null || this.EjP >= sPVar.Sj() - 1) {
            return false;
        }
        Sj(this.EjP + 1, true);
        return true;
    }

    boolean EjP() {
        int i10 = this.EjP;
        if (i10 <= 0) {
            return false;
        }
        Sj(i10 - 1, true);
        return true;
    }

    public void Sj(int i10, boolean z10) {
        this.wE = false;
        Sj(i10, z10, false);
    }

    void Sj(int i10, boolean z10, boolean z11) {
        Sj(i10, z10, z11, 0);
    }

    void Sj(int i10, boolean z10, boolean z11, int i11) {
        com.bytedance.adsdk.ugeno.Dq.sP sPVar = this.TKC;
        if (sPVar != null && sPVar.Sj() > 0) {
            if (!z11 && this.EjP == i10 && this.Jcg.size() != 0) {
                setScrollingCacheEnabled(false);
                return;
            }
            if (i10 < 0) {
                i10 = 0;
            } else if (i10 >= this.TKC.Sj()) {
                i10 = this.TKC.Sj() - 1;
            }
            int i12 = this.ley;
            int i13 = this.EjP;
            if (i10 > i13 + i12 || i10 < i13 - i12) {
                for (int i14 = 0; i14 < this.Jcg.size(); i14++) {
                    this.Jcg.get(i14).TKC = true;
                }
            }
            boolean z12 = this.EjP != i10;
            if (this.UHs) {
                this.EjP = i10;
                if (z12) {
                    HiB(i10);
                }
                requestLayout();
                return;
            }
            Sj(i10);
            Sj(i10, z10, i11, z12);
            return;
        }
        setScrollingCacheEnabled(false);
    }

    sP sP(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return Sj(view);
            }
        }
    }

    sP sP(int i10) {
        for (int i11 = 0; i11 < this.Jcg.size(); i11++) {
            sP sPVar = this.Jcg.get(i11);
            if (sPVar.sP == i10) {
                return sPVar;
            }
        }
        return null;
    }

    private void sP(int i10, float f10, int i11) {
        EjP ejP = this.pfr;
        if (ejP != null) {
            ejP.Sj(i10, f10, i11);
        }
        List<EjP> list = this.IOh;
        if (list != null) {
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                EjP ejP2 = this.IOh.get(i12);
                if (ejP2 != null) {
                    ejP2.Sj(i10, f10, i11);
                }
            }
        }
        EjP ejP3 = this.EZ;
        if (ejP3 != null) {
            ejP3.Sj(i10, f10, i11);
        }
    }

    private void Sj(int i10, boolean z10, int i11, boolean z11) {
        sP sPVarSP = sP(i10);
        int clientWidth = sPVarSP != null ? (int) (getClientWidth() * Math.max(this.sU, Math.min(sPVarSP.HiB, this.f20186dx))) : 0;
        if (z10) {
            Sj(clientWidth, 0, i11);
            if (z11) {
                HiB(i10);
                return;
            }
            return;
        }
        if (z11) {
            HiB(i10);
        }
        Sj(false);
        scrollTo(clientWidth, 0);
        EjP(clientWidth);
    }

    private void sP(boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            getChildAt(i10).setLayerType(z10 ? this.Bml : 0, null);
        }
    }

    private boolean sP(float f10) {
        boolean z10;
        boolean z11;
        float f11 = this.WMZ - f10;
        this.WMZ = f10;
        float scrollX = getScrollX() + f11;
        float clientWidth = getClientWidth();
        float f12 = this.sU * clientWidth;
        float f13 = this.f20186dx * clientWidth;
        boolean z12 = false;
        sP sPVar = this.Jcg.get(0);
        ArrayList<sP> arrayList = this.Jcg;
        sP sPVar2 = arrayList.get(arrayList.size() - 1);
        if (sPVar.sP != 0) {
            f12 = sPVar.HiB * clientWidth;
            z10 = false;
        } else {
            z10 = true;
        }
        if (sPVar2.sP != this.TKC.Sj() - 1) {
            f13 = sPVar2.HiB * clientWidth;
            z11 = false;
        } else {
            z11 = true;
        }
        if (scrollX < f12) {
            if (z10) {
                this.ndK.onPull(Math.abs(f12 - scrollX) / clientWidth);
                z12 = true;
            }
            scrollX = f12;
        } else if (scrollX > f13) {
            if (z11) {
                this.qRN.onPull(Math.abs(scrollX - f13) / clientWidth);
                z12 = true;
            }
            scrollX = f13;
        }
        int i10 = (int) scrollX;
        this.WMZ += scrollX - i10;
        scrollTo(i10, getScrollY());
        EjP(i10);
        return z12;
    }

    public void Sj(EjP ejP) {
        if (this.IOh == null) {
            this.IOh = new ArrayList();
        }
        this.IOh.add(ejP);
    }

    public void Sj(boolean z10, HiB hiB) {
        Sj(z10, hiB, 2);
    }

    public void Sj(boolean z10, HiB hiB, int i10) {
        boolean z11 = hiB != null;
        boolean z12 = z11 != (this.Chv != null);
        this.Chv = hiB;
        setChildrenDrawingOrderEnabled(z11);
        if (z11) {
            this.aNB = z10 ? 2 : 1;
            this.Bml = i10;
        } else {
            this.aNB = 0;
        }
        if (z12) {
            TKC();
        }
    }

    float Sj(float f10) {
        return (float) Math.sin((f10 - 0.5f) * 0.47123894f);
    }

    void Sj(int i10, int i11, int i12) {
        int scrollX;
        int iAbs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.Fmk;
        if (scroller != null && !scroller.isFinished()) {
            scrollX = this.sef ? this.Fmk.getCurrX() : this.Fmk.getStartX();
            this.Fmk.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int i13 = scrollX;
        int scrollY = getScrollY();
        int i14 = i10 - i13;
        int i15 = i11 - scrollY;
        if (i14 == 0 && i15 == 0) {
            Sj(false);
            TKC();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i16 = clientWidth / 2;
        float f10 = clientWidth;
        float f11 = i16;
        float fSj = f11 + (Sj(Math.min(1.0f, (Math.abs(i14) * 1.0f) / f10)) * f11);
        int iAbs2 = Math.abs(i12);
        if (iAbs2 > 0) {
            iAbs = Math.round(Math.abs(fSj / iAbs2) * 1000.0f) * 4;
        } else {
            iAbs = (int) (((Math.abs(i14) / ((f10 * this.TKC.Sj(this.EjP)) + this.uvD)) + 1.0f) * 100.0f);
        }
        int iMin = Math.min(iAbs, 600);
        this.sef = false;
        this.Fmk.startScroll(i13, scrollY, i14, i15, iMin);
        postInvalidateOnAnimation();
    }

    sP Sj(int i10, int i11) {
        sP sPVar = new sP();
        sPVar.sP = i10;
        sPVar.Sj = this.TKC.Sj((ViewGroup) this, i10);
        sPVar.EjP = this.TKC.Sj(i10);
        if (i11 >= 0 && i11 < this.Jcg.size()) {
            this.Jcg.add(i11, sPVar);
        } else {
            this.Jcg.add(sPVar);
        }
        return sPVar;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00c5 A[PHI: r7 r10 r15
      0x00c5: PHI (r7v6 int) = (r7v5 int), (r7v4 int), (r7v9 int) binds: [B:63:0x00e9, B:60:0x00d3, B:52:0x00ba] A[DONT_GENERATE, DONT_INLINE]
      0x00c5: PHI (r10v9 int) = (r10v1 int), (r10v8 int), (r10v12 int) binds: [B:63:0x00e9, B:60:0x00d3, B:52:0x00ba] A[DONT_GENERATE, DONT_INLINE]
      0x00c5: PHI (r15v7 float) = (r15v5 float), (r15v6 float), (r15v4 float) binds: [B:63:0x00e9, B:60:0x00d3, B:52:0x00ba] A[DONT_GENERATE, DONT_INLINE]] */
    void Sj(int i10) {
        sP sPVarSP;
        String hexString;
        sP sPVarSj;
        sP sPVarSj2;
        sP sPVar;
        int i11 = this.EjP;
        if (i11 != i10) {
            sPVarSP = sP(i11);
            this.EjP = i10;
        } else {
            sPVarSP = null;
        }
        if (this.TKC == null) {
            Jcg();
            return;
        }
        if (this.wE) {
            Jcg();
            return;
        }
        if (getWindowToken() == null) {
            return;
        }
        int i12 = this.ley;
        int iMax = Math.max(0, this.EjP - i12);
        int iSj = this.TKC.Sj();
        int iMin = Math.min(iSj - 1, this.EjP + i12);
        if (iSj == this.Sj) {
            int i13 = 0;
            while (true) {
                if (i13 < this.Jcg.size()) {
                    sPVarSj = this.Jcg.get(i13);
                    int i14 = sPVarSj.sP;
                    int i15 = this.EjP;
                    if (i14 >= i15) {
                        if (i14 != i15) {
                            break;
                        } else {
                            break;
                        }
                    }
                    i13++;
                }
                sPVarSj = null;
                break;
            }
            if (sPVarSj == null && iSj > 0) {
                sPVarSj = Sj(this.EjP, i13);
            }
            if (sPVarSj != null) {
                int i16 = i13 - 1;
                sP sPVar2 = i16 >= 0 ? this.Jcg.get(i16) : null;
                int clientWidth = getClientWidth();
                float paddingLeft = clientWidth <= 0 ? 0.0f : (2.0f - sPVarSj.EjP) + (getPaddingLeft() / clientWidth);
                float f10 = 0.0f;
                for (int i17 = this.EjP - 1; i17 >= 0; i17--) {
                    if (f10 >= paddingLeft && i17 < iMax) {
                        if (sPVar2 == null) {
                            break;
                        }
                        if (i17 == sPVar2.sP && !sPVar2.TKC) {
                            this.Jcg.remove(i16);
                            this.TKC.Sj((ViewGroup) this, i17, sPVar2.Sj);
                            i16--;
                            i13--;
                            if (i16 >= 0) {
                                sPVar = this.Jcg.get(i16);
                            } else {
                                sPVar = null;
                            }
                            sPVar2 = sPVar;
                        }
                    } else {
                        if (sPVar2 != null && i17 == sPVar2.sP) {
                            f10 += sPVar2.EjP;
                            i16--;
                            if (i16 >= 0) {
                                sPVar = this.Jcg.get(i16);
                            } else {
                                sPVar = null;
                            }
                        } else {
                            f10 += Sj(i17, i16 + 1).EjP;
                            i13++;
                            if (i16 >= 0) {
                                sPVar = this.Jcg.get(i16);
                            } else {
                                sPVar = null;
                            }
                        }
                        sPVar2 = sPVar;
                    }
                }
                float f11 = sPVarSj.EjP;
                int i18 = i13 + 1;
                if (f11 < 2.0f) {
                    sP sPVar3 = i18 < this.Jcg.size() ? this.Jcg.get(i18) : null;
                    float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                    int i19 = this.EjP;
                    while (true) {
                        i19++;
                        if (i19 >= iSj) {
                            break;
                        }
                        if (f11 >= paddingRight && i19 > iMin) {
                            if (sPVar3 == null) {
                                break;
                            }
                            if (i19 == sPVar3.sP && !sPVar3.TKC) {
                                this.Jcg.remove(i18);
                                this.TKC.Sj((ViewGroup) this, i19, sPVar3.Sj);
                                if (i18 < this.Jcg.size()) {
                                    sPVar3 = this.Jcg.get(i18);
                                }
                            }
                        } else if (sPVar3 != null && i19 == sPVar3.sP) {
                            f11 += sPVar3.EjP;
                            i18++;
                            if (i18 < this.Jcg.size()) {
                                sPVar3 = this.Jcg.get(i18);
                            }
                        } else {
                            sP sPVarSj3 = Sj(i19, i18);
                            i18++;
                            f11 += sPVarSj3.EjP;
                            sPVar3 = i18 < this.Jcg.size() ? this.Jcg.get(i18) : null;
                        }
                    }
                }
                Sj(sPVarSj, i13, sPVarSP);
            }
            int childCount = getChildCount();
            for (int i20 = 0; i20 < childCount; i20++) {
                View childAt = getChildAt(i20);
                C0176TKC c0176tkc = (C0176TKC) childAt.getLayoutParams();
                c0176tkc.vS = i20;
                if (!c0176tkc.Sj && c0176tkc.TKC == 0.0f && (sPVarSj2 = Sj(childAt)) != null) {
                    c0176tkc.TKC = sPVarSj2.EjP;
                    c0176tkc.HiB = sPVarSj2.sP;
                }
            }
            Jcg();
            if (hasFocus()) {
                View viewFindFocus = findFocus();
                sP sPVarSP2 = viewFindFocus != null ? sP(viewFindFocus) : null;
                if (sPVarSP2 == null || sPVarSP2.sP != this.EjP) {
                    for (int i21 = 0; i21 < getChildCount(); i21++) {
                        View childAt2 = getChildAt(i21);
                        sP sPVarSj4 = Sj(childAt2);
                        if (sPVarSj4 != null && sPVarSj4.sP == this.EjP && childAt2.requestFocus(2)) {
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        try {
            hexString = getResources().getResourceName(getId());
        } catch (Resources.NotFoundException unused) {
            hexString = Integer.toHexString(getId());
        }
        throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.Sj + ", found: " + iSj + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.TKC.getClass());
    }

    private void Sj(sP sPVar, int i10, sP sPVar2) {
        int i11;
        int i12;
        sP sPVar3;
        sP sPVar4;
        int iSj = this.TKC.Sj();
        int clientWidth = getClientWidth();
        float f10 = clientWidth > 0 ? this.uvD / clientWidth : 0.0f;
        if (sPVar2 != null) {
            int i13 = sPVar2.sP;
            int i14 = sPVar.sP;
            if (i13 < i14) {
                float fSj = sPVar2.HiB + sPVar2.EjP + f10;
                int i15 = i13 + 1;
                int i16 = 0;
                while (i15 <= sPVar.sP && i16 < this.Jcg.size()) {
                    sP sPVar5 = this.Jcg.get(i16);
                    while (true) {
                        sPVar4 = sPVar5;
                        if (i15 <= sPVar4.sP || i16 >= this.Jcg.size() - 1) {
                            break;
                        }
                        i16++;
                        sPVar5 = this.Jcg.get(i16);
                    }
                    while (i15 < sPVar4.sP) {
                        fSj += this.TKC.Sj(i15) + f10;
                        i15++;
                    }
                    sPVar4.HiB = fSj;
                    fSj += sPVar4.EjP + f10;
                    i15++;
                }
            } else if (i13 > i14) {
                int size = this.Jcg.size() - 1;
                float fSj2 = sPVar2.HiB;
                while (true) {
                    i13--;
                    if (i13 < sPVar.sP || size < 0) {
                        break;
                    }
                    sP sPVar6 = this.Jcg.get(size);
                    while (true) {
                        sPVar3 = sPVar6;
                        if (i13 >= sPVar3.sP || size <= 0) {
                            break;
                        }
                        size--;
                        sPVar6 = this.Jcg.get(size);
                    }
                    while (i13 > sPVar3.sP) {
                        fSj2 -= this.TKC.Sj(i13) + f10;
                        i13--;
                    }
                    fSj2 -= sPVar3.EjP + f10;
                    sPVar3.HiB = fSj2;
                }
            }
        }
        int size2 = this.Jcg.size();
        float fSj3 = sPVar.HiB;
        int i17 = sPVar.sP;
        int i18 = i17 - 1;
        this.sU = i17 == 0 ? fSj3 : -3.4028235E38f;
        int i19 = iSj - 1;
        this.f20186dx = i17 == i19 ? (sPVar.EjP + fSj3) - 1.0f : Float.MAX_VALUE;
        int i20 = i10 - 1;
        while (i20 >= 0) {
            sP sPVar7 = this.Jcg.get(i20);
            while (true) {
                i12 = sPVar7.sP;
                if (i18 <= i12) {
                    break;
                }
                fSj3 -= this.TKC.Sj(i18) + f10;
                i18--;
            }
            fSj3 -= sPVar7.EjP + f10;
            sPVar7.HiB = fSj3;
            if (i12 == 0) {
                this.sU = fSj3;
            }
            i20--;
            i18--;
        }
        float fSj4 = sPVar.HiB + sPVar.EjP + f10;
        int i21 = sPVar.sP + 1;
        int i22 = i10 + 1;
        while (i22 < size2) {
            sP sPVar8 = this.Jcg.get(i22);
            while (true) {
                i11 = sPVar8.sP;
                if (i21 >= i11) {
                    break;
                }
                fSj4 += this.TKC.Sj(i21) + f10;
                i21++;
            }
            if (i11 == i19) {
                this.f20186dx = (sPVar8.EjP + fSj4) - 1.0f;
            }
            sPVar8.HiB = fSj4;
            fSj4 += sPVar8.EjP + f10;
            i22++;
            i21++;
        }
        this.dwU = false;
    }

    sP Sj(View view) {
        for (int i10 = 0; i10 < this.Jcg.size(); i10++) {
            sP sPVar = this.Jcg.get(i10);
            if (this.TKC.Sj(view, sPVar.Sj)) {
                return sPVar;
            }
        }
        return null;
    }

    private void Sj(int i10, int i11, int i12, int i13) {
        if (i11 > 0 && !this.Jcg.isEmpty()) {
            if (!this.Fmk.isFinished()) {
                this.Fmk.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i11 - getPaddingLeft()) - getPaddingRight()) + i13)) * (((i10 - getPaddingLeft()) - getPaddingRight()) + i12)), getScrollY());
                return;
            }
        }
        sP sPVarSP = sP(this.EjP);
        int iMin = (int) ((sPVarSP != null ? Math.min(sPVarSP.HiB, this.f20186dx) : 0.0f) * ((i10 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            Sj(false);
            scrollTo(iMin, getScrollY());
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0064  */
    protected void Sj(int i10, float f10, int i11) {
        int iMax;
        int width;
        int left;
        if (this.MuB > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = getWidth();
            int childCount = getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                C0176TKC c0176tkc = (C0176TKC) childAt.getLayoutParams();
                if (c0176tkc.Sj) {
                    int i13 = c0176tkc.sP & 7;
                    if (i13 == 1) {
                        iMax = Math.max((width2 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    } else {
                        if (i13 == 3) {
                            width = childAt.getWidth() + paddingLeft;
                        } else if (i13 != 5) {
                            width = paddingLeft;
                        } else {
                            iMax = (width2 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = width;
                    }
                    int i14 = iMax;
                    width = paddingLeft;
                    paddingLeft = i14;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                    paddingLeft = width;
                }
            }
        }
        sP(i10, f10, i11);
        if (this.Chv != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i15 = 0; i15 < childCount2; i15++) {
                View childAt2 = getChildAt(i15);
                if (!((C0176TKC) childAt2.getLayoutParams()).Sj) {
                    this.Chv.Sj(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.sdp = true;
    }

    private void Sj(boolean z10) {
        boolean z11 = this.f20189xu == 2;
        if (z11) {
            setScrollingCacheEnabled(false);
            if (!this.Fmk.isFinished()) {
                this.Fmk.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.Fmk.getCurrX();
                int currY = this.Fmk.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        EjP(currX);
                    }
                }
            }
        }
        this.wE = false;
        for (int i10 = 0; i10 < this.Jcg.size(); i10++) {
            sP sPVar = this.Jcg.get(i10);
            if (sPVar.TKC) {
                sPVar.TKC = false;
                z11 = true;
            }
        }
        if (z11) {
            if (z10) {
                postOnAnimation(this.Uc);
            } else {
                this.Uc.run();
            }
        }
    }

    private boolean Sj(float f10, float f11) {
        if (f10 >= this.fF || f11 <= 0.0f) {
            return f10 > ((float) (getWidth() - this.fF)) && f11 < 0.0f;
        }
        return true;
    }

    private int Sj(int i10, float f10, int i11, int i12) {
        if (Math.abs(i12) <= this.HpB || Math.abs(i11) <= this.f20188jb) {
            i10 += (int) (f10 + (i10 >= this.EjP ? 0.4f : 0.6f));
        } else if (i11 <= 0) {
            i10++;
        }
        if (this.Jcg.size() <= 0) {
            return i10;
        }
        sP sPVar = this.Jcg.get(0);
        ArrayList<sP> arrayList = this.Jcg;
        return Math.max(sPVar.sP, Math.min(i10, arrayList.get(arrayList.size() - 1).sP));
    }

    private void Sj(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.xD) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.WMZ = motionEvent.getX(i10);
            this.xD = motionEvent.getPointerId(i10);
            VelocityTracker velocityTracker = this.Fm;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    protected boolean Sj(View view, boolean z10, int i10, int i11, int i12) {
        int i13;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i14 = i11 + scrollX;
                if (i14 >= childAt.getLeft() && i14 < childAt.getRight() && (i13 = i12 + scrollY) >= childAt.getTop() && i13 < childAt.getBottom() && Sj(childAt, true, i10, i14 - childAt.getLeft(), i13 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z10 && view.canScrollHorizontally(-i10);
    }

    public boolean Sj(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                if (keyEvent.hasModifiers(2)) {
                    return EjP();
                }
                return TKC(17);
            }
            if (keyCode == 22) {
                if (keyEvent.hasModifiers(2)) {
                    return HiB();
                }
                return TKC(66);
            }
            if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return TKC(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return TKC(1);
                }
            }
        }
        return false;
    }

    private Rect Sj(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }
}
