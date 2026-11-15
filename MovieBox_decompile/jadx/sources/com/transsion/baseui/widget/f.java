package com.transsion.baseui.widget;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.blankj.utilcode.util.y;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    private Context f42447b;

    private View f42448c;

    private boolean f42450e;

    private boolean f42451f;

    private boolean f42452g;

    private GestureDetector f42453h;

    private a f42454i;

    private boolean f42455j;

    private View f42456k;

    private final String f42446a = f.class.getSimpleName();

    private boolean f42449d = true;

    private final GestureDetector.OnGestureListener f42457l = new c();

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
            a aVar = f.this.f42454i;
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
            a aVar = f.this.f42454i;
            if (aVar == null) {
                return false;
            }
            aVar.a();
            return false;
        }
    }

    public static final class c implements GestureDetector.OnGestureListener {

        private float f42459a;

        c() {
        }

        @Override
        public boolean onDown(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            this.f42459a = e10.getX();
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
            a aVar = f.this.f42454i;
            if (aVar != null) {
                aVar.onLongPress(e10);
            }
        }

        @Override
        public boolean onScroll(MotionEvent motionEvent, MotionEvent e10, float f10, float f11) {
            Intrinsics.h(e10, "e2");
            if (!f.this.f42449d || motionEvent == null) {
                return false;
            }
            if (Math.abs(f10) <= Math.abs(f11)) {
                boolean unused = f.this.f42450e;
            } else if (!f.this.f42452g && !f.this.f42451f) {
                f.this.f42450e = true;
            }
            if (f.this.f42450e) {
                a aVar = f.this.f42454i;
                if (aVar != null) {
                    aVar.b(motionEvent.getX(), e10.getX());
                }
            } else if (f.this.f42455j) {
                f fVar = f.this;
                View view = fVar.f42456k;
                Intrinsics.e(view);
                if (fVar.p(view, (int) this.f42459a)) {
                    f.this.f42452g = true;
                    a aVar2 = f.this.f42454i;
                    if (aVar2 != null) {
                        aVar2.c(motionEvent.getY(), e10.getY());
                    }
                } else {
                    f fVar2 = f.this;
                    View view2 = fVar2.f42456k;
                    Intrinsics.e(view2);
                    if (fVar2.r(view2, (int) this.f42459a)) {
                        f.this.f42451f = true;
                        a aVar3 = f.this.f42454i;
                        if (aVar3 != null) {
                            aVar3.d(motionEvent.getY(), e10.getY());
                        }
                    }
                }
            } else if (f.this.o((int) this.f42459a)) {
                f.this.f42452g = true;
                a aVar4 = f.this.f42454i;
                if (aVar4 != null) {
                    aVar4.c(motionEvent.getY(), e10.getY());
                }
            } else if (f.this.q((int) this.f42459a)) {
                f.this.f42451f = true;
                a aVar5 = f.this.f42454i;
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

    public f(Context context, View view) {
        this.f42447b = context;
        this.f42448c = view;
        m();
    }

    private final void m() {
        this.f42453h = new GestureDetector(this.f42447b, this.f42457l);
        View view = this.f42448c;
        Intrinsics.e(view);
        view.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return f.n(this.f42445a, view2, motionEvent);
            }
        });
        GestureDetector gestureDetector = this.f42453h;
        Intrinsics.e(gestureDetector);
        gestureDetector.setOnDoubleTapListener(new b());
    }

    public static final boolean n(f fVar, View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            a aVar = fVar.f42454i;
            if (aVar != null) {
                aVar.e();
            }
            fVar.f42452g = false;
            fVar.f42451f = false;
            fVar.f42450e = false;
        }
        GestureDetector gestureDetector = fVar.f42453h;
        Intrinsics.e(gestureDetector);
        return gestureDetector.onTouchEvent(motionEvent);
    }

    public final void l(boolean z10) {
        this.f42449d = z10;
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
        this.f42454i = aVar;
    }
}
