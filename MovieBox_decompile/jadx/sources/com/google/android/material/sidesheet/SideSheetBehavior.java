package com.google.android.material.sidesheet;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import cb.n;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

public class SideSheetBehavior<V extends View> extends CoordinatorLayout.c implements ya.b {

    private d f28807a;

    private float f28808b;

    private cb.i f28809c;

    private ColorStateList f28810d;

    private n f28811e;

    private final c f28812f;

    private float f28813g;

    private boolean f28814h;

    private int f28815i;

    private int f28816j;

    private ViewDragHelper f28817k;

    private boolean f28818l;

    private float f28819m;

    private int f28820n;

    private int f28821o;

    private int f28822p;

    private int f28823q;

    private WeakReference f28824r;

    private WeakReference f28825s;

    private int f28826t;

    private VelocityTracker f28827u;

    private ya.i f28828v;

    private int f28829w;

    private final Set f28830x;

    private final ViewDragHelper.b f28831y;

    private static final int f28806z = R$string.side_sheet_accessibility_pane_title;
    private static final int A = R$style.Widget_Material3_SideSheet;

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        final int state;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(@NonNull Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.state);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, @NonNull SideSheetBehavior<?> sideSheetBehavior) {
            super(parcelable);
            this.state = ((SideSheetBehavior) sideSheetBehavior).f28815i;
        }
    }

    class a extends ViewDragHelper.b {
        a() {
        }

        @Override
        public int clampViewPositionHorizontal(View view, int i10, int i11) {
            return d1.a.b(i10, SideSheetBehavior.this.f28807a.g(), SideSheetBehavior.this.f28807a.f());
        }

        @Override
        public int clampViewPositionVertical(View view, int i10, int i11) {
            return view.getTop();
        }

        @Override
        public int getViewHorizontalDragRange(View view) {
            return SideSheetBehavior.this.f28820n + SideSheetBehavior.this.g0();
        }

        @Override
        public void onViewDragStateChanged(int i10) {
            if (i10 == 1 && SideSheetBehavior.this.f28814h) {
                SideSheetBehavior.this.F0(1);
            }
        }

        @Override
        public void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            View viewB0 = SideSheetBehavior.this.b0();
            if (viewB0 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) viewB0.getLayoutParams()) != null) {
                SideSheetBehavior.this.f28807a.p(marginLayoutParams, view.getLeft(), view.getRight());
                viewB0.setLayoutParams(marginLayoutParams);
            }
            SideSheetBehavior.this.W(view, i10);
        }

        @Override
        public void onViewReleased(View view, float f10, float f11) {
            int iS = SideSheetBehavior.this.S(view, f10, f11);
            SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
            sideSheetBehavior.K0(view, iS, sideSheetBehavior.J0());
        }

        @Override
        public boolean tryCaptureView(View view, int i10) {
            return (SideSheetBehavior.this.f28815i == 1 || SideSheetBehavior.this.f28824r == null || SideSheetBehavior.this.f28824r.get() != view) ? false : true;
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            SideSheetBehavior.this.F0(5);
            if (SideSheetBehavior.this.f28824r == null || SideSheetBehavior.this.f28824r.get() == null) {
                return;
            }
            ((View) SideSheetBehavior.this.f28824r.get()).requestLayout();
        }
    }

    class c {

        private int f28834a;

        private boolean f28835b;

        private final Runnable f28836c = new Runnable() {
            @Override
            public final void run() {
                this.f28848a.c();
            }
        };

        c() {
        }

        public void c() {
            this.f28835b = false;
            if (SideSheetBehavior.this.f28817k != null && SideSheetBehavior.this.f28817k.continueSettling(true)) {
                b(this.f28834a);
            } else if (SideSheetBehavior.this.f28815i == 2) {
                SideSheetBehavior.this.F0(this.f28834a);
            }
        }

        void b(int i10) {
            if (SideSheetBehavior.this.f28824r == null || SideSheetBehavior.this.f28824r.get() == null) {
                return;
            }
            this.f28834a = i10;
            if (this.f28835b) {
                return;
            }
            ViewCompat.postOnAnimation((View) SideSheetBehavior.this.f28824r.get(), this.f28836c);
            this.f28835b = true;
        }
    }

    public SideSheetBehavior() {
        this.f28812f = new c();
        this.f28814h = true;
        this.f28815i = 5;
        this.f28816j = 5;
        this.f28819m = 0.1f;
        this.f28826t = -1;
        this.f28830x = new LinkedHashSet();
        this.f28831y = new a();
    }

    private void C0(int i10) {
        d dVar = this.f28807a;
        if (dVar == null || dVar.j() != i10) {
            if (i10 == 0) {
                this.f28807a = new com.google.android.material.sidesheet.b(this);
                if (this.f28811e == null || o0()) {
                    return;
                }
                n.b bVarV = this.f28811e.v();
                bVarV.M(0.0f).B(0.0f);
                N0(bVarV.m());
                return;
            }
            if (i10 == 1) {
                this.f28807a = new com.google.android.material.sidesheet.a(this);
                if (this.f28811e == null || n0()) {
                    return;
                }
                n.b bVarV2 = this.f28811e.v();
                bVarV2.H(0.0f).w(0.0f);
                N0(bVarV2.m());
                return;
            }
            throw new IllegalArgumentException("Invalid sheet edge position value: " + i10 + ". Must be 0 or 1.");
        }
    }

    private void D0(View view, int i10) {
        C0(GravityCompat.getAbsoluteGravity(((CoordinatorLayout.f) view.getLayoutParams()).f7600c, i10) == 3 ? 1 : 0);
    }

    private boolean G0() {
        return this.f28817k != null && (this.f28814h || this.f28815i == 1);
    }

    private boolean I0(View view) {
        return (view.isShown() || ViewCompat.getAccessibilityPaneTitle(view) != null) && this.f28814h;
    }

    public void K0(View view, int i10, boolean z10) {
        if (!s0(view, i10, z10)) {
            F0(i10);
        } else {
            F0(2);
            this.f28812f.b(i10);
        }
    }

    private void L0() {
        View view;
        WeakReference weakReference = this.f28824r;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(view, 262144);
        ViewCompat.removeAccessibilityAction(view, 1048576);
        if (this.f28815i != 5) {
            x0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, 5);
        }
        if (this.f28815i != 3) {
            x0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, 3);
        }
    }

    private void M0() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        WeakReference weakReference = this.f28824r;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = (View) this.f28824r.get();
        View viewB0 = b0();
        if (viewB0 == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) viewB0.getLayoutParams()) == null) {
            return;
        }
        this.f28807a.o(marginLayoutParams, (int) ((this.f28820n * view.getScaleX()) + this.f28823q));
        viewB0.requestLayout();
    }

    private void N0(n nVar) {
        cb.i iVar = this.f28809c;
        if (iVar != null) {
            iVar.setShapeAppearanceModel(nVar);
        }
    }

    private void O0(View view) {
        int i10 = this.f28815i == 5 ? 4 : 0;
        if (view.getVisibility() != i10) {
            view.setVisibility(i10);
        }
    }

    private int Q(int i10, View view) {
        int i11 = this.f28815i;
        if (i11 == 1 || i11 == 2) {
            return i10 - this.f28807a.h(view);
        }
        if (i11 == 3) {
            return 0;
        }
        if (i11 == 5) {
            return this.f28807a.e();
        }
        throw new IllegalStateException("Unexpected value: " + this.f28815i);
    }

    private float R(float f10, float f11) {
        return Math.abs(f10 - f11);
    }

    public int S(View view, float f10, float f11) {
        if (q0(f10)) {
            return 3;
        }
        if (H0(view, f10)) {
            if (!this.f28807a.m(f10, f11) && !this.f28807a.l(view)) {
                return 3;
            }
        } else if (f10 == 0.0f || !e.a(f10, f11)) {
            int left = view.getLeft();
            if (Math.abs(left - c0()) < Math.abs(left - this.f28807a.e())) {
                return 3;
            }
        }
        return 5;
    }

    private void T() {
        WeakReference weakReference = this.f28825s;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f28825s = null;
    }

    private AccessibilityViewCommand U(final int i10) {
        return new AccessibilityViewCommand() {
            @Override
            public final boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
                return this.f28840a.t0(i10, view, commandArguments);
            }
        };
    }

    private void V(Context context) {
        if (this.f28811e == null) {
            return;
        }
        cb.i iVar = new cb.i(this.f28811e);
        this.f28809c = iVar;
        iVar.S(context);
        ColorStateList colorStateList = this.f28810d;
        if (colorStateList != null) {
            this.f28809c.d0(colorStateList);
            return;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
        this.f28809c.setTint(typedValue.data);
    }

    public void W(View view, int i10) {
        if (this.f28830x.isEmpty()) {
            return;
        }
        float fB = this.f28807a.b(i10);
        Iterator it = this.f28830x.iterator();
        while (it.hasNext()) {
            ((com.google.android.material.sidesheet.c) it.next()).b(view, fB);
        }
    }

    private void X(View view) {
        if (ViewCompat.getAccessibilityPaneTitle(view) == null) {
            ViewCompat.setAccessibilityPaneTitle(view, view.getResources().getString(f28806z));
        }
    }

    private int Y(int i10, int i11, int i12, int i13) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, i11, i13);
        if (i12 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i12), 1073741824);
        }
        if (size != 0) {
            i12 = Math.min(size, i12);
        }
        return View.MeasureSpec.makeMeasureSpec(i12, Integer.MIN_VALUE);
    }

    private ValueAnimator.AnimatorUpdateListener a0() {
        final ViewGroup.MarginLayoutParams marginLayoutParams;
        final View viewB0 = b0();
        if (viewB0 == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) viewB0.getLayoutParams()) == null) {
            return null;
        }
        final int iC = this.f28807a.c(marginLayoutParams);
        return new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f28844a.u0(marginLayoutParams, iC, viewB0, valueAnimator);
            }
        };
    }

    private int d0() {
        d dVar = this.f28807a;
        return (dVar == null || dVar.j() == 0) ? 5 : 3;
    }

    private CoordinatorLayout.f m0() {
        View view;
        WeakReference weakReference = this.f28824r;
        if (weakReference == null || (view = (View) weakReference.get()) == null || !(view.getLayoutParams() instanceof CoordinatorLayout.f)) {
            return null;
        }
        return (CoordinatorLayout.f) view.getLayoutParams();
    }

    private boolean n0() {
        CoordinatorLayout.f fVarM0 = m0();
        return fVarM0 != null && ((ViewGroup.MarginLayoutParams) fVarM0).leftMargin > 0;
    }

    private boolean o0() {
        CoordinatorLayout.f fVarM0 = m0();
        return fVarM0 != null && ((ViewGroup.MarginLayoutParams) fVarM0).rightMargin > 0;
    }

    private boolean p0(MotionEvent motionEvent) {
        return G0() && R((float) this.f28829w, motionEvent.getX()) > ((float) this.f28817k.getTouchSlop());
    }

    private boolean q0(float f10) {
        return this.f28807a.k(f10);
    }

    private boolean r0(View view) {
        ViewParent parent = view.getParent();
        return parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(view);
    }

    private boolean s0(View view, int i10, boolean z10) {
        int iH0 = h0(i10);
        ViewDragHelper viewDragHelperL0 = l0();
        return viewDragHelperL0 != null && (!z10 ? !viewDragHelperL0.smoothSlideViewTo(view, iH0, view.getTop()) : !viewDragHelperL0.settleCapturedViewAt(iH0, view.getTop()));
    }

    public boolean t0(int i10, View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        E0(i10);
        return true;
    }

    public void u0(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, View view, ValueAnimator valueAnimator) {
        this.f28807a.o(marginLayoutParams, qa.a.c(i10, 0, valueAnimator.getAnimatedFraction()));
        view.requestLayout();
    }

    public void v0(int i10) {
        View view = (View) this.f28824r.get();
        if (view != null) {
            K0(view, i10, false);
        }
    }

    private void w0(CoordinatorLayout coordinatorLayout) {
        int i10;
        View viewFindViewById;
        if (this.f28825s != null || (i10 = this.f28826t) == -1 || (viewFindViewById = coordinatorLayout.findViewById(i10)) == null) {
            return;
        }
        this.f28825s = new WeakReference(viewFindViewById);
    }

    private void x0(View view, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, int i10) {
        ViewCompat.replaceAccessibilityAction(view, accessibilityActionCompat, null, U(i10));
    }

    private void y0() {
        VelocityTracker velocityTracker = this.f28827u;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f28827u = null;
        }
    }

    private void z0(View view, Runnable runnable) {
        if (r0(view)) {
            view.post(runnable);
        } else {
            runnable.run();
        }
    }

    public void A0(int i10) {
        this.f28826t = i10;
        T();
        WeakReference weakReference = this.f28824r;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            if (i10 == -1 || !ViewCompat.isLaidOut(view)) {
                return;
            }
            view.requestLayout();
        }
    }

    public void B0(boolean z10) {
        this.f28814h = z10;
    }

    @Override
    public boolean D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f28815i == 1 && actionMasked == 0) {
            return true;
        }
        if (G0()) {
            this.f28817k.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            y0();
        }
        if (this.f28827u == null) {
            this.f28827u = VelocityTracker.obtain();
        }
        this.f28827u.addMovement(motionEvent);
        if (G0() && actionMasked == 2 && !this.f28818l && p0(motionEvent)) {
            this.f28817k.captureChildView(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f28818l;
    }

    public void E0(final int i10) {
        if (i10 == 1 || i10 == 2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("STATE_");
            sb2.append(i10 == 1 ? "DRAGGING" : "SETTLING");
            sb2.append(" should not be set externally.");
            throw new IllegalArgumentException(sb2.toString());
        }
        WeakReference weakReference = this.f28824r;
        if (weakReference == null || weakReference.get() == null) {
            F0(i10);
        } else {
            z0((View) this.f28824r.get(), new Runnable() {
                @Override
                public final void run() {
                    this.f28842a.v0(i10);
                }
            });
        }
    }

    void F0(int i10) {
        View view;
        if (this.f28815i == i10) {
            return;
        }
        this.f28815i = i10;
        if (i10 == 3 || i10 == 5) {
            this.f28816j = i10;
        }
        WeakReference weakReference = this.f28824r;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        O0(view);
        Iterator it = this.f28830x.iterator();
        while (it.hasNext()) {
            ((com.google.android.material.sidesheet.c) it.next()).a(view, i10);
        }
        L0();
    }

    boolean H0(View view, float f10) {
        return this.f28807a.n(view, f10);
    }

    public boolean J0() {
        return true;
    }

    int Z() {
        return this.f28820n;
    }

    public View b0() {
        WeakReference weakReference = this.f28825s;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    public int c0() {
        return this.f28807a.d();
    }

    @Override
    public void cancelBackProgress() {
        ya.i iVar = this.f28828v;
        if (iVar == null) {
            return;
        }
        iVar.f();
    }

    public float e0() {
        return this.f28819m;
    }

    float f0() {
        return 0.5f;
    }

    @Override
    public void g(CoordinatorLayout.f fVar) {
        super.g(fVar);
        this.f28824r = null;
        this.f28817k = null;
        this.f28828v = null;
    }

    int g0() {
        return this.f28823q;
    }

    int h0(int i10) {
        if (i10 == 3) {
            return c0();
        }
        if (i10 == 5) {
            return this.f28807a.e();
        }
        throw new IllegalArgumentException("Invalid state to get outer edge offset: " + i10);
    }

    @Override
    public void handleBackInvoked() {
        ya.i iVar = this.f28828v;
        if (iVar == null) {
            return;
        }
        androidx.activity.b bVarC = iVar.c();
        if (bVarC == null || Build.VERSION.SDK_INT < 34) {
            E0(5);
        } else {
            this.f28828v.h(bVarC, d0(), new b(), a0());
        }
    }

    int i0() {
        return this.f28822p;
    }

    @Override
    public void j() {
        super.j();
        this.f28824r = null;
        this.f28817k = null;
        this.f28828v = null;
    }

    int j0() {
        return this.f28821o;
    }

    @Override
    public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        if (!I0(view)) {
            this.f28818l = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            y0();
        }
        if (this.f28827u == null) {
            this.f28827u = VelocityTracker.obtain();
        }
        this.f28827u.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.f28829w = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.f28818l) {
            this.f28818l = false;
            return false;
        }
        return (this.f28818l || (viewDragHelper = this.f28817k) == null || !viewDragHelper.shouldInterceptTouchEvent(motionEvent)) ? false : true;
    }

    int k0() {
        return 500;
    }

    @Override
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i10) {
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
            view.setFitsSystemWindows(true);
        }
        if (this.f28824r == null) {
            this.f28824r = new WeakReference(view);
            this.f28828v = new ya.i(view);
            cb.i iVar = this.f28809c;
            if (iVar != null) {
                ViewCompat.setBackground(view, iVar);
                cb.i iVar2 = this.f28809c;
                float elevation = this.f28813g;
                if (elevation == -1.0f) {
                    elevation = ViewCompat.getElevation(view);
                }
                iVar2.c0(elevation);
            } else {
                ColorStateList colorStateList = this.f28810d;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(view, colorStateList);
                }
            }
            O0(view);
            L0();
            if (ViewCompat.getImportantForAccessibility(view) == 0) {
                ViewCompat.setImportantForAccessibility(view, 1);
            }
            X(view);
        }
        D0(view, i10);
        if (this.f28817k == null) {
            this.f28817k = ViewDragHelper.create(coordinatorLayout, this.f28831y);
        }
        int iH = this.f28807a.h(view);
        coordinatorLayout.onLayoutChild(view, i10);
        this.f28821o = coordinatorLayout.getWidth();
        this.f28822p = this.f28807a.i(coordinatorLayout);
        this.f28820n = view.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        this.f28823q = marginLayoutParams != null ? this.f28807a.a(marginLayoutParams) : 0;
        ViewCompat.offsetLeftAndRight(view, Q(iH, view));
        w0(coordinatorLayout);
        for (com.google.android.material.sidesheet.c cVar : this.f28830x) {
            if (cVar instanceof j) {
                ((j) cVar).c(view);
            }
        }
        return true;
    }

    ViewDragHelper l0() {
        return this.f28817k;
    }

    @Override
    public boolean m(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(Y(i10, coordinatorLayout.getPaddingLeft() + coordinatorLayout.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, -1, marginLayoutParams.width), Y(i12, coordinatorLayout.getPaddingTop() + coordinatorLayout.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, -1, marginLayoutParams.height));
        return true;
    }

    @Override
    public void startBackProgress(androidx.activity.b bVar) {
        ya.i iVar = this.f28828v;
        if (iVar == null) {
            return;
        }
        iVar.j(bVar);
    }

    @Override
    public void updateBackProgress(androidx.activity.b bVar) {
        ya.i iVar = this.f28828v;
        if (iVar == null) {
            return;
        }
        iVar.l(bVar, d0());
        M0();
    }

    @Override
    public void x(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        if (savedState.getSuperState() != null) {
            super.x(coordinatorLayout, view, savedState.getSuperState());
        }
        int i10 = savedState.state;
        if (i10 == 1 || i10 == 2) {
            i10 = 5;
        }
        this.f28815i = i10;
        this.f28816j = i10;
    }

    @Override
    public Parcelable y(CoordinatorLayout coordinatorLayout, View view) {
        return new SavedState(super.y(coordinatorLayout, view), (SideSheetBehavior<?>) this);
    }

    public SideSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28812f = new c();
        this.f28814h = true;
        this.f28815i = 5;
        this.f28816j = 5;
        this.f28819m = 0.1f;
        this.f28826t = -1;
        this.f28830x = new LinkedHashSet();
        this.f28831y = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SideSheetBehavior_Layout);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SideSheetBehavior_Layout_backgroundTint)) {
            this.f28810d = za.c.a(context, typedArrayObtainStyledAttributes, R$styleable.SideSheetBehavior_Layout_backgroundTint);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SideSheetBehavior_Layout_shapeAppearance)) {
            this.f28811e = n.e(context, attributeSet, 0, A).m();
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SideSheetBehavior_Layout_coplanarSiblingViewId)) {
            A0(typedArrayObtainStyledAttributes.getResourceId(R$styleable.SideSheetBehavior_Layout_coplanarSiblingViewId, -1));
        }
        V(context);
        this.f28813g = typedArrayObtainStyledAttributes.getDimension(R$styleable.SideSheetBehavior_Layout_android_elevation, -1.0f);
        B0(typedArrayObtainStyledAttributes.getBoolean(R$styleable.SideSheetBehavior_Layout_behavior_draggable, true));
        typedArrayObtainStyledAttributes.recycle();
        this.f28808b = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
