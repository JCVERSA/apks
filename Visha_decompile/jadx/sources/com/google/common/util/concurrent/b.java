package com.google.common.util.concurrent;

import defpackage.ubc;
import defpackage.zd9;

public abstract class b {
    public static final ListenerCallQueue.a a = new a();
    public static final ListenerCallQueue.a b = new C0109b();
    public static final ListenerCallQueue.a c;
    public static final ListenerCallQueue.a d;
    public static final ListenerCallQueue.a e;
    public static final ListenerCallQueue.a f;
    public static final ListenerCallQueue.a g;
    public static final ListenerCallQueue.a h;

    public class a implements ListenerCallQueue.a {
        @Override
        public void a(Object obj) {
            ubc.a(obj);
            b(null);
        }

        public void b(zd9 zd9Var) {
            throw null;
        }

        public String toString() {
            return "starting()";
        }
    }

    public class C0109b implements ListenerCallQueue.a {
        @Override
        public void a(Object obj) {
            ubc.a(obj);
            b(null);
        }

        public void b(zd9 zd9Var) {
            throw null;
        }

        public String toString() {
            return "running()";
        }
    }

    public class c implements ListenerCallQueue.a {
        public final Service$State a;

        public c(Service$State service$State) {
            this.a = service$State;
        }

        @Override
        public void a(Object obj) {
            ubc.a(obj);
            b(null);
        }

        public void b(zd9 zd9Var) {
            throw null;
        }

        public String toString() {
            return "terminated({from = " + this.a + "})";
        }
    }

    public class d implements ListenerCallQueue.a {
        public final Service$State a;

        public d(Service$State service$State) {
            this.a = service$State;
        }

        @Override
        public void a(Object obj) {
            ubc.a(obj);
            b(null);
        }

        public void b(zd9 zd9Var) {
            throw null;
        }

        public String toString() {
            return "stopping({from = " + this.a + "})";
        }
    }

    static {
        Service$State service$State = Service$State.STARTING;
        c = a(service$State);
        Service$State service$State2 = Service$State.RUNNING;
        d = a(service$State2);
        e = b(Service$State.NEW);
        f = b(service$State);
        g = b(service$State2);
        h = b(Service$State.STOPPING);
    }

    public static ListenerCallQueue.a a(Service$State service$State) {
        return new d(service$State);
    }

    public static ListenerCallQueue.a b(Service$State service$State) {
        return new c(service$State);
    }
}
