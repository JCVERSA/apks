package com.google.common.util.concurrent;

public abstract class ClosingFuture {

    private static final q f30171a = new q(ClosingFuture.class);

    class AnonymousClass10 implements Runnable {
        final ClosingFuture this$0;
        final b val$consumer;

        AnonymousClass10(ClosingFuture closingFuture, b bVar) {
        }

        @Override
        public void run() {
            ClosingFuture.d(null, null);
        }
    }

    class AnonymousClass9 implements Runnable {
        final ClosingFuture this$0;

        AnonymousClass9(ClosingFuture closingFuture) {
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

    enum State {
        OPEN,
        SUBSUMED,
        WILL_CLOSE,
        CLOSING,
        CLOSED,
        WILL_CREATE_VALUE_AND_CLOSER
    }

    public static final class a {
        a(ClosingFuture closingFuture) {
            android.support.v4.media.session.c.a(com.google.common.base.m.o(closingFuture));
        }
    }

    public interface b {
        void a(a aVar);
    }

    static void a(ClosingFuture closingFuture) {
        throw null;
    }

    static void b(ClosingFuture closingFuture, State state, State state2) {
        throw null;
    }

    public static void d(b bVar, ClosingFuture closingFuture) {
        bVar.a(new a(closingFuture));
    }
}
