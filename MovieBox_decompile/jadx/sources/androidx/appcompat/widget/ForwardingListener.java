package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;

public abstract class ForwardingListener implements View.OnTouchListener, View.OnAttachStateChangeListener {

    private final float f1463a;

    private final int f1464b;

    private final int f1465c;

    final View f1466d;

    private Runnable f1467e;

    private Runnable f1468f;

    private boolean f1469g;

    private int f1470h;

    private final int[] f1471i = new int[2];

    private class DisallowIntercept implements Runnable {
        DisallowIntercept() {
        }

        @Override
        public void run() {
            ViewParent parent = ForwardingListener.this.f1466d.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    private class TriggerLongPress implements Runnable {
        TriggerLongPress() {
        }

        @Override
        public void run() {
            ForwardingListener.this.e();
        }
    }

    public ForwardingListener(View view) {
        this.f1466d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1463a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f1464b = tapTimeout;
        this.f1465c = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    private void a() {
        Runnable runnable = this.f1468f;
        if (runnable != null) {
            this.f1466d.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f1467e;
        if (runnable2 != null) {
            this.f1466d.removeCallbacks(runnable2);
        }
    }

    private boolean f(MotionEvent motionEvent) {
        DropDownListView dropDownListView;
        View view = this.f1466d;
        androidx.appcompat.view.menu.o oVarB = b();
        if (oVarB == null || !oVarB.a() || (dropDownListView = (DropDownListView) oVarB.o()) == null || !dropDownListView.isShown()) {
            return false;
        }
        MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        i(view, motionEventObtainNoHistory);
        j(dropDownListView, motionEventObtainNoHistory);
        boolean zOnForwardedEvent = dropDownListView.onForwardedEvent(motionEventObtainNoHistory, this.f1470h);
        motionEventObtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        return zOnForwardedEvent && (actionMasked != 1 && actionMasked != 3);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003d  */
    private boolean g(MotionEvent motionEvent) {
        View view = this.f1466d;
        if (!view.isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1470h = motionEvent.getPointerId(0);
            if (this.f1467e == null) {
                this.f1467e = new DisallowIntercept();
            }
            view.postDelayed(this.f1467e, this.f1464b);
            if (this.f1468f == null) {
                this.f1468f = new TriggerLongPress();
            }
            view.postDelayed(this.f1468f, this.f1465c);
        } else if (actionMasked == 1) {
            a();
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f1470h);
            if (iFindPointerIndex >= 0 && !h(view, motionEvent.getX(iFindPointerIndex), motionEvent.getY(iFindPointerIndex), this.f1463a)) {
                a();
                view.getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            }
        } else if (actionMasked == 3) {
            a();
        }
        return false;
    }

    private static boolean h(View view, float f10, float f11, float f12) {
        float f13 = -f12;
        return f10 >= f13 && f11 >= f13 && f10 < ((float) (view.getRight() - view.getLeft())) + f12 && f11 < ((float) (view.getBottom() - view.getTop())) + f12;
    }

    private boolean i(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1471i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    private boolean j(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1471i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    public abstract androidx.appcompat.view.menu.o b();

    protected abstract boolean c();

    protected boolean d() {
        androidx.appcompat.view.menu.o oVarB = b();
        if (oVarB == null || !oVarB.a()) {
            return true;
        }
        oVarB.dismiss();
        return true;
    }

    void e() {
        a();
        View view = this.f1466d;
        if (view.isEnabled() && !view.isLongClickable() && c()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
            this.f1469g = true;
        }
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z10;
        boolean z11 = this.f1469g;
        if (z11) {
            z10 = f(motionEvent) || !d();
        } else {
            z10 = g(motionEvent) && c();
            if (z10) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f1466d.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
        this.f1469g = z10;
        return z10 || z11;
    }

    @Override
    public void onViewAttachedToWindow(View view) {
    }

    @Override
    public void onViewDetachedFromWindow(View view) {
        this.f1469g = false;
        this.f1470h = -1;
        Runnable runnable = this.f1467e;
        if (runnable != null) {
            this.f1466d.removeCallbacks(runnable);
        }
    }
}
