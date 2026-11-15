package com.google.common.collect;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;

abstract class l4 {

    static final class b {

        final List f29997a;

        final c4 f29998b;

        private b() {
            this.f29997a = new ArrayList();
            this.f29998b = HashBasedTable.create();
        }

        b a(b bVar, BinaryOperator binaryOperator) {
            for (c cVar : bVar.f29997a) {
                b(cVar.getRowKey(), cVar.getColumnKey(), cVar.getValue(), binaryOperator);
            }
            return this;
        }

        void b(Object obj, Object obj2, Object obj3, BinaryOperator binaryOperator) {
            c cVar = (c) this.f29998b.get(obj, obj2);
            if (cVar != null) {
                cVar.a(obj3, binaryOperator);
                return;
            }
            c cVar2 = new c(obj, obj2, obj3);
            this.f29997a.add(cVar2);
            this.f29998b.put(obj, obj2, cVar2);
        }

        public ImmutableTable c() {
            return ImmutableTable.copyOf(this.f29997a);
        }
    }

    private static final class c extends Tables.b {

        private final Object f29999a;

        private final Object f30000b;

        private Object f30001c;

        c(Object obj, Object obj2, Object obj3) {
            this.f29999a = com.google.common.base.m.p(obj, "row");
            this.f30000b = com.google.common.base.m.p(obj2, "column");
            this.f30001c = com.google.common.base.m.p(obj3, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        }

        void a(Object obj, BinaryOperator binaryOperator) {
            com.google.common.base.m.p(obj, AppMeasurementSdk.ConditionalUserProperty.VALUE);
            this.f30001c = com.google.common.base.m.p(binaryOperator.apply(this.f30001c, obj), "mergeFunction.apply");
        }

        @Override
        public Object getColumnKey() {
            return this.f30000b;
        }

        @Override
        public Object getRowKey() {
            return this.f29999a;
        }

        @Override
        public Object getValue() {
            return this.f30001c;
        }
    }

    public static void f(Function function, Function function2, Function function3, ImmutableTable.a aVar, Object obj) {
        aVar.e(function.apply(obj), function2.apply(obj), function3.apply(obj));
    }

    public static b g() {
        return new b();
    }

    public static void h(Function function, Function function2, Function function3, BinaryOperator binaryOperator, b bVar, Object obj) {
        bVar.b(function.apply(obj), function2.apply(obj), function3.apply(obj), binaryOperator);
    }

    public static b i(BinaryOperator binaryOperator, b bVar, b bVar2) {
        return bVar.a(bVar2, binaryOperator);
    }

    static Collector k(final Function function, final Function function2, final Function function3) {
        com.google.common.base.m.p(function, "rowFunction");
        com.google.common.base.m.p(function2, "columnFunction");
        com.google.common.base.m.p(function3, "valueFunction");
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return new ImmutableTable.a();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                l4.f(function, function2, function3, (ImmutableTable.a) obj, obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableTable.a) obj).c((ImmutableTable.a) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((ImmutableTable.a) obj).a();
            }
        }, new Collector.Characteristics[0]);
    }

    static Collector l(final Function function, final Function function2, final Function function3, final BinaryOperator binaryOperator) {
        com.google.common.base.m.p(function, "rowFunction");
        com.google.common.base.m.p(function2, "columnFunction");
        com.google.common.base.m.p(function3, "valueFunction");
        com.google.common.base.m.p(binaryOperator, "mergeFunction");
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return l4.g();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                l4.h(function, function2, function3, binaryOperator, (l4.b) obj, obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return l4.i(binaryOperator, (l4.b) obj, (l4.b) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((l4.b) obj).c();
            }
        }, new Collector.Characteristics[0]);
    }
}
