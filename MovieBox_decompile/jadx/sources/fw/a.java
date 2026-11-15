package fw;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private boolean f60535a;

    private final Handler f60536b;

    private final ScaleGestureDetector f60537c;

    private final GestureDetector f60538d;

    public static final class C0734a extends GestureDetector.SimpleOnGestureListener {

        private float f60539a;

        private float f60540b;

        final c f60542d;

        C0734a(c cVar) {
            this.f60542d = cVar;
        }

        @Override
        public boolean onDown(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            this.f60539a = e10.getRawX();
            this.f60540b = e10.getRawY();
            return true;
        }

        @Override
        public boolean onScroll(MotionEvent motionEvent, MotionEvent e10, float f10, float f11) {
            Intrinsics.h(e10, "e2");
            if (a.this.f60535a) {
                return false;
            }
            this.f60542d.b(e10.getRawX() - this.f60539a, e10.getRawY() - this.f60540b);
            this.f60539a = e10.getRawX();
            this.f60540b = e10.getRawY();
            return true;
        }

        @Override
        public boolean onSingleTapConfirmed(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            this.f60542d.a();
            return false;
        }
    }

    public static final class b implements ScaleGestureDetector.OnScaleGestureListener {

        final c f60543a;

        final a f60544b;

        b(c cVar, a aVar) {
            this.f60543a = cVar;
            this.f60544b = aVar;
        }

        public static final void b(a aVar) {
            aVar.f60535a = false;
        }

        @Override
        public boolean onScale(ScaleGestureDetector detector) {
            Intrinsics.h(detector, "detector");
            this.f60543a.onScale(detector);
            return true;
        }

        @Override
        public boolean onScaleBegin(ScaleGestureDetector detector) {
            Intrinsics.h(detector, "detector");
            this.f60544b.f60535a = true;
            this.f60544b.f60536b.removeCallbacksAndMessages(null);
            return true;
        }

        @Override
        public void onScaleEnd(ScaleGestureDetector detector) {
            Intrinsics.h(detector, "detector");
            this.f60544b.f60536b.removeCallbacksAndMessages(null);
            Handler handler = this.f60544b.f60536b;
            final a aVar = this.f60544b;
            handler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    a.b.b(aVar);
                }
            }, 700L);
        }
    }

    public a(Context context, c videoFloatGestureListener) {
        Intrinsics.h(context, "context");
        Intrinsics.h(videoFloatGestureListener, "videoFloatGestureListener");
        this.f60536b = new Handler(Looper.getMainLooper());
        this.f60537c = new ScaleGestureDetector(context, new b(videoFloatGestureListener, this));
        this.f60538d = new GestureDetector(context, new C0734a(videoFloatGestureListener));
    }

    public final boolean d(MotionEvent ev2) {
        Intrinsics.h(ev2, "ev");
        return this.f60537c.onTouchEvent(ev2) || this.f60538d.onTouchEvent(ev2);
    }
}
