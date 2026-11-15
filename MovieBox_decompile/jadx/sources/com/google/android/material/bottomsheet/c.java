package com.google.android.material.bottomsheet;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.w;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import cb.i;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.internal.f0;

public class c extends w {

    private BottomSheetBehavior f27628a;

    private FrameLayout f27629b;

    private CoordinatorLayout f27630c;

    private FrameLayout f27631d;

    boolean f27632e;

    boolean f27633f;

    private boolean f27634g;

    private boolean f27635h;

    private f f27636i;

    private boolean f27637j;

    private ya.c f27638k;

    private BottomSheetBehavior.f f27639l;

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            if (c.this.f27636i != null) {
                c.this.f27628a.B0(c.this.f27636i);
            }
            if (windowInsetsCompat != null) {
                c cVar = c.this;
                cVar.f27636i = new f(cVar.f27631d, windowInsetsCompat, null);
                c.this.f27636i.b(c.this.getWindow());
                c.this.f27628a.Y(c.this.f27636i);
            }
            return windowInsetsCompat;
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override
        public void onClick(View view) {
            c cVar = c.this;
            if (cVar.f27633f && cVar.isShowing() && c.this.n()) {
                c.this.cancel();
            }
        }
    }

    class C0367c extends AccessibilityDelegateCompat {
        C0367c() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!c.this.f27633f) {
                accessibilityNodeInfoCompat.setDismissable(false);
            } else {
                accessibilityNodeInfoCompat.addAction(1048576);
                accessibilityNodeInfoCompat.setDismissable(true);
            }
        }

        @Override
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (i10 == 1048576) {
                c cVar = c.this;
                if (cVar.f27633f) {
                    cVar.cancel();
                    return true;
                }
            }
            return super.performAccessibilityAction(view, i10, bundle);
        }
    }

    class d implements View.OnTouchListener {
        d() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    class e extends BottomSheetBehavior.f {
        e() {
        }

        @Override
        public void onSlide(View view, float f10) {
        }

        @Override
        public void onStateChanged(View view, int i10) {
            if (i10 == 5) {
                c.this.cancel();
            }
        }
    }

    private static class f extends BottomSheetBehavior.f {

        private final Boolean f27645a;

        private final WindowInsetsCompat f27646b;

        private Window f27647c;

        private boolean f27648d;

        f(View view, WindowInsetsCompat windowInsetsCompat, a aVar) {
            this(view, windowInsetsCompat);
        }

        private void a(View view) {
            if (view.getTop() < this.f27646b.getSystemWindowInsetTop()) {
                Window window = this.f27647c;
                if (window != null) {
                    Boolean bool = this.f27645a;
                    com.google.android.material.internal.e.f(window, bool == null ? this.f27648d : bool.booleanValue());
                }
                view.setPadding(view.getPaddingLeft(), this.f27646b.getSystemWindowInsetTop() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
                return;
            }
            if (view.getTop() != 0) {
                Window window2 = this.f27647c;
                if (window2 != null) {
                    com.google.android.material.internal.e.f(window2, this.f27648d);
                }
                view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
            }
        }

        void b(Window window) {
            if (this.f27647c == window) {
                return;
            }
            this.f27647c = window;
            if (window != null) {
                this.f27648d = WindowCompat.getInsetsController(window, window.getDecorView()).isAppearanceLightStatusBars();
            }
        }

        @Override
        void onLayout(View view) {
            a(view);
        }

        @Override
        public void onSlide(View view, float f10) {
            a(view);
        }

        @Override
        public void onStateChanged(View view, int i10) {
            a(view);
        }

        private f(View view, WindowInsetsCompat windowInsetsCompat) {
            this.f27646b = windowInsetsCompat;
            i iVarP0 = BottomSheetBehavior.m0(view).p0();
            ColorStateList colorStateListZ = iVarP0 != null ? iVarP0.z() : ViewCompat.getBackgroundTintList(view);
            if (colorStateListZ != null) {
                this.f27645a = Boolean.valueOf(com.google.android.material.color.b.h(colorStateListZ.getDefaultColor()));
                return;
            }
            Integer numH = f0.h(view);
            if (numH != null) {
                this.f27645a = Boolean.valueOf(com.google.android.material.color.b.h(numH.intValue()));
            } else {
                this.f27645a = null;
            }
        }
    }

    public c(Context context) {
        this(context, 0);
        this.f27637j = getContext().getTheme().obtainStyledAttributes(new int[]{R$attr.enableEdgeToEdge}).getBoolean(0, false);
    }

    private static int d(Context context, int i10) {
        if (i10 != 0) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(R$attr.bottomSheetDialogTheme, typedValue, true) ? typedValue.resourceId : R$style.Theme_Design_Light_BottomSheetDialog;
    }

    private FrameLayout j() {
        if (this.f27629b == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R$layout.design_bottom_sheet_dialog, null);
            this.f27629b = frameLayout;
            this.f27630c = (CoordinatorLayout) frameLayout.findViewById(R$id.coordinator);
            FrameLayout frameLayout2 = (FrameLayout) this.f27629b.findViewById(R$id.design_bottom_sheet);
            this.f27631d = frameLayout2;
            BottomSheetBehavior bottomSheetBehaviorM0 = BottomSheetBehavior.m0(frameLayout2);
            this.f27628a = bottomSheetBehaviorM0;
            bottomSheetBehaviorM0.Y(this.f27639l);
            this.f27628a.M0(this.f27633f);
            this.f27638k = new ya.c(this.f27628a, this.f27631d);
        }
        return this.f27629b;
    }

    private void o() {
        ya.c cVar = this.f27638k;
        if (cVar == null) {
            return;
        }
        if (this.f27633f) {
            cVar.c();
        } else {
            cVar.f();
        }
    }

    private View p(int i10, View view, ViewGroup.LayoutParams layoutParams) {
        j();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f27629b.findViewById(R$id.coordinator);
        if (i10 != 0 && view == null) {
            view = getLayoutInflater().inflate(i10, (ViewGroup) coordinatorLayout, false);
        }
        if (this.f27637j) {
            ViewCompat.setOnApplyWindowInsetsListener(this.f27631d, new a());
        }
        this.f27631d.removeAllViews();
        if (layoutParams == null) {
            this.f27631d.addView(view);
        } else {
            this.f27631d.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(R$id.touch_outside).setOnClickListener(new b());
        ViewCompat.setAccessibilityDelegate(this.f27631d, new C0367c());
        this.f27631d.setOnTouchListener(new d());
        return this.f27629b;
    }

    @Override
    public void cancel() {
        BottomSheetBehavior bottomSheetBehaviorK = k();
        if (!this.f27632e || bottomSheetBehaviorK.q0() == 5) {
            super.cancel();
        } else {
            bottomSheetBehaviorK.U0(5);
        }
    }

    public BottomSheetBehavior k() {
        if (this.f27628a == null) {
            j();
        }
        return this.f27628a;
    }

    public boolean l() {
        return this.f27632e;
    }

    void m() {
        this.f27628a.B0(this.f27639l);
    }

    boolean n() {
        if (!this.f27635h) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
            this.f27634g = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
            this.f27635h = true;
        }
        return this.f27634g;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window != null) {
            boolean z10 = this.f27637j && Color.alpha(window.getNavigationBarColor()) < 255;
            FrameLayout frameLayout = this.f27629b;
            if (frameLayout != null) {
                frameLayout.setFitsSystemWindows(!z10);
            }
            CoordinatorLayout coordinatorLayout = this.f27630c;
            if (coordinatorLayout != null) {
                coordinatorLayout.setFitsSystemWindows(!z10);
            }
            WindowCompat.setDecorFitsSystemWindows(window, !z10);
            f fVar = this.f27636i;
            if (fVar != null) {
                fVar.b(window);
            }
        }
        o();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setStatusBarColor(0);
            window.addFlags(Integer.MIN_VALUE);
            window.setLayout(-1, -1);
        }
    }

    @Override
    public void onDetachedFromWindow() {
        f fVar = this.f27636i;
        if (fVar != null) {
            fVar.b(null);
        }
        ya.c cVar = this.f27638k;
        if (cVar != null) {
            cVar.f();
        }
    }

    @Override
    protected void onStart() {
        super.onStart();
        BottomSheetBehavior bottomSheetBehavior = this.f27628a;
        if (bottomSheetBehavior == null || bottomSheetBehavior.q0() != 5) {
            return;
        }
        this.f27628a.U0(4);
    }

    @Override
    public void setCancelable(boolean z10) {
        super.setCancelable(z10);
        if (this.f27633f != z10) {
            this.f27633f = z10;
            BottomSheetBehavior bottomSheetBehavior = this.f27628a;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.M0(z10);
            }
            if (getWindow() != null) {
                o();
            }
        }
    }

    @Override
    public void setCanceledOnTouchOutside(boolean z10) {
        super.setCanceledOnTouchOutside(z10);
        if (z10 && !this.f27633f) {
            this.f27633f = true;
        }
        this.f27634g = z10;
        this.f27635h = true;
    }

    @Override
    public void setContentView(int i10) {
        super.setContentView(p(i10, null, null));
    }

    @Override
    public void setContentView(View view) {
        super.setContentView(p(0, view, null));
    }

    @Override
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(p(0, view, layoutParams));
    }

    public c(Context context, int i10) {
        super(context, d(context, i10));
        this.f27633f = true;
        this.f27634g = true;
        this.f27639l = new e();
        supportRequestWindowFeature(1);
        this.f27637j = getContext().getTheme().obtainStyledAttributes(new int[]{R$attr.enableEdgeToEdge}).getBoolean(0, false);
    }
}
