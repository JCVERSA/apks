package androidx.p009lifecycle;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i1;
import kotlinx.coroutines.flow.x0;

public class w extends Lifecycle {

    public static final a f9347k = new a(null);

    private final boolean f9348b;

    private k.a f9349c;

    private Lifecycle.State f9350d;

    private final WeakReference f9351e;

    private int f9352f;

    private boolean f9353g;

    private boolean f9354h;

    private ArrayList f9355i;

    private final x0 f9356j;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Lifecycle.State a(Lifecycle.State state1, Lifecycle.State state) {
            Intrinsics.h(state1, "state1");
            return (state == null || state.compareTo(state1) >= 0) ? state1 : state;
        }

        private a() {
        }
    }

    public static final class b {

        private Lifecycle.State f9357a;

        private r f9358b;

        public b(t tVar, Lifecycle.State initialState) {
            Intrinsics.h(initialState, "initialState");
            Intrinsics.e(tVar);
            this.f9358b = y.f(tVar);
            this.f9357a = initialState;
        }

        public final void a(u uVar, Lifecycle.Event event) {
            Intrinsics.h(event, "event");
            Lifecycle.State targetState = event.getTargetState();
            this.f9357a = w.f9347k.a(this.f9357a, targetState);
            r rVar = this.f9358b;
            Intrinsics.e(uVar);
            rVar.onStateChanged(uVar, event);
            this.f9357a = targetState;
        }

        public final Lifecycle.State b() {
            return this.f9357a;
        }
    }

    private w(u uVar, boolean z10) {
        this.f9348b = z10;
        this.f9349c = new k.a();
        Lifecycle.State state = Lifecycle.State.INITIALIZED;
        this.f9350d = state;
        this.f9355i = new ArrayList();
        this.f9351e = new WeakReference(uVar);
        this.f9356j = i1.a(state);
    }

    private final void e(u uVar) {
        Iterator itDescendingIterator = this.f9349c.descendingIterator();
        Intrinsics.g(itDescendingIterator, "observerMap.descendingIterator()");
        while (itDescendingIterator.hasNext() && !this.f9354h) {
            Map.Entry entry = (Map.Entry) itDescendingIterator.next();
            Intrinsics.g(entry, "next()");
            t tVar = (t) entry.getKey();
            b bVar = (b) entry.getValue();
            while (bVar.b().compareTo(this.f9350d) > 0 && !this.f9354h && this.f9349c.contains(tVar)) {
                Lifecycle.Event eventA = Lifecycle.Event.INSTANCE.a(bVar.b());
                if (eventA == null) {
                    throw new IllegalStateException("no event down from " + bVar.b());
                }
                m(eventA.getTargetState());
                bVar.a(uVar, eventA);
                l();
            }
        }
    }

    private final Lifecycle.State f(t tVar) {
        b bVar;
        Map.Entry entryJ = this.f9349c.j(tVar);
        Lifecycle.State state = null;
        Lifecycle.State stateB = (entryJ == null || (bVar = (b) entryJ.getValue()) == null) ? null : bVar.b();
        if (!this.f9355i.isEmpty()) {
            ArrayList arrayList = this.f9355i;
            state = (Lifecycle.State) arrayList.get(arrayList.size() - 1);
        }
        a aVar = f9347k;
        return aVar.a(aVar.a(this.f9350d, stateB), state);
    }

    private final void g(String str) {
        if (!this.f9348b || x.a()) {
            return;
        }
        throw new IllegalStateException(("Method " + str + " must be called on the main thread").toString());
    }

    private final void h(u uVar) {
        k.b.d dVarC = this.f9349c.c();
        Intrinsics.g(dVarC, "observerMap.iteratorWithAdditions()");
        while (dVarC.hasNext() && !this.f9354h) {
            Map.Entry entry = (Map.Entry) dVarC.next();
            t tVar = (t) entry.getKey();
            b bVar = (b) entry.getValue();
            while (bVar.b().compareTo(this.f9350d) < 0 && !this.f9354h && this.f9349c.contains(tVar)) {
                m(bVar.b());
                Lifecycle.Event eventC = Lifecycle.Event.INSTANCE.c(bVar.b());
                if (eventC == null) {
                    throw new IllegalStateException("no event up from " + bVar.b());
                }
                bVar.a(uVar, eventC);
                l();
            }
        }
    }

    private final boolean j() {
        if (this.f9349c.size() == 0) {
            return true;
        }
        Map.Entry entryA = this.f9349c.a();
        Intrinsics.e(entryA);
        Lifecycle.State stateB = ((b) entryA.getValue()).b();
        Map.Entry entryE = this.f9349c.e();
        Intrinsics.e(entryE);
        Lifecycle.State stateB2 = ((b) entryE.getValue()).b();
        return stateB == stateB2 && this.f9350d == stateB2;
    }

    private final void k(Lifecycle.State state) {
        Lifecycle.State state2 = this.f9350d;
        if (state2 == state) {
            return;
        }
        if (state2 == Lifecycle.State.INITIALIZED && state == Lifecycle.State.DESTROYED) {
            throw new IllegalStateException(("State must be at least CREATED to move to " + state + ", but was " + this.f9350d + " in component " + this.f9351e.get()).toString());
        }
        this.f9350d = state;
        if (this.f9353g || this.f9352f != 0) {
            this.f9354h = true;
            return;
        }
        this.f9353g = true;
        o();
        this.f9353g = false;
        if (this.f9350d == Lifecycle.State.DESTROYED) {
            this.f9349c = new k.a();
        }
    }

    private final void l() {
        ArrayList arrayList = this.f9355i;
        arrayList.remove(arrayList.size() - 1);
    }

    private final void m(Lifecycle.State state) {
        this.f9355i.add(state);
    }

    private final void o() {
        u uVar = (u) this.f9351e.get();
        if (uVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
        }
        while (!j()) {
            this.f9354h = false;
            Lifecycle.State state = this.f9350d;
            Map.Entry entryA = this.f9349c.a();
            Intrinsics.e(entryA);
            if (state.compareTo(((b) entryA.getValue()).b()) < 0) {
                e(uVar);
            }
            Map.Entry entryE = this.f9349c.e();
            if (!this.f9354h && entryE != null && this.f9350d.compareTo(((b) entryE.getValue()).b()) > 0) {
                h(uVar);
            }
        }
        this.f9354h = false;
        this.f9356j.setValue(b());
    }

    @Override
    public void a(t observer) {
        u uVar;
        Intrinsics.h(observer, "observer");
        g("addObserver");
        Lifecycle.State state = this.f9350d;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        b bVar = new b(observer, state2);
        if (((b) this.f9349c.g(observer, bVar)) == null && (uVar = (u) this.f9351e.get()) != null) {
            boolean z10 = this.f9352f != 0 || this.f9353g;
            Lifecycle.State stateF = f(observer);
            this.f9352f++;
            while (bVar.b().compareTo(stateF) < 0 && this.f9349c.contains(observer)) {
                m(bVar.b());
                Lifecycle.Event eventC = Lifecycle.Event.INSTANCE.c(bVar.b());
                if (eventC == null) {
                    throw new IllegalStateException("no event up from " + bVar.b());
                }
                bVar.a(uVar, eventC);
                l();
                stateF = f(observer);
            }
            if (!z10) {
                o();
            }
            this.f9352f--;
        }
    }

    @Override
    public Lifecycle.State b() {
        return this.f9350d;
    }

    @Override
    public void d(t observer) {
        Intrinsics.h(observer, "observer");
        g("removeObserver");
        this.f9349c.i(observer);
    }

    public void i(Lifecycle.Event event) {
        Intrinsics.h(event, "event");
        g("handleLifecycleEvent");
        k(event.getTargetState());
    }

    public void n(Lifecycle.State state) {
        Intrinsics.h(state, "state");
        g("setCurrentState");
        k(state);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public w(u provider) {
        this(provider, true);
        Intrinsics.h(provider, "provider");
    }
}
