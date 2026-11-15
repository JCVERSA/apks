package com.google.common.collect;

import com.google.common.collect.ImmutableTable;
import com.google.common.collect.s;
import defpackage.xd8;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;
import org.mozilla.javascript.ES6Iterator;

public abstract class s {

    public static final class b {
        public final List a;
        public final r b;

        public b() {
            this.a = new ArrayList();
            this.b = HashBasedTable.create();
        }

        public b a(b bVar, BinaryOperator binaryOperator) {
            for (c cVar : bVar.a) {
                b(cVar.getRowKey(), cVar.getColumnKey(), cVar.getValue(), binaryOperator);
            }
            return this;
        }

        public void b(Object obj, Object obj2, Object obj3, BinaryOperator binaryOperator) {
            c cVar = (c) this.b.get(obj, obj2);
            if (cVar != null) {
                cVar.a(obj3, binaryOperator);
                return;
            }
            c cVar2 = new c(obj, obj2, obj3);
            this.a.add(cVar2);
            this.b.put(obj, obj2, cVar2);
        }

        public ImmutableTable c() {
            return ImmutableTable.copyOf(this.a);
        }
    }

    public static final class c extends Tables.b {
        public final Object b;
        public final Object c;
        public Object d;

        public c(Object obj, Object obj2, Object obj3) {
            this.b = xd8.p(obj, "row");
            this.c = xd8.p(obj2, "column");
            this.d = xd8.p(obj3, ES6Iterator.VALUE_PROPERTY);
        }

        public void a(Object obj, BinaryOperator binaryOperator) {
            xd8.p(obj, ES6Iterator.VALUE_PROPERTY);
            this.d = xd8.p(binaryOperator.apply(this.d, obj), "mergeFunction.apply");
        }

        @Override
        public Object getColumnKey() {
            return this.c;
        }

        @Override
        public Object getRowKey() {
            return this.b;
        }

        @Override
        public Object getValue() {
            return this.d;
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

    public static Collector k(final Function function, final Function function2, final Function function3) {
        xd8.p(function, "rowFunction");
        xd8.p(function2, "columnFunction");
        xd8.p(function3, "valueFunction");
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return new ImmutableTable.a();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                s.f(function, function2, function3, (ImmutableTable.a) obj, obj2);
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

    public static Collector l(final Function function, final Function function2, final Function function3, final BinaryOperator binaryOperator) {
        xd8.p(function, "rowFunction");
        xd8.p(function2, "columnFunction");
        xd8.p(function3, "valueFunction");
        xd8.p(binaryOperator, "mergeFunction");
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return s.g();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                s.h(function, function2, function3, binaryOperator, (s.b) obj, obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return s.i(binaryOperator, (s.b) obj, (s.b) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((s.b) obj).c();
            }
        }, new Collector.Characteristics[0]);
    }
}
