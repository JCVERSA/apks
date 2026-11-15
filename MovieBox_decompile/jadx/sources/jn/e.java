package jn;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.blankj.utilcode.util.y;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    private Context f63194a;

    private View f63195b;

    private boolean f63197d;

    private boolean f63198e;

    private boolean f63199f;

    private GestureDetector f63200g;

    private a f63201h;

    private boolean f63202i;

    private View f63203j;

    private boolean f63196c = true;

    private final GestureDetector.OnGestureListener f63204k = new c();

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
            a aVar = e.this.f63201h;
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
            a aVar = e.this.f63201h;
            if (aVar == null) {
                return false;
            }
            aVar.a();
            return false;
        }
    }

    public static final class c implements GestureDetector.OnGestureListener {

        private float f63206a;

        c() {
        }

        @Override
        public boolean onDown(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            this.f63206a = e10.getX();
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
            a aVar = e.this.f63201h;
            if (aVar != null) {
                aVar.onLongPress(e10);
            }
        }

        @Override
        public boolean onScroll(MotionEvent motionEvent, MotionEvent e10, float f10, float f11) {
            Intrinsics.h(e10, "e2");
            if (!e.this.f63196c || motionEvent == null) {
                return false;
            }
            if (Math.abs(f10) <= Math.abs(f11)) {
                boolean unused = e.this.f63197d;
            } else if (!e.this.f63199f && !e.this.f63198e) {
                e.this.f63197d = true;
            }
            if (e.this.f63197d) {
                a aVar = e.this.f63201h;
                if (aVar != null) {
                    aVar.b(motionEvent.getX(), e10.getX());
                }
            } else if (e.this.f63202i) {
                e eVar = e.this;
                View view = eVar.f63203j;
                Intrinsics.e(view);
                if (eVar.p(view, (int) this.f63206a)) {
                    e.this.f63199f = true;
                    a aVar2 = e.this.f63201h;
                    if (aVar2 != null) {
                        aVar2.c(motionEvent.getY(), e10.getY());
                    }
                } else {
                    e eVar2 = e.this;
                    View view2 = eVar2.f63203j;
                    Intrinsics.e(view2);
                    if (eVar2.r(view2, (int) this.f63206a)) {
                        e.this.f63198e = true;
                        a aVar3 = e.this.f63201h;
                        if (aVar3 != null) {
                            aVar3.d(motionEvent.getY(), e10.getY());
                        }
                    }
                }
            } else if (e.this.o((int) this.f63206a)) {
                e.this.f63199f = true;
                a aVar4 = e.this.f63201h;
                if (aVar4 != null) {
                    aVar4.c(motionEvent.getY(), e10.getY());
                }
            } else if (e.this.q((int) this.f63206a)) {
                e.this.f63198e = true;
                a aVar5 = e.this.f63201h;
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
        this.f63194a = context;
        this.f63195b = view;
        m();
    }

    private final void m() {
        this.f63200g = new GestureDetector(this.f63194a, this.f63204k);
        View view = this.f63195b;
        Intrinsics.e(view);
        view.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return e.n(this.f63193a, view2, motionEvent);
            }
        });
        GestureDetector gestureDetector = this.f63200g;
        Intrinsics.e(gestureDetector);
        gestureDetector.setOnDoubleTapListener(new b());
    }

    public static final boolean n(e eVar, View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            a aVar = eVar.f63201h;
            if (aVar != null) {
                aVar.e();
            }
            eVar.f63199f = false;
            eVar.f63198e = false;
            eVar.f63197d = false;
        }
        GestureDetector gestureDetector = eVar.f63200g;
        Intrinsics.e(gestureDetector);
        return gestureDetector.onTouchEvent(motionEvent);
    }

    public final void l(boolean z10) {
        this.f63196c = z10;
    }

    public final boolean o(int i10) {
        return i10 < y.e() / 2;
    }

    public final boolean p(View view, int i10) {
        Intrinsics.h(view, "view");
        return i10 < view.getMeasuredWidth() / 2;
    }

    public final boolean q(int i10) {
        return i10 > y.e() / 2;
    }

    public final boolean r(View view, int i10) {
        Intrinsics.h(view, "view");
        return i10 > view.getMeasuredWidth() / 2;
    }

    public final void s(a aVar) {
        this.f63201h = aVar;
    }
}
