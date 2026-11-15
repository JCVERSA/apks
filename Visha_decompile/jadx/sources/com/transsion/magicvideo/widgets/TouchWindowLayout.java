package com.transsion.magicvideo.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Display;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.WindowInfoViewModel;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoPlayerActivity;
import com.transsion.magicvideo.model.VideoControlModel;
import com.transsion.magicvideo.services.VideosService;
import com.transsion.utils.BaseConstant;
import com.transsion.widgets.ScaleTouchView.OnScaleSurfaceListener;
import defpackage.b39;
import defpackage.by3;
import defpackage.d39;
import defpackage.mb8;
import defpackage.raa;
import defpackage.woc;
import defpackage.yt8;

public class TouchWindowLayout extends MotionLayout {
    public static final int FLAGS_MOVE_VERTICAL = 6;
    public static final int FLAGS_MOVE_VERTICAL_HORIZON = 7;
    public static final int FLAG_MOVE_DISABLE = 4096;
    public static final int FLAG_MOVE_DOWN = 8;
    public static final int FLAG_MOVE_HORIZON = 1;
    public static final int FLAG_MOVE_UP = 16;
    public static final int FLAG_MOVE_VERTICAL_LEFT = 2;
    public static final int FLAG_MOVE_VERTICAL_RIGHT = 4;
    public static final int FLAG_MOVING = 32;
    public ScaleGestureDetector A;
    public ViewGroup B;
    public VideosService C;
    public Point D;
    public final RectF E;
    public final RectF F;
    public final RectF G;
    public final RectF H;
    public boolean I;
    public boolean J;
    public boolean K;
    public boolean L;
    public boolean M;
    public boolean N;
    public boolean O;
    public int P;
    public int Q;
    public boolean R;
    public boolean S;
    public boolean T;
    public PointF U;
    public PointF V;
    public Point W;
    public by3 a0;
    public f b;
    public boolean b0;
    public c c;
    public long d;
    public int e;
    public boolean f;
    public boolean g;
    public boolean h;
    public int i;
    public int j;
    public int k;
    public Context l;
    public int m;
    public boolean n;
    public long o;
    public OnScaleSurfaceListener p;
    public e q;
    public WindowInfoViewModel r;
    public VideoControlModel s;
    public int t;
    public float u;
    public int v;
    public int w;
    public float x;
    public Observer y;
    public GestureDetector z;

    public enum ENUM_CHANGE_PLAY_SPEED_MODE {
        NO_CHANGE(0),
        PLAY_SPEED_FIXED(1),
        PLAY_SPEED_CHANGING(2);

        public int value;

        ENUM_CHANGE_PLAY_SPEED_MODE(int i) {
            this.value = i;
        }
    }

    public class a extends GestureDetector.SimpleOnGestureListener {
        public a() {
        }

        @Override
        public boolean onDoubleTap(MotionEvent motionEvent) {
            if (!TouchWindowLayout.this.h()) {
                return true;
            }
            if (TouchWindowLayout.this.k()) {
                return super.onDoubleTap(motionEvent);
            }
            TouchWindowLayout.this.d = System.currentTimeMillis();
            TouchWindowLayout.this.q.c(true);
            TouchWindowLayout.this.x(motionEvent);
            return true;
        }

        @Override
        public boolean onDown(MotionEvent motionEvent) {
            TouchWindowLayout.this.q.b();
            return super.onDown(motionEvent);
        }

        @Override
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (TouchWindowLayout.this.u()) {
                return false;
            }
            OnScaleSurfaceListener onScaleSurfaceListener = TouchWindowLayout.this.p;
            return onScaleSurfaceListener != null ? onScaleSurfaceListener.onFling(motionEvent, motionEvent2, f, f2) : super.onFling(motionEvent, motionEvent2, f, f2);
        }

