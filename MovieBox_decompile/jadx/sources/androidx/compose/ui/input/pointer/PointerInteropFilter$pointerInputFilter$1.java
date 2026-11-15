package androidx.compose.ui.input.pointer;

import android.os.SystemClock;
import android.view.MotionEvent;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public final class PointerInteropFilter$pointerInputFilter$1 extends c0 {

    private PointerInteropFilter.DispatchToViewState f4641b = PointerInteropFilter.DispatchToViewState.Unknown;

    final PointerInteropFilter f4642c;

    PointerInteropFilter$pointerInputFilter$1(PointerInteropFilter pointerInteropFilter) {
        this.f4642c = pointerInteropFilter;
    }

    private final void h(o oVar) {
        List listB = oVar.b();
        int size = listB.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((w) listB.get(i10)).p()) {
                if (this.f4641b == PointerInteropFilter.DispatchToViewState.Dispatching) {
                    androidx.compose.ui.layout.l lVarB = b();
                    if (lVarB == null) {
                        throw new IllegalStateException("layoutCoordinates not set");
                    }
                    long jY = lVarB.Y(y.g.f75999b.c());
                    final PointerInteropFilter pointerInteropFilter = this.f4642c;
                    f0.b(oVar, jY, new Function1<MotionEvent, Unit>() {
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            invoke((MotionEvent) obj);
                            return Unit.f64096a;
                        }

                        public final void invoke(MotionEvent motionEvent) {
                            pointerInteropFilter.i().invoke(motionEvent);
                        }
                    });
                }
                this.f4641b = PointerInteropFilter.DispatchToViewState.NotDispatching;
                return;
            }
        }
        androidx.compose.ui.layout.l lVarB2 = b();
        if (lVarB2 == null) {
            throw new IllegalStateException("layoutCoordinates not set");
        }
        long jY2 = lVarB2.Y(y.g.f75999b.c());
        final PointerInteropFilter pointerInteropFilter2 = this.f4642c;
        f0.c(oVar, jY2, new Function1<MotionEvent, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((MotionEvent) obj);
                return Unit.f64096a;
            }

            public final void invoke(MotionEvent motionEvent) {
                if (motionEvent.getActionMasked() != 0) {
                    pointerInteropFilter2.i().invoke(motionEvent);
                } else {
                    this.this$0.f4641b = ((Boolean) pointerInteropFilter2.i().invoke(motionEvent)).booleanValue() ? PointerInteropFilter.DispatchToViewState.Dispatching : PointerInteropFilter.DispatchToViewState.NotDispatching;
                }
            }
        });
        if (this.f4641b == PointerInteropFilter.DispatchToViewState.Dispatching) {
            int size2 = listB.size();
            for (int i11 = 0; i11 < size2; i11++) {
                ((w) listB.get(i11)).a();
            }
            g gVarC = oVar.c();
            if (gVarC == null) {
                return;
            }
            gVarC.e(!this.f4642c.a());
        }
    }

    private final void i() {
        this.f4641b = PointerInteropFilter.DispatchToViewState.Unknown;
        this.f4642c.j(false);
    }

    @Override
    public boolean c() {
        return true;
    }

    @Override
    public void d() {
        if (this.f4641b == PointerInteropFilter.DispatchToViewState.Dispatching) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            final PointerInteropFilter pointerInteropFilter = this.f4642c;
            f0.a(jUptimeMillis, new Function1<MotionEvent, Unit>() {
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((MotionEvent) obj);
                    return Unit.f64096a;
                }

                public final void invoke(MotionEvent motionEvent) {
                    pointerInteropFilter.i().invoke(motionEvent);
                }
            });
            i();
        }
    }

    @Override
    public void e(o oVar, PointerEventPass pointerEventPass, long j10) {
        boolean z10;
        List listB = oVar.b();
        if (this.f4642c.a()) {
            z10 = true;
            break;
        }
        int size = listB.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                z10 = false;
                break;
            }
            w wVar = (w) listB.get(i10);
            if (p.b(wVar) || p.d(wVar)) {
                z10 = true;
                break;
            }
            i10++;
        }
        if (this.f4641b != PointerInteropFilter.DispatchToViewState.NotDispatching) {
            if (pointerEventPass == PointerEventPass.Initial && z10) {
                h(oVar);
            }
            if (pointerEventPass == PointerEventPass.Final && !z10) {
                h(oVar);
            }
        }
        if (pointerEventPass == PointerEventPass.Final) {
            int size2 = listB.size();
            for (int i11 = 0; i11 < size2; i11++) {
                if (!p.d((w) listB.get(i11))) {
                    return;
                }
            }
            i();
        }
    }
}
