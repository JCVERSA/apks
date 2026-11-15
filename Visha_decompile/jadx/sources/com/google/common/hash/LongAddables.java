package com.google.common.hash;

import defpackage.w6a;
import defpackage.xq5;
import java.util.concurrent.atomic.AtomicLong;

public abstract class LongAddables {
    public static final w6a a;

    public static final class PureJavaLongAddable extends AtomicLong implements xq5 {
        private PureJavaLongAddable() {
        }

        @Override
        public void add(long j) {
            getAndAdd(j);
        }

        @Override
        public void increment() {
            getAndIncrement();
        }

        @Override
        public long sum() {
            return get();
        }

        public PureJavaLongAddable(a aVar) {
            this();
        }
    }

    public class a implements w6a {
        @Override
        public xq5 get() {
            return new LongAdder();
        }
    }

    public class b implements w6a {
        @Override
        public xq5 get() {
            return new PureJavaLongAddable(null);
        }
    }

    static {
        w6a bVar;
        try {
            new LongAdder();
            bVar = new a();
        } catch (Throwable unused) {
            bVar = new b();
        }
        a = bVar;
    }

    public static xq5 a() {
        return (xq5) a.get();
    }
}
