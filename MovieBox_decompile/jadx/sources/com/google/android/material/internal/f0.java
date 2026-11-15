package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.google.android.material.R$styleable;
import java.util.ArrayList;
import java.util.List;

public abstract class f0 {

    class a implements d {

        final boolean f28376a;

        final boolean f28377b;

        final boolean f28378c;

        final d f28379d;

        a(boolean z10, boolean z11, boolean z12, d dVar) {
            this.f28376a = z10;
            this.f28377b = z11;
            this.f28378c = z12;
            this.f28379d = dVar;
        }

        @Override
        public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, e eVar) {
            if (this.f28376a) {
                eVar.f28385d += windowInsetsCompat.getSystemWindowInsetBottom();
            }
            boolean zP = f0.p(view);
            if (this.f28377b) {
                if (zP) {
                    eVar.f28384c += windowInsetsCompat.getSystemWindowInsetLeft();
                } else {
                    eVar.f28382a += windowInsetsCompat.getSystemWindowInsetLeft();
                }
            }
            if (this.f28378c) {
                if (zP) {
                    eVar.f28382a += windowInsetsCompat.getSystemWindowInsetRight();
                } else {
                    eVar.f28384c += windowInsetsCompat.getSystemWindowInsetRight();
                }
            }
            eVar.a(view);
            d dVar = this.f28379d;
            return dVar != null ? dVar.a(view, windowInsetsCompat, eVar) : windowInsetsCompat;
        }
    }

    class b implements OnApplyWindowInsetsListener {

        final d f28380a;

        final e f28381b;

        b(d dVar, e eVar) {
            this.f28380a = dVar;
            this.f28381b = eVar;
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return this.f28380a.a(view, windowInsetsCompat, new e(this.f28381b));
        }
    }

    class c implements View.OnAttachStateChangeListener {
        c() {
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            ViewCompat.requestApplyInsets(view);
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public interface d {
        WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, e eVar);
    }

    public static Rect b(View view, View view2) {
        int[] iArr = new int[2];
        view2.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        int[] iArr2 = new int[2];
        view.getLocationOnScreen(iArr2);
        int i12 = i10 - iArr2[0];
        int i13 = i11 - iArr2[1];
        return new Rect(i12, i13, view2.getWidth() + i12, view2.getHeight() + i13);
    }

    public static Rect c(View view) {
        return d(view, 0);
    }

    public static Rect d(View view, int i10) {
        return new Rect(view.getLeft(), view.getTop() + i10, view.getRight(), view.getBottom() + i10);
    }

    public static void e(View view, AttributeSet attributeSet, int i10, int i11, d dVar) {
        TypedArray typedArrayObtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, R$styleable.Insets, i10, i11);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Insets_paddingBottomSystemWindowInsets, false);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Insets_paddingLeftSystemWindowInsets, false);
        boolean z12 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Insets_paddingRightSystemWindowInsets, false);
        typedArrayObtainStyledAttributes.recycle();
        f(view, new a(z10, z11, z12, dVar));
    }

    public static void f(View view, d dVar) {
        ViewCompat.setOnApplyWindowInsetsListener(view, new b(dVar, new e(ViewCompat.getPaddingStart(view), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom())));
        s(view);
    }

    public static float g(Context context, int i10) {
        return TypedValue.applyDimension(1, i10, context.getResources().getDisplayMetrics());
    }

    public static Integer h(View view) {
        ColorStateList colorStateListG = com.google.android.material.drawable.d.g(view.getBackground());
        if (colorStateListG != null) {
            return Integer.valueOf(colorStateListG.getDefaultColor());
        }
        return null;
    }

    public static List i(View view) {
        ArrayList arrayList = new ArrayList();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                arrayList.add(viewGroup.getChildAt(i10));
            }
        }
        return arrayList;
    }

    public static ViewGroup j(View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(R.id.content);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == view || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    public static d0 k(View view) {
        return m(j(view));
    }

    private static InputMethodManager l(View view) {
        return (InputMethodManager) androidx.core.content.b.getSystemService(view.getContext(), InputMethodManager.class);
    }

    public static d0 m(View view) {
        if (view == null) {
            return null;
        }
        return new c0(view);
    }

    public static float n(View view) {
        float elevation = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            elevation += ViewCompat.getElevation((View) parent);
        }
        return elevation;
    }

    public static void o(View view, boolean z10) {
        WindowInsetsControllerCompat windowInsetsController;
        if (z10 && (windowInsetsController = ViewCompat.getWindowInsetsController(view)) != null) {
            windowInsetsController.hide(WindowInsetsCompat.Type.ime());
            return;
        }
        InputMethodManager inputMethodManagerL = l(view);
        if (inputMethodManagerL != null) {
            inputMethodManagerL.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public static boolean p(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    public static PorterDuff.Mode r(int i10, PorterDuff.Mode mode) {
        if (i10 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i10 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i10 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i10) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static void s(View view) {
        if (ViewCompat.isAttachedToWindow(view)) {
            ViewCompat.requestApplyInsets(view);
        } else {
            view.addOnAttachStateChangeListener(new c());
        }
    }

    public static void t(final View view, final boolean z10) {
        view.requestFocus();
        view.post(new Runnable() {
            @Override
            public final void run() {
                f0.v(view, z10);
            }
        });
    }

    public static void u(View view, Rect rect) {
        view.setLeft(rect.left);
        view.setTop(rect.top);
        view.setRight(rect.right);
        view.setBottom(rect.bottom);
    }

    public static void v(View view, boolean z10) {
        WindowInsetsControllerCompat windowInsetsController;
        if (!z10 || (windowInsetsController = ViewCompat.getWindowInsetsController(view)) == null) {
            l(view).showSoftInput(view, 1);
        } else {
            windowInsetsController.show(WindowInsetsCompat.Type.ime());
        }
    }

    public static class e {

        public int f28382a;

        public int f28383b;

        public int f28384c;

        public int f28385d;

        public e(int i10, int i11, int i12, int i13) {
            this.f28382a = i10;
            this.f28383b = i11;
            this.f28384c = i12;
            this.f28385d = i13;
        }

        public void a(View view) {
            ViewCompat.setPaddingRelative(view, this.f28382a, this.f28383b, this.f28384c, this.f28385d);
        }

        public e(e eVar) {
            this.f28382a = eVar.f28382a;
            this.f28383b = eVar.f28383b;
            this.f28384c = eVar.f28384c;
            this.f28385d = eVar.f28385d;
        }
    }
}
