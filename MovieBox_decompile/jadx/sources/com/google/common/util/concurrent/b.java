package com.google.common.util.concurrent;

public abstract class b {

    private static final ListenerCallQueue.a f30185a = new a();

    private static final ListenerCallQueue.a f30186b = new C0392b();

    private static final ListenerCallQueue.a f30187c;

    private static final ListenerCallQueue.a f30188d;

    private static final ListenerCallQueue.a f30189e;

    private static final ListenerCallQueue.a f30190f;

    private static final ListenerCallQueue.a f30191g;

    private static final ListenerCallQueue.a f30192h;

    class a implements ListenerCallQueue.a {
        a() {
        }

        @Override
        public void call(x xVar) {
            xVar.b();
        }

        public String toString() {
            return "starting()";
        }
    }

    class C0392b implements ListenerCallQueue.a {
        C0392b() {
        }

        @Override
        public void call(x xVar) {
            xVar.a();
        }

        public String toString() {
            return "running()";
        }
    }

    class c implements ListenerCallQueue.a {

        final Service$State f30193a;

        c(Service$State service$State) {
            this.f30193a = service$State;
        }

        @Override
        public void call(x xVar) {
            xVar.d(this.f30193a);
        }

        public String toString() {
            return "terminated({from = " + this.f30193a + "})";
        }
    }

    class d implements ListenerCallQueue.a {

        final Service$State f30194a;

        d(Service$State service$State) {
            this.f30194a = service$State;
        }

        @Override
        public void call(x xVar) {
            xVar.c(this.f30194a);
        }

        public String toString() {
            return "stopping({from = " + this.f30194a + "})";
        }
    }

    static {
        Service$State service$State = Service$State.STARTING;
        f30187c = a(service$State);
        Service$State service$State2 = Service$State.RUNNING;
        f30188d = a(service$State2);
        f30189e = b(Service$State.NEW);
        f30190f = b(service$State);
        f30191g = b(service$State2);
        f30192h = b(Service$State.STOPPING);
    }

    private static ListenerCallQueue.a a(Service$State service$State) {
        return new d(service$State);
    }

    private static ListenerCallQueue.a b(Service$State service$State) {
        return new c(service$State);
    }
}
