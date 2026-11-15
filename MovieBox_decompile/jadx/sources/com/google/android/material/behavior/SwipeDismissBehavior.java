package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;

public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.c {

    ViewDragHelper f27497a;

    c f27498b;

    private boolean f27499c;

    private boolean f27500d;

    private boolean f27502f;

    private float f27501e = 0.0f;

    int f27503g = 2;

    float f27504h = 0.5f;

    float f27505i = 0.0f;

    float f27506j = 0.5f;

    private final ViewDragHelper.b f27507k = new a();

    private class SettleRunnable implements Runnable {
        private final boolean dismiss;
        private final View view;

        SettleRunnable(View view, boolean z10) {
            this.view = view;
            this.dismiss = z10;
        }

        @Override
        public void run() {
            c cVar;
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.f27497a;
            if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.view, this);
            } else {
                if (!this.dismiss || (cVar = SwipeDismissBehavior.this.f27498b) == null) {
                    return;
                }
                cVar.a(this.view);
            }
        }
    }

    class a extends ViewDragHelper.b {

        private int f27508a;

        private int f27509b = -1;

        a() {
        }

        private boolean a(View view, float f10) {
            if (f10 == 0.0f) {
                return Math.abs(view.getLeft() - this.f27508a) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.f27504h);
            }
            boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
            int i10 = SwipeDismissBehavior.this.f27503g;
            if (i10 == 2) {
                return true;
            }
            if (i10 == 0) {
                if (z10) {
                    if (f10 >= 0.0f) {
                        return false;
                    }
                } else if (f10 <= 0.0f) {
                    return false;
                }
                return true;
            }
            if (i10 != 1) {
                return false;
            }
            if (z10) {
                if (f10 <= 0.0f) {
                    return false;
                }
            } else if (f10 >= 0.0f) {
                return false;
            }
            return true;
        }

        @Override
        public int clampViewPositionHorizontal(View view, int i10, int i11) {
            int width;
            int width2;
            int width3;
            boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
            int i12 = SwipeDismissBehavior.this.f27503g;
            if (i12 == 0) {
                if (z10) {
                    width = this.f27508a - view.getWidth();
                    width2 = this.f27508a;
                } else {
                    width = this.f27508a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i12 != 1) {
                width = this.f27508a - view.getWidth();
                width2 = view.getWidth() + this.f27508a;
            } else if (z10) {
                width = this.f27508a;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.f27508a - view.getWidth();
                width2 = this.f27508a;
            }
            return SwipeDismissBehavior.H(width, i10, width2);
        }

        @Override
        public int clampViewPositionVertical(View view, int i10, int i11) {
            return view.getTop();
        }

        @Override
        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override
        public void onViewCaptured(View view, int i10) {
            this.f27509b = i10;
            this.f27508a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                SwipeDismissBehavior.this.f27500d = true;
                parent.requestDisallowInterceptTouchEvent(true);
                SwipeDismissBehavior.this.f27500d = false;
            }
        }

        @Override
        public void onViewDragStateChanged(int i10) {
            c cVar = SwipeDismissBehavior.this.f27498b;
            if (cVar != null) {
                cVar.b(i10);
            }
        }

        @Override
        public void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
            float width = view.getWidth() * SwipeDismissBehavior.this.f27505i;
            float width2 = view.getWidth() * SwipeDismissBehavior.this.f27506j;
            float fAbs = Math.abs(i10 - this.f27508a);
            if (fAbs <= width) {
                view.setAlpha(1.0f);
            } else if (fAbs >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.G(0.0f, 1.0f - SwipeDismissBehavior.J(width, width2, fAbs), 1.0f));
            }
        }

        /* JADX WARN: Code duplicated, block: B:10:0x001d  */
        @Override
        public void onViewReleased(View view, float f10, float f11) {
            int i10;
            boolean z10;
            c cVar;
            this.f27509b = -1;
            int width = view.getWidth();
            if (a(view, f10)) {
                if (f10 >= 0.0f) {
                    int left = view.getLeft();
                    int i11 = this.f27508a;
                    if (left < i11) {
                        i10 = this.f27508a - width;
                    } else {
                        i10 = i11 + width;
                    }
                } else {
                    i10 = this.f27508a - width;
                }
                z10 = true;
            } else {
                i10 = this.f27508a;
                z10 = false;
            }
            if (SwipeDismissBehavior.this.f27497a.settleCapturedViewAt(i10, view.getTop())) {
                ViewCompat.postOnAnimation(view, new SettleRunnable(view, z10));
            } else {
                if (!z10 || (cVar = SwipeDismissBehavior.this.f27498b) == null) {
                    return;
                }
                cVar.a(view);
            }
        }

        @Override
        public boolean tryCaptureView(View view, int i10) {
            int i11 = this.f27509b;
            return (i11 == -1 || i11 == i10) && SwipeDismissBehavior.this.F(view);
        }
    }

    class b implements AccessibilityViewCommand {
        b() {
        }

        @Override
        public boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
            if (!SwipeDismissBehavior.this.F(view)) {
                return false;
            }
            boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
            int i10 = SwipeDismissBehavior.this.f27503g;
            ViewCompat.offsetLeftAndRight(view, (!(i10 == 0 && z10) && (i10 != 1 || z10)) ? view.getWidth() : -view.getWidth());
            view.setAlpha(0.0f);
            c cVar = SwipeDismissBehavior.this.f27498b;
            if (cVar != null) {
                cVar.a(view);
            }
            return true;
        }
    }

    public interface c {
        void a(View view);

        void b(int i10);
    }

    static float G(float f10, float f11, float f12) {
        return Math.min(Math.max(f10, f11), f12);
    }

    static int H(int i10, int i11, int i12) {
        return Math.min(Math.max(i10, i11), i12);
    }

    private void I(ViewGroup viewGroup) {
        if (this.f27497a == null) {
            this.f27497a = this.f27502f ? ViewDragHelper.create(viewGroup, this.f27501e, this.f27507k) : ViewDragHelper.create(viewGroup, this.f27507k);
        }
    }

    static float J(float f10, float f11, float f12) {
        return (f12 - f10) / (f11 - f10);
    }

    private void O(View view) {
        ViewCompat.removeAccessibilityAction(view, 1048576);
        if (F(view)) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new b());
        }
    }

    @Override
    public boolean D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (this.f27497a == null) {
            return false;
        }
        if (this.f27500d && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.f27497a.processTouchEvent(motionEvent);
        return true;
    }

    public boolean F(View view) {
        return true;
    }

    public void K(float f10) {
        this.f27506j = G(0.0f, f10, 1.0f);
    }

    public void L(c cVar) {
        this.f27498b = cVar;
    }

    public void M(float f10) {
        this.f27505i = G(0.0f, f10, 1.0f);
    }

    public void N(int i10) {
        this.f27503g = i10;
    }

    @Override
    public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean zIsPointInChildBounds = this.f27499c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zIsPointInChildBounds = coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f27499c = zIsPointInChildBounds;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f27499c = false;
        }
        if (!zIsPointInChildBounds) {
            return false;
        }
        I(coordinatorLayout);
        return !this.f27500d && this.f27497a.shouldInterceptTouchEvent(motionEvent);
    }

    @Override
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i10) {
        boolean zL = super.l(coordinatorLayout, view, i10);
        if (ViewCompat.getImportantForAccessibility(view) == 0) {
            ViewCompat.setImportantForAccessibility(view, 1);
            O(view);
        }
        return zL;
    }
}
