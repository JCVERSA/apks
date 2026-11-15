package com.transsion.shorttv.base.widget;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.blankj.utilcode.util.y;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    private Context f50864b;

    private View f50865c;

    private boolean f50867e;

    private boolean f50868f;

    private boolean f50869g;

    private GestureDetector f50870h;

    private a f50871i;

    private boolean f50872j;

    private View f50873k;

    private final String f50863a = e.class.getSimpleName();

    private boolean f50866d = true;

    private final GestureDetector.OnGestureListener f50874l = new c();

    public interface a {
        void a();

        void b(float f10, float f11);

        void c(float f10, float f11);

        void d(float f10, float f11);

        void e();

        void onDoubleTap(MotionEvent motionEvent);

        void onLongPress(MotionEvent motionEvent);
    }

    public static final class b implements GestureDetector.OnDoubleTapListener {
        b() {
        }

        @Override
        public boolean onDoubleTap(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            a aVar = e.this.f50871i;
            if (aVar == null) {
                return false;
            }
            aVar.onDoubleTap(e10);
            return false;
        }

        @Override
        public boolean onDoubleTapEvent(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            return false;
        }

        @Override
        public boolean onSingleTapConfirmed(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            a aVar = e.this.f50871i;
            if (aVar == null) {
                return false;
            }
            aVar.a();
            return false;
        }
    }

    public static final class c implements GestureDetector.OnGestureListener {

        private float f50876a;

        c() {
        }

        @Override
        public boolean onDown(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            this.f50876a = e10.getX();
            return true;
        }

        @Override
        public boolean onFling(MotionEvent motionEvent, MotionEvent e10, float f10, float f11) {
            Intrinsics.h(e10, "e2");
            return false;
        }

        @Override
        public void onLongPress(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            a aVar = e.this.f50871i;
            if (aVar != null) {
                aVar.onLongPress(e10);
            }
        }

        @Override
        public boolean onScroll(MotionEvent motionEvent, MotionEvent e10, float f10, float f11) {
            Intrinsics.h(e10, "e2");
            if (!e.this.f50866d || motionEvent == null) {
                return false;
            }
            if (Math.abs(f10) <= Math.abs(f11)) {
                boolean unused = e.this.f50867e;
            } else if (!e.this.f50869g && !e.this.f50868f) {
                e.this.f50867e = true;
            }
            if (e.this.f50867e) {
                a aVar = e.this.f50871i;
                if (aVar != null) {
                    aVar.b(motionEvent.getX(), e10.getX());
                }
            } else if (e.this.f50872j) {
                e eVar = e.this;
                View view = eVar.f50873k;
                Intrinsics.e(view);
                if (eVar.o(view, (int) this.f50876a)) {
                    e.this.f50869g = true;
                    a aVar2 = e.this.f50871i;
                    if (aVar2 != null) {
                        aVar2.c(motionEvent.getY(), e10.getY());
                    }
                } else {
                    e eVar2 = e.this;
                    View view2 = eVar2.f50873k;
                    Intrinsics.e(view2);
                    if (eVar2.q(view2, (int) this.f50876a)) {
                        e.this.f50868f = true;
                        a aVar3 = e.this.f50871i;
                        if (aVar3 != null) {
                            aVar3.d(motionEvent.getY(), e10.getY());
                        }
                    }
                }
            } else if (e.this.n((int) this.f50876a)) {
                e.this.f50869g = true;
                a aVar4 = e.this.f50871i;
                if (aVar4 != null) {
                    aVar4.c(motionEvent.getY(), e10.getY());
                }
            } else if (e.this.p((int) this.f50876a)) {
                e.this.f50868f = true;
                a aVar5 = e.this.f50871i;
                if (aVar5 != null) {
                    aVar5.d(motionEvent.getY(), e10.getY());
                }
            }
            return true;
        }

        @Override
        public void onShowPress(MotionEvent e10) {
            Intrinsics.h(e10, "e");
        }

        @Override
        public boolean onSingleTapUp(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            return false;
        }
    }

    public e(Context context, View view) {
        this.f50864b = context;
        this.f50865c = view;
        l();
    }

    private final void l() {
        this.f50870h = new GestureDetector(this.f50864b, this.f50874l);
        View view = this.f50865c;
        Intrinsics.e(view);
        view.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return e.m(this.f50862a, view2, motionEvent);
            }
        });
        GestureDetector gestureDetector = this.f50870h;
        Intrinsics.e(gestureDetector);
        gestureDetector.setOnDoubleTapListener(new b());
    }

    public static final boolean m(e eVar, View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            a aVar = eVar.f50871i;
            if (aVar != null) {
                aVar.e();
            }
            eVar.f50869g = false;
            eVar.f50868f = false;
            eVar.f50867e = false;
        }
        GestureDetector gestureDetector = eVar.f50870h;
        Intrinsics.e(gestureDetector);
        return gestureDetector.onTouchEvent(motionEvent);
    }

    public final boolean n(int i10) {
        return i10 < y.e() / 2;
    }

    public final boolean o(View view, int i10) {
        Intrinsics.h(view, "view");
        return i10 < view.getMeasuredWidth() / 2;
    }

    public final boolean p(int i10) {
        return i10 > y.e() / 2;
    }

    public final boolean q(View view, int i10) {
        Intrinsics.h(view, "view");
        return i10 > view.getMeasuredWidth() / 2;
    }

    public final void r(a aVar) {
        this.f50871i = aVar;
    }
}
