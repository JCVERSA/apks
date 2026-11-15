package com.google.common.util.concurrent;

import defpackage.kj5;
import defpackage.ubc;
import defpackage.xd8;

public abstract class ClosingFuture {
    public static final kj5 a = new kj5(ClosingFuture.class);

    class AnonymousClass10 implements Runnable {
        final ClosingFuture this$0;
        final b val$consumer;

        public AnonymousClass10(ClosingFuture closingFuture, b bVar) {
        }

        @Override
        public void run() {
            ClosingFuture.d(null, null);
        }
    }

    class AnonymousClass9 implements Runnable {
        final ClosingFuture this$0;

        public AnonymousClass9(ClosingFuture closingFuture) {
        }

        @Override
        public void run() {
            State state = State.WILL_CLOSE;
            State state2 = State.CLOSING;
            ClosingFuture.b(null, state, state2);
            ClosingFuture.a(null);
            ClosingFuture.b(null, state2, State.CLOSED);
        }
    }

    public enum State {
        OPEN,
        SUBSUMED,
        WILL_CLOSE,
        CLOSING,
        CLOSED,
        WILL_CREATE_VALUE_AND_CLOSER
    }

    public static final class a {
        public a(ClosingFuture closingFuture) {
            ubc.a(xd8.o(closingFuture));
        }
    }

    public interface b {
        void a(a aVar);
    }

    public static void a(ClosingFuture closingFuture) {
        throw null;
    }

    public static void b(ClosingFuture closingFuture, State state, State state2) {
        throw null;
    }

    public static void d(b bVar, ClosingFuture closingFuture) {
        bVar.a(new a(closingFuture));
    }
}
