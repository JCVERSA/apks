package com.google.common.hash;

import com.google.common.base.q;
import java.util.concurrent.atomic.AtomicLong;

abstract class LongAddables {

    private static final q f30042a;

    private static final class PureJavaLongAddable extends AtomicLong implements h {
        private PureJavaLongAddable() {
        }

        @Override
        public void add(long j10) {
            getAndAdd(j10);
        }

        @Override
        public void increment() {
            getAndIncrement();
        }

        @Override
        public long sum() {
            return get();
        }

        PureJavaLongAddable(a aVar) {
            this();
        }
    }

    class a implements q {
        a() {
        }

        @Override
        public h get() {
            return new LongAdder();
        }
    }

    class b implements q {
        b() {
        }

        @Override
        public h get() {
            return new PureJavaLongAddable(null);
        }
    }

    static {
        q bVar;
        try {
            new LongAdder();
            bVar = new a();
        } catch (Throwable unused) {
            bVar = new b();
        }
        f30042a = bVar;
    }

    public static h a() {
        return (h) f30042a.get();
    }
}