        @Override
        public void onLongPress(MotionEvent motionEvent) {
            TouchWindowLayout.this.q.d(true);
            TouchWindowLayout.this.longPressChangeSpeed(motionEvent);
            super.onLongPress(motionEvent);
        }

        @Override
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (TouchWindowLayout.this.u()) {
                return false;
            }
            TouchWindowLayout touchWindowLayout = TouchWindowLayout.this;
            return (touchWindowLayout.p == null || !touchWindowLayout.q.a()) ? super.onScroll(motionEvent, motionEvent2, f, f2) : TouchWindowLayout.this.p.onScroll(motionEvent, motionEvent2, f, f2);
        }

        @Override
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            TouchWindowLayout.this.y(motionEvent);
            return true;
        }

        @Override
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return super.onSingleTapUp(motionEvent);
        }
    }

    public class b extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        public b() {
        }

        @Override
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            TouchWindowLayout touchWindowLayout = TouchWindowLayout.this;
            return (touchWindowLayout.p == null || !touchWindowLayout.q.a()) ? TouchWindowLayout.this.onScreenScale(scaleGestureDetector) : TouchWindowLayout.this.p.onScale(scaleGestureDetector);
        }

        @Override
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            TouchWindowLayout touchWindowLayout = TouchWindowLayout.this;
            return (touchWindowLayout.p == null || !touchWindowLayout.q.a()) ? TouchWindowLayout.this.onScreenScaleBegin(scaleGestureDetector) : TouchWindowLayout.this.p.onScaleBegin(scaleGestureDetector);
        }

        @Override
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            TouchWindowLayout touchWindowLayout = TouchWindowLayout.this;
            if (touchWindowLayout.p != null && touchWindowLayout.q.a()) {
                TouchWindowLayout.this.p.onScaleEnd(scaleGestureDetector);
            }
            TouchWindowLayout.this.onScreenEnd(scaleGestureDetector);
        }
    }

    public interface c {
        void a();

        void b(boolean z);

        void c(int i, boolean z);

        void d();

        void e();

        void f(boolean z, boolean z2);
    }

    public interface d {
    }

    public static class e {
        public boolean a;
        public boolean b;
        public boolean c;
        public boolean d;
        public boolean e;

        public boolean a() {
            return (this.a || this.b || this.c || this.d) ? false : true;
        }

        public void b() {
            this.a = false;
            this.b = false;
            this.c = false;
            this.d = false;
            this.e = false;
        }

        public void c(boolean z) {
            this.d = z;
        }

        public void d(boolean z) {
            this.a = z;
        }
    }

    public interface f {
        void a();
    }

    public interface g {
        void a();

        void b(BaseQuickAdapter baseQuickAdapter, View view, int i);

        void c();

        void d();

        void e();

        void f();

        void g(RouterBean routerBean);

        void h();

        void i();

        void j();

        void k();

        void l();

        void m();

        void n();

        void o();

        void p();
    }

    public TouchWindowLayout(Context context) {
        super(context);
        this.f = true;
        this.g = false;
        this.i = ENUM_CHANGE_PLAY_SPEED_MODE.NO_CHANGE.value;
        this.v = 0;
        this.y = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.onWindowInfoChange((woc) obj);
            }
        };
        this.D = new Point();
        this.E = new RectF();
        this.F = new RectF();
        this.G = new RectF();
        this.H = new RectF();
        this.U = new PointF();
        this.V = new PointF();
        this.W = new Point();
        this.a0 = new by3(0);
        init(context);
    }

    public void A(boolean z) {
        l(this.l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean B() {
        WindowInfoViewModel windowInfoViewModel = this.r;
        if (windowInfoViewModel == null || windowInfoViewModel.a.getValue() == 0) {
            return false;
        }
        woc wocVar = (woc) this.r.a.getValue();
        if (!wocVar.g || wocVar.c) {
            return false;
        }
        int i = wocVar.a;
        return i == 0 || i == 1;
    }

    public final boolean C() {
        return (b39.a(this.l) == BaseConstant.SCREEN_TYPE.FOLD && !this.O && this.h) ? false : true;
    }

    public void D() {
        float bottom;
        float top;
        if (this.b != null) {
            return;
        }
        float f2 = this.U.y - this.V.y;
        float height = f2 / getHeight();
        if (f2 > 0.0f) {
            bottom = this.U.y;
            top = getTop();
        } else {
            bottom = getBottom();
            top = this.U.y;
        }
        float f3 = bottom - top;
        float f4 = this.x;
        if (f3 > f4) {
            f3 = f4;
        }
        if (f3 != 0.0f) {
            height = f2 / f3;
        }
        int i = this.a0.b(16) ? 16 : 32;
        if (this.a0.b(2)) {
            if (this.a0.c(8)) {
                p(8, 0.0f);
            }
            p(i, height);
        }
        if (this.a0.b(4)) {
            if (this.a0.c(8)) {
                s(8, 0.0f);
            }
            s(i, height);
        }
    }

    public void bindWindow(VideosService videosService, ViewGroup viewGroup) {
        this.C = videosService;
        this.B = viewGroup;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 3) {
                    r(3);
                }
            } else if (motionEvent.getPointerCount() == 1) {
                r(1);
            }
        } else if (motionEvent.getPointerCount() == 1) {
            r(0);
            z(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void g(Point point) {
        int i;
        int[] systemGestureInsetsPx = getSystemGestureInsetsPx();
        RectF rectF = this.F;
        float f2 = rectF.bottom;
        int i2 = systemGestureInsetsPx[1];
        if (f2 < i2) {
            rectF.set(0.0f, 0.0f, point.x, i2);
        }
        RectF rectF2 = this.G;
        float f3 = rectF2.right;
        int i3 = systemGestureInsetsPx[0];
        if (f3 < i3) {
            rectF2.set(0.0f, 0.0f, i3, point.y);
        }
        float fWidth = this.H.width();
        int i4 = systemGestureInsetsPx[2];
        if (fWidth < i4) {
            RectF rectF3 = this.H;
            int i5 = point.x;
            rectF3.set(i5 - i4, 0.0f, i5, point.y);
        }
        if (!this.I || (i = systemGestureInsetsPx[3]) <= 0) {
            return;
        }
        int i6 = point.y - i;
        if (this.E.isEmpty() || this.E.top > i6) {
            this.E.set(0.0f, i6, point.x, point.y);
        }
    }

    public int getNavbarSize(String str) {
        return yt8.b(str, getResources());
    }

    public OnScaleSurfaceListener getOnScaleSurfaceListener() {
        return this.p;
    }

    public int[] getSystemGestureInsetsPx() {
        int[] iArr = new int[4];
        iArr[1] = Math.max(this.v, (int) ((getResources().getDisplayMetrics().density * 48.0f) + 0.5f));
        WindowInsets rootWindowInsets = getRootWindowInsets();
        if (rootWindowInsets != null) {
            if (Build.VERSION.SDK_INT >= 30) {
                Insets insets = rootWindowInsets.getInsets(WindowInsets.Type.systemGestures());
                Insets insets2 = rootWindowInsets.getInsets(WindowInsets.Type.statusBars());
                Insets insets3 = rootWindowInsets.getInsets(WindowInsets.Type.navigationBars());
                Insets insets4 = rootWindowInsets.getInsets(WindowInsets.Type.mandatorySystemGestures());
                iArr[0] = Math.max(insets.left, insets4.left);
                iArr[1] = Math.max(iArr[1], Math.max(insets2.top, Math.max(insets.top, insets4.top)));
                iArr[2] = Math.max(insets.right, insets4.right);
                iArr[3] = Math.max(insets3.bottom, Math.max(insets.bottom, insets4.bottom));
            } else {
                iArr[0] = Math.max(iArr[0], rootWindowInsets.getSystemWindowInsetLeft());
                iArr[1] = Math.max(iArr[1], rootWindowInsets.getSystemWindowInsetTop());
                iArr[2] = Math.max(iArr[2], rootWindowInsets.getSystemWindowInsetRight());
                iArr[3] = Math.max(iArr[3], rootWindowInsets.getSystemWindowInsetBottom());
            }
        }
        return iArr;
    }

    public f getmUnLockListener() {
        return this.b;
    }

    public boolean h() {
        return !this.h;
    }

    public void hideAllViews() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != null) {
                childAt.setVisibility(8);
            }
        }
    }

    public boolean i() {
        return !this.h;
    }

    public void init(Context context) {
        setClickable(true);
        this.q = new e();
        this.l = context;
        l(context);
        this.z = new GestureDetector(getContext(), new a());
        this.A = new ScaleGestureDetector(getContext(), new b());
        this.u = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.w = getResources().getDimensionPixelSize(R.dimen.floating_window_min_margin);
        this.P = getResources().getDimensionPixelSize(R.dimen.tranthunder_back_region);
        this.Q = getResources().getDimensionPixelSize(R.dimen.gesture_edge_region);
        this.x = getResources().getDimensionPixelSize(R.dimen.finger_move_max_dist);
        this.m = getResources().getDimensionPixelSize(R.dimen.gesture_speed_item_height);
    }

    public void initTouchBounds() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService(WindowManager.class)).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        if (this.I) {
            this.E.set(0.0f, 0.0f, point.x, point.y);
            int navbarSize = getNavbarSize("navigation_bar_gesture_height");
            RectF rectF = this.E;
            rectF.top = rectF.bottom - navbarSize;
        }
        g(point);
    }

    public boolean isInDoubleTapMode() {
        boolean z = System.currentTimeMillis() - this.o < 300 && System.currentTimeMillis() - this.o > 50;
        if (z) {
            this.o = System.currentTimeMillis();
        }
        return z;
    }

    public boolean isSwipeTouchRegion(MotionEvent motionEvent) {
        return (this.E.contains(motionEvent.getRawX(), motionEvent.getRawY()) || this.F.contains(motionEvent.getRawX(), motionEvent.getRawY())) || (this.G.contains(motionEvent.getRawX(), motionEvent.getRawY()) || this.H.contains(motionEvent.getRawX(), motionEvent.getRawY()));
    }

    public void j() {
        if (this.a0.c(8)) {
            q(8, 0.0f);
        }
        q(this.a0.b(16) ? 16 : 32, (this.V.x - this.U.x) / getWidth());
    }

    public final boolean k() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.d;
        Log.w("TouchWindowLayout", "ingoreDoubleClickEvent interval:" + jCurrentTimeMillis);
        return Math.abs(jCurrentTimeMillis) < 500;
    }

    public final void l(Context context) {
        this.j = d39.b(context);
        this.k = d39.c(context);
        this.v = raa.e();
    }

    public void longPressChangeSpeed(MotionEvent motionEvent) {
        if (this.b != null || this.c == null) {
            return;
        }
        boolean z = true;
        this.K = this.E.contains(motionEvent.getRawX(), motionEvent.getRawY()) || this.F.contains(motionEvent.getRawX(), motionEvent.getRawY());
        if (!this.G.contains(motionEvent.getRawX(), motionEvent.getRawY()) && !this.H.contains(motionEvent.getRawX(), motionEvent.getRawY())) {
            z = false;
        }
        if (this.K || z) {
            return;
        }
        if (!C()) {
            this.c.e();
            this.i = ENUM_CHANGE_PLAY_SPEED_MODE.PLAY_SPEED_FIXED.value;
        } else if (motionEvent.getX() < (this.k * 2.0f) / 3.0f) {
            this.c.e();
            this.i = ENUM_CHANGE_PLAY_SPEED_MODE.PLAY_SPEED_FIXED.value;
        } else {
            moveToChangeSpeed(motionEvent.getY());
            this.i = ENUM_CHANGE_PLAY_SPEED_MODE.PLAY_SPEED_CHANGING.value;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean m() {
        WindowInfoViewModel windowInfoViewModel = this.r;
        return (windowInfoViewModel == null || windowInfoViewModel.a.getValue() == 0 || ((woc) this.r.a.getValue()).c || ((woc) this.r.a.getValue()).f || !((woc) this.r.a.getValue()).g || ((woc) this.r.a.getValue()).a != 3) ? false : true;
    }

    public void moveToChangeSpeed(float f2) {
        int iL = com.transsion.utils.a.l(this.l);
        boolean z = f2 < ((float) (iL >> 1));
        if (m()) {
            int iD = ((iL - com.transsion.utils.a.d(this.l, 40.0f)) - (this.m * 8)) / 4;
            if (z) {
                this.t = iD;
            } else {
                this.t = (iL / 2) + com.transsion.utils.a.d(this.l, 20.0f) + iD;
            }
        }
        int i = (int) ((f2 - this.t) / this.m);
        Log.i("TouchWindowLayout", "moveToChangeSpeed  y=" + f2 + ",mGestureSpeedStartY=" + this.t + ",position:" + i);
        int size = mb8.c().b().size();
        if (size == 0) {
            Log.w("TouchWindowLayout", "moveToChangeSpeed  gestureSpeedListSize == 0");
            return;
        }
        int i2 = i >= 0 ? i : 0;
        if (i2 >= size) {
            i2 = size - 1;
        }
        this.c.c(i2, z);
    }

    public void multiWindowModeChanged(boolean z) {
        this.J = z;
        initTouchBounds();
    }

    public boolean n(MotionEvent motionEvent) {
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        return this.E.contains(rawX, rawY) || this.F.contains(rawX, rawY) || this.G.contains(rawX, rawY) || this.H.contains(rawX, rawY);
    }

    public final void o(int i) {
        OnScaleSurfaceListener onScaleSurfaceListener = this.p;
        if (onScaleSurfaceListener != null) {
            onScaleSurfaceListener.onPointerCount(i);
        }
    }

    @Override
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        WindowInsets windowInsetsOnApplyWindowInsets = super.onApplyWindowInsets(windowInsets);
        initTouchBounds();
        return windowInsetsOnApplyWindowInsets;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Context context = this.l;
        if (context instanceof VideoPlayerActivity) {
            VideoPlayerActivity videoPlayerActivity = (VideoPlayerActivity) context;
            WindowInfoViewModel windowInfoViewModel = (WindowInfoViewModel) new ViewModelProvider(videoPlayerActivity).get(WindowInfoViewModel.class);
            this.r = windowInfoViewModel;
            windowInfoViewModel.a.observe(videoPlayerActivity, this.y);
            this.s = (VideoControlModel) new ViewModelProvider(videoPlayerActivity).get(VideoControlModel.class);
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        A(configuration.orientation == 2);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WindowInfoViewModel windowInfoViewModel = this.r;
        if (windowInfoViewModel != null) {
            windowInfoViewModel.a.removeObserver(this.y);
        }
    }

    public void onScreenClick(MotionEvent motionEvent) {
    }

    public void onScreenEnd(ScaleGestureDetector scaleGestureDetector) {
    }

    public boolean onScreenScale(ScaleGestureDetector scaleGestureDetector) {
        return false;
    }

    public boolean onScreenScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0078  */
    /* JADX WARN: Code duplicated, block: B:78:0x0128  */
    /* JADX WARN: Code duplicated, block: B:79:0x012c  */
    /* JADX WARN: Code duplicated, block: B:81:0x0134  */
    /* JADX WARN: Code duplicated, block: B:83:0x013c  */
    /* JADX WARN: Code duplicated, block: B:85:0x014c  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        int i2;
        OnScaleSurfaceListener onScaleSurfaceListener;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (this.F.isEmpty()) {
                initTouchBounds();
            }
            this.L = n(motionEvent);
        }
        if (this.L) {
            if (actionMasked == 1 || actionMasked == 3) {
                this.L = false;
                this.K = false;
            }
            return false;
        }
        if (actionMasked == 0 && (onScaleSurfaceListener = this.p) != null && onScaleSurfaceListener.isTouchDrag(motionEvent)) {
            return false;
        }
        if (motionEvent.getPointerCount() <= 2) {
            this.z.onTouchEvent(motionEvent);
        }
        if (motionEvent.getPointerCount() <= 2 && !u()) {
            this.A.onTouchEvent(motionEvent);
        }
        this.V.set(motionEvent.getX(), motionEvent.getY());
        int actionMasked2 = motionEvent.getActionMasked();
        if (actionMasked2 == 0) {
            o(motionEvent.getPointerCount());
            this.e = 0;
            this.U.set(motionEvent.getX(), motionEvent.getY());
            this.K = this.E.contains(motionEvent.getRawX(), motionEvent.getRawY()) || this.F.contains(motionEvent.getRawX(), motionEvent.getRawY());
            boolean z = this.G.contains(motionEvent.getRawX(), motionEvent.getRawY()) || this.H.contains(motionEvent.getRawX(), motionEvent.getRawY());
            if (this.K || z) {
                Log.d("TouchWindowLayout", "ACTION_DOWN SwipeTouchRegion ");
                return false;
            }
            float f2 = this.U.x;
            this.N = f2 <= ((float) this.P) || f2 >= ((float) (getWidth() - this.P)) || this.U.y >= ((float) (getHeight() - this.P));
            updateTouchDownWindowPosition();
            if (motionEvent.getPointerCount() == 1) {
                this.a0.f(0);
                t();
                if (!this.M) {
                    this.R = false;
                } else if (this.I || !this.O) {
                    float f3 = this.U.x;
                    this.R = f3 <= ((float) this.P) || f3 >= ((float) (getRight() - this.P));
                } else {
                    this.R = this.U.x < ((float) this.P);
                }
            }
            if (isInDoubleTapMode()) {
                if (this.U.x < getWidth() / 3) {
                    this.c.f(true, true);
                } else if (this.U.x >= (getWidth() * 2) / 3) {
                    this.c.f(false, true);
                }
            }
        } else if (actionMasked2 == 1) {
            o(motionEvent.getPointerCount() - 1);
            i = this.i;
            i2 = ENUM_CHANGE_PLAY_SPEED_MODE.NO_CHANGE.value;
            if (i != i2) {
                this.i = i2;
                this.c.d();
            }
            w();
            this.K = false;
        } else if (actionMasked2 != 2) {
            if (actionMasked2 == 3) {
                o(motionEvent.getPointerCount() - 1);
                i = this.i;
                i2 = ENUM_CHANGE_PLAY_SPEED_MODE.NO_CHANGE.value;
                if (i != i2) {
                    this.i = i2;
                    this.c.d();
                }
                w();
                this.K = false;
            } else if (actionMasked2 == 5) {
                o(motionEvent.getPointerCount());
                w();
                this.a0.a(4096);
            } else if (actionMasked2 == 6) {
                o(motionEvent.getPointerCount() - 1);
                i = this.i;
                i2 = ENUM_CHANGE_PLAY_SPEED_MODE.NO_CHANGE.value;
                if (i != i2) {
                    this.i = i2;
                    this.c.d();
                }
                w();
                this.K = false;
            } else if (actionMasked2 == 261) {
                o(motionEvent.getPointerCount());
                w();
                this.a0.a(4096);
            }
        } else if (i() && !this.a0.b(4096)) {
            int i3 = this.e + 1;
            this.e = i3;
            boolean z2 = this.N;
            if (((!z2 || i3 <= 4) && z2) || this.a0.d(7)) {
                if (this.a0.b(1)) {
                    j();
                } else if (this.a0.d(6)) {
                    D();
                }
                updateWindowPosition();
            } else {
                int i4 = this.i;
                if (i4 != ENUM_CHANGE_PLAY_SPEED_MODE.PLAY_SPEED_FIXED.value) {
                    if (i4 == ENUM_CHANGE_PLAY_SPEED_MODE.PLAY_SPEED_CHANGING.value && C()) {
                        moveToChangeSpeed(this.V.y);
                    } else {
                        float fAbs = Math.abs(this.V.x - this.U.x);
                        float fAbs2 = Math.abs(this.V.y - this.U.y);
                        float f4 = this.u;
                        if (fAbs > f4 || fAbs2 > f4) {
                            if (fAbs > fAbs2) {
                                this.a0.a(1);
                            } else if (!this.R) {
                                this.a0.a(this.U.x > ((float) (getWidth() / 2)) ? 4 : 2);
                            }
                            this.a0.a(8);
                            if (this.a0.b(1)) {
                                j();
                            } else if (this.a0.d(6)) {
                                D();
                            }
                            updateWindowPosition();
                        }
                    }
                }
            }
        }
        return true;
    }

    public void onWindowInfoChange(woc wocVar) {
        VideoControlModel videoControlModel = this.s;
        if (videoControlModel != null) {
            videoControlModel.isReleaseTouchEvent.setValue(Boolean.TRUE);
        }
        int iL = com.transsion.utils.a.l(this.l);
        int i = wocVar.b;
        int i2 = wocVar.a;
        if (i2 == 0 || i2 == 1) {
            this.t = (iL - (this.m * 4)) / 2;
            return;
        }
        if (i2 == 2) {
            if (i == 3) {
                v();
            }
            this.t = (iL - (this.m * 4)) / 2;
        } else {
            if (i2 != 3) {
                this.j = com.transsion.utils.a.l(this.l);
                return;
            }
            if (i == 2) {
                v();
                cancelLongPress();
            }
            if (wocVar.g) {
                this.t = (((iL - com.transsion.utils.a.d(this.l, 40.0f)) / 2) - (this.m * 4)) / 2;
            } else {
                this.t = (iL - (this.m * 4)) / 2;
            }
        }
    }

    public void p(int i, float f2) {
    }

    public void q(int i, float f2) {
    }

    public void r(int i) {
    }

    public void requestedOrientation(boolean z) {
        if (z != this.O) {
            this.O = z;
            A(z);
        }
        initTouchBounds();
    }

    public void s(int i, float f2) {
    }

    public void setForceHideUIState(boolean z) {
        if (this.T != z) {
            Log.w("TouchWindowLayout", "setForceHideUIState " + z);
            this.T = z;
        }
    }

    public void setForceShowUIState(boolean z) {
        if (this.S != z) {
            Log.w("TouchWindowLayout", "setVideoErrorState " + z);
            this.S = z;
        }
    }

    public void setInGuideMode(boolean z) {
        this.g = z;
    }

    public void setIsHadFinishedGuide(boolean z) {
        this.f = z;
    }

    @SuppressLint({"UseCompatLoadingForDrawables"})
    public void setMusicMode(boolean z) {
        this.h = z;
    }

    public void setNavigationMode(boolean z) {
        this.I = z;
        initTouchBounds();
    }

    public void setOnScaleSurfaceListener(OnScaleSurfaceListener onScaleSurfaceListener) {
        this.p = onScaleSurfaceListener;
    }

    public void setPictureInPictureModeChanged(boolean z) {
        this.n = z;
    }

    public void setRetreatForwardListener(c cVar) {
        this.c = cVar;
    }

    public void setTouchPositionListener(d dVar) {
    }

    public void setmUnLockListener(f fVar) {
        this.b = fVar;
    }

    public void showAllView() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != null) {
                childAt.setVisibility(0);
            }
        }
    }

    public void t() {
    }

    public final boolean u() {
        return this.b != null || this.g || this.h;
    }

    public void updateTouchDownWindowPosition() {
        ViewGroup viewGroup = this.B;
        if (viewGroup == null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) viewGroup.getLayoutParams();
        this.W.set(layoutParams.x, layoutParams.y);
    }

    public void updateWindowPosition() {
        if (this.C == null) {
            return;
        }
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) this.B.getLayoutParams();
        PointF pointF = this.V;
        float f2 = pointF.x;
        PointF pointF2 = this.U;
        int i = (int) (f2 - pointF2.x);
        int i2 = (int) (pointF.y - pointF2.y);
        Point point = this.W;
        layoutParams.x = point.x + i;
        layoutParams.y = point.y + i2;
        raa.d(this.D);
        int width = this.B.getWidth();
        int height = this.B.getHeight();
        int i3 = layoutParams.x;
        if (i3 < 0) {
            layoutParams.x = 0;
        } else {
            int i4 = i3 + width;
            int i5 = this.D.x;
            if (i4 > i5) {
                layoutParams.x = i5 - width;
            }
        }
        int i6 = layoutParams.y;
        int i7 = this.v;
        if (i6 < (-i7)) {
            layoutParams.y = -i7;
        } else {
            int i8 = i6 + height;
            int i9 = this.D.y;
            if (i8 > i9) {
                layoutParams.y = i9 - height;
            }
        }
        windowManager.updateViewLayout(this.B, layoutParams);
    }

    public final void v() {
        int i = this.i;
        int i2 = ENUM_CHANGE_PLAY_SPEED_MODE.NO_CHANGE.value;
        if (i != i2) {
            this.i = i2;
            this.c.d();
        }
        w();
    }

    public final void w() {
        if (this.a0.d(7)) {
            this.a0.a(16);
            if (this.a0.b(1)) {
                j();
            }
            if (this.a0.d(6)) {
                D();
            }
            this.a0.e(23);
            this.a0.a(4096);
        }
    }

    public final void x(MotionEvent motionEvent) {
        if (this.f && this.b == null && this.c != null && !this.R) {
            boolean z = this.U.x < ((float) (getWidth() / 3));
            if (this.U.x > getWidth() / 3 && this.U.x < (getWidth() * 2) / 3) {
                this.c.a();
            } else {
                this.o = System.currentTimeMillis();
                this.c.f(z, true);
            }
        }
    }

    public final void y(MotionEvent motionEvent) {
        if (System.currentTimeMillis() - this.o > 300) {
            onScreenClick(motionEvent);
        }
    }

    public final void z(MotionEvent motionEvent) {
    }

    public TouchWindowLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = true;
        this.g = false;
        this.i = ENUM_CHANGE_PLAY_SPEED_MODE.NO_CHANGE.value;
        this.v = 0;
        this.y = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.onWindowInfoChange((woc) obj);
            }
        };
        this.D = new Point();
        this.E = new RectF();
        this.F = new RectF();
        this.G = new RectF();
        this.H = new RectF();
        this.U = new PointF();
        this.V = new PointF();
        this.W = new Point();
        this.a0 = new by3(0);
        init(context);
    }

    public TouchWindowLayout(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = true;
        this.g = false;
        this.i = ENUM_CHANGE_PLAY_SPEED_MODE.NO_CHANGE.value;
        this.v = 0;
        this.y = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.onWindowInfoChange((woc) obj);
            }
        };
        this.D = new Point();
        this.E = new RectF();
        this.F = new RectF();
        this.G = new RectF();
        this.H = new RectF();
        this.U = new PointF();
        this.V = new PointF();
        this.W = new Point();
        this.a0 = new by3(0);
        init(context);
    }
}
