package com.transsion.shorttv_pugc.base.widget;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.blankj.utilcode.util.y;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    private Context f51846b;

    private View f51847c;

    private boolean f51849e;

    private boolean f51850f;

    private boolean f51851g;

    private GestureDetector f51852h;

    private a f51853i;

    private boolean f51854j;

    private View f51855k;

    private final String f51845a = e.class.getSimpleName();

    private boolean f51848d = true;

    private final GestureDetector.OnGestureListener f51856l = new c();

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
            a aVar = e.this.f51853i;
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
            a aVar = e.this.f51853i;
            if (aVar == null) {
                return false;
            }
            aVar.a();
            return false;
        }
    }

    public static final class c implements GestureDetector.OnGestureListener {

        private float f51858a;

        c() {
        }

        @Override
        public boolean onDown(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            this.f51858a = e10.getX();
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
            a aVar = e.this.f51853i;
            if (aVar != null) {
                aVar.onLongPress(e10);
            }
        }

        @Override
        public boolean onScroll(MotionEvent motionEvent, MotionEvent e10, float f10, float f11) {
            Intrinsics.h(e10, "e2");
            if (!e.this.f51848d || motionEvent == null) {
                return false;
            }
            if (Math.abs(f10) <= Math.abs(f11)) {
                boolean unused = e.this.f51849e;
            } else if (!e.this.f51851g && !e.this.f51850f) {
                e.this.f51849e = true;
            }
            if (e.this.f51849e) {
                a aVar = e.this.f51853i;
                if (aVar != null) {
                    aVar.b(motionEvent.getX(), e10.getX());
                }
            } else if (e.this.f51854j) {
                e eVar = e.this;
                View view = eVar.f51855k;
                Intrinsics.e(view);
                if (eVar.o(view, (int) this.f51858a)) {
                    e.this.f51851g = true;
                    a aVar2 = e.this.f51853i;
                    if (aVar2 != null) {
                        aVar2.c(motionEvent.getY(), e10.getY());
                    }
                } else {
                    e eVar2 = e.this;
                    View view2 = eVar2.f51855k;
                    Intrinsics.e(view2);
                    if (eVar2.q(view2, (int) this.f51858a)) {
                        e.this.f51850f = true;
                        a aVar3 = e.this.f51853i;
                        if (aVar3 != null) {
                            aVar3.d(motionEvent.getY(), e10.getY());
                        }
                    }
                }
            } else if (e.this.n((int) this.f51858a)) {
                e.this.f51851g = true;
                a aVar4 = e.this.f51853i;
                if (aVar4 != null) {
                    aVar4.c(motionEvent.getY(), e10.getY());
                }
            } else if (e.this.p((int) this.f51858a)) {
                e.this.f51850f = true;
                a aVar5 = e.this.f51853i;
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
        this.f51846b = context;
        this.f51847c = view;
        l();
    }

    private final void l() {
        this.f51852h = new GestureDetector(this.f51846b, this.f51856l);
        View view = this.f51847c;
        Intrinsics.e(view);
        view.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return e.m(this.f51844a, view2, motionEvent);
            }
        });
        GestureDetector gestureDetector = this.f51852h;
        Intrinsics.e(gestureDetector);
        gestureDetector.setOnDoubleTapListener(new b());
    }

    public static final boolean m(e eVar, View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            a aVar = eVar.f51853i;
            if (aVar != null) {
                aVar.e();
            }
            eVar.f51851g = false;
            eVar.f51850f = false;
            eVar.f51849e = false;
        }
        GestureDetector gestureDetector = eVar.f51852h;
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
        this.f51853i = aVar;
    }
}
