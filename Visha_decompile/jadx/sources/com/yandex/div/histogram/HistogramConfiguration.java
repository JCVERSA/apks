package com.yandex.div.histogram;

import defpackage.ax2;
import defpackage.c74;
import defpackage.oj8;
import defpackage.oq4;

public interface HistogramConfiguration extends oq4 {
    public static final a a = a.a;
    public static final HistogramConfiguration b = new DefaultHistogramConfiguration();

    public static class DefaultHistogramConfiguration implements HistogramConfiguration {
        public final boolean e;
        public final boolean f;
        public final boolean g;
        public final boolean h;
        public final boolean i;
        public final oj8 c = new ax2(HistogramConfiguration$DefaultHistogramConfiguration$histogramBridge$1.INSTANCE);
        public final oj8 d = new ax2(new c74() {
            @Override
            public final a invoke() {
                return new a.C0297a();
            }
        });
        public final oj8 j = new ax2(HistogramConfiguration$DefaultHistogramConfiguration$taskExecutorProvider$1.INSTANCE);
        public final oj8 k = new ax2(HistogramConfiguration$DefaultHistogramConfiguration$renderConfiguration$1.INSTANCE);

        @Override
        public boolean a() {
            return this.e;
        }

        @Override
        public oj8 b() {
            return this.d;
        }

        @Override
        public boolean c() {
            return this.g;
        }

        @Override
        public boolean d() {
            return this.i;
        }

        @Override
        public boolean e() {
            return this.f;
        }

        @Override
        public oj8 f() {
            return this.k;
        }

        @Override
        public oj8 g() {
            return this.c;
        }

        @Override
        public oj8 h() {
            return this.j;
        }

        @Override
        public boolean i() {
            return this.h;
        }
    }

    public static final class a {
        public static final a a = new a();
    }

    boolean a();

    oj8 b();

    oj8 g();

    oj8 h();
}
