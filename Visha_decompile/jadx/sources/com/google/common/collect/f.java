package com.google.common.collect;

import com.google.common.collect.ImmutableBiMap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableRangeMap;
import com.google.common.collect.ImmutableRangeSet;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSetMultimap;
import com.google.common.collect.ImmutableSortedMap;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.LinkedHashMultiset;
import com.google.common.collect.Range;
import com.google.common.collect.f;
import com.google.common.collect.j;
import defpackage.at6;
import defpackage.d71;
import defpackage.xd8;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public abstract class f {
    public static final Collector a = Collector.of(new Supplier() {
        @Override
        public final Object get() {
            return ImmutableList.builder();
        }
    }, new BiConsumer() {
        @Override
        public final void accept(Object obj, Object obj2) {
            ((ImmutableList.a) obj).a(obj2);
        }
    }, new BinaryOperator() {
        @Override
        public final Object apply(Object obj, Object obj2) {
            return ((ImmutableList.a) obj).p((ImmutableList.a) obj2);
        }
    }, new Function() {
        @Override
        public final Object apply(Object obj) {
            return ((ImmutableList.a) obj).e();
        }
    }, new Collector.Characteristics[0]);
    public static final Collector b = Collector.of(new Supplier() {
        @Override
        public final Object get() {
            return ImmutableSet.builder();
        }
    }, new BiConsumer() {
        @Override
        public final void accept(Object obj, Object obj2) {
            ((ImmutableSet.a) obj).a(obj2);
        }
    }, new BinaryOperator() {
        @Override
        public final Object apply(Object obj, Object obj2) {
            return ((ImmutableSet.a) obj).p((ImmutableSet.a) obj2);
        }
    }, new Function() {
        @Override
        public final Object apply(Object obj) {
            return ((ImmutableSet.a) obj).e();
        }
    }, new Collector.Characteristics[0]);
    public static final Collector c = Collector.of(new Supplier() {
        @Override
        public final Object get() {
            return ImmutableRangeSet.builder();
        }
    }, new BiConsumer() {
        @Override
        public final void accept(Object obj, Object obj2) {
            ((ImmutableRangeSet.a) obj).a((Range) obj2);
        }
    }, new BinaryOperator() {
        @Override
        public final Object apply(Object obj, Object obj2) {
            return ((ImmutableRangeSet.a) obj).d((ImmutableRangeSet.a) obj2);
        }
    }, new Function() {
        @Override
        public final Object apply(Object obj) {
            return ((ImmutableRangeSet.a) obj).c();
        }
    }, new Collector.Characteristics[0]);

    public static at6 A(at6 at6Var, at6 at6Var2) {
        at6Var.putAll(at6Var2);
        return at6Var;
    }

    public static void B(Function function, Function function2, ImmutableBiMap.a aVar, Object obj) {
        aVar.h(function.apply(obj), function2.apply(obj));
    }

    public static void C(Function function, Function function2, ImmutableListMultimap.a aVar, Object obj) {
        aVar.f(function.apply(obj), function2.apply(obj));
    }

    public static void D(Function function, Function function2, ImmutableMap.b bVar, Object obj) {
        bVar.h(function.apply(obj), function2.apply(obj));
    }

    public static void E(Function function, ToIntFunction toIntFunction, j jVar, Object obj) {
        jVar.add(xd8.o(function.apply(obj)), toIntFunction.applyAsInt(obj));
    }

    public static j F(j jVar, j jVar2) {
        jVar.addAll(jVar2);
        return jVar;
    }

    public static ImmutableMultiset G(j jVar) {
        return ImmutableMultiset.copyFromEntries(jVar.entrySet());
    }

    public static void H(Function function, Function function2, ImmutableRangeMap.a aVar, Object obj) {
        aVar.c((Range) function.apply(obj), function2.apply(obj));
    }

    public static void I(Function function, Function function2, ImmutableSetMultimap.a aVar, Object obj) {
        aVar.f(function.apply(obj), function2.apply(obj));
    }

    public static TreeMap J(Comparator comparator) {
        return new TreeMap(comparator);
    }

    public static ImmutableSortedMap.a K(Comparator comparator) {
        return new ImmutableSortedMap.a(comparator);
    }

    public static void L(Function function, Function function2, ImmutableSortedMap.a aVar, Object obj) {
        aVar.h(function.apply(obj), function2.apply(obj));
    }

    public static ImmutableSortedSet.a M(Comparator comparator) {
        return new ImmutableSortedSet.a(comparator);
    }

    public static Collector N(final Function function, final Function function2) {
        xd8.o(function);
        xd8.o(function2);
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return new ImmutableBiMap.a();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                f.B(function, function2, (ImmutableBiMap.a) obj, obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableBiMap.a) obj).e((ImmutableBiMap.a) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((ImmutableBiMap.a) obj).d();
            }
        }, new Collector.Characteristics[0]);
    }

    public static Collector O() {
        return a;
    }

    public static Collector P(final Function function, final Function function2) {
        xd8.p(function, "keyFunction");
        xd8.p(function2, "valueFunction");
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return ImmutableListMultimap.builder();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                f.C(function, function2, (ImmutableListMultimap.a) obj, obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableListMultimap.a) obj).l((ImmutableListMultimap.a) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((ImmutableListMultimap.a) obj).k();
            }
        }, new Collector.Characteristics[0]);
    }

    public static Collector Q(final Function function, final Function function2) {
        xd8.o(function);
        xd8.o(function2);
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return new ImmutableMap.b();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                f.D(function, function2, (ImmutableMap.b) obj, obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableMap.b) obj).e((ImmutableMap.b) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((ImmutableMap.b) obj).d();
            }
        }, new Collector.Characteristics[0]);
    }

    public static Collector R(Function function, Function function2, BinaryOperator binaryOperator) {
        xd8.o(function);
        xd8.o(function2);
        xd8.o(binaryOperator);
        return Collectors.collectingAndThen(Collectors.toMap(function, function2, binaryOperator, new Supplier() {
            @Override
            public final Object get() {
                return new LinkedHashMap();
            }
        }), new Function() {
            @Override
            public final Object apply(Object obj) {
                return ImmutableMap.copyOf((Map) obj);
            }
        });
    }

    public static Collector S(final Function function, final ToIntFunction toIntFunction) {
        xd8.o(function);
        xd8.o(toIntFunction);
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return LinkedHashMultiset.create();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                f.E(function, toIntFunction, (j) obj, obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return f.F((j) obj, (j) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return f.G((j) obj);
            }
        }, new Collector.Characteristics[0]);
    }

    public static Collector T(final Function function, final Function function2) {
        xd8.o(function);
        xd8.o(function2);
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return ImmutableRangeMap.builder();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                f.H(function, function2, (ImmutableRangeMap.a) obj, obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableRangeMap.a) obj).b((ImmutableRangeMap.a) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((ImmutableRangeMap.a) obj).a();
            }
        }, new Collector.Characteristics[0]);
    }

    public static Collector U() {
        return c;
    }

    public static Collector V() {
        return b;
    }

    public static Collector W(final Function function, final Function function2) {
        xd8.p(function, "keyFunction");
        xd8.p(function2, "valueFunction");
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return ImmutableSetMultimap.builder();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                f.I(function, function2, (ImmutableSetMultimap.a) obj, obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableSetMultimap.a) obj).l((ImmutableSetMultimap.a) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((ImmutableSetMultimap.a) obj).k();
            }
        }, new Collector.Characteristics[0]);
    }

    public static Collector X(final Comparator comparator, final Function function, final Function function2) {
        xd8.o(comparator);
        xd8.o(function);
        xd8.o(function2);
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return f.K(comparator);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                f.L(function, function2, (ImmutableSortedMap.a) obj, obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableSortedMap.a) obj).p((ImmutableSortedMap.a) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((ImmutableSortedMap.a) obj).d();
            }
        }, Collector.Characteristics.UNORDERED);
    }

    public static Collector Y(final Comparator comparator, Function function, Function function2, BinaryOperator binaryOperator) {
        xd8.o(comparator);
        xd8.o(function);
        xd8.o(function2);
        xd8.o(binaryOperator);
        return Collectors.collectingAndThen(Collectors.toMap(function, function2, binaryOperator, new Supplier() {
            @Override
            public final Object get() {
                return f.J(comparator);
            }
        }), new Function() {
            @Override
            public final Object apply(Object obj) {
                return ImmutableSortedMap.copyOfSorted((TreeMap) obj);
            }
        });
    }

    public static Collector Z(final Comparator comparator) {
        xd8.o(comparator);
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return f.M(comparator);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((ImmutableSortedSet.a) obj).a(obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableSortedSet.a) obj).p((ImmutableSortedSet.a) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((ImmutableSortedSet.a) obj).e();
            }
        }, new Collector.Characteristics[0]);
    }

    public static Collector s(final Function function, final Function function2) {
        xd8.o(function);
        xd8.o(function2);
        Function function3 = new Function() {
            @Override
            public final Object apply(Object obj) {
                return f.v(function, obj);
            }
        };
        Function function4 = new Function() {
            @Override
            public final Object apply(Object obj) {
                return f.w(function2, obj);
            }
        };
        final MultimapBuilder.d dVarA = MultimapBuilder.c().a();
        Objects.requireNonNull(dVarA);
        return Collectors.collectingAndThen(u(function3, function4, new Supplier() {
            @Override
            public final Object get() {
                return dVarA.g();
            }
        }), new Function() {
            @Override
            public final Object apply(Object obj) {
                return ImmutableListMultimap.copyOf((at6) obj);
            }
        });
    }

    public static Collector t(final Function function, final Function function2) {
        xd8.o(function);
        xd8.o(function2);
        Function function3 = new Function() {
            @Override
            public final Object apply(Object obj) {
                return f.x(function, obj);
            }
        };
        Function function4 = new Function() {
            @Override
            public final Object apply(Object obj) {
                return f.y(function2, obj);
            }
        };
        final MultimapBuilder.f fVarD = MultimapBuilder.c().d();
        Objects.requireNonNull(fVarD);
        return Collectors.collectingAndThen(u(function3, function4, new Supplier() {
            @Override
            public final Object get() {
                return fVarD.g();
            }
        }), new Function() {
            @Override
            public final Object apply(Object obj) {
                return ImmutableSetMultimap.copyOf((at6) obj);
            }
        });
    }

    public static Collector u(final Function function, final Function function2, Supplier supplier) {
        xd8.o(function);
        xd8.o(function2);
        xd8.o(supplier);
        return Collector.of(supplier, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                f.z(function, function2, (at6) obj, obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return f.A((at6) obj, (at6) obj2);
            }
        }, new Collector.Characteristics[0]);
    }

    public static Object v(Function function, Object obj) {
        return xd8.o(function.apply(obj));
    }

    public static Stream w(Function function, Object obj) {
        return ((Stream) function.apply(obj)).peek(new d71());
    }

    public static Object x(Function function, Object obj) {
        return xd8.o(function.apply(obj));
    }

    public static Stream y(Function function, Object obj) {
        return ((Stream) function.apply(obj)).peek(new d71());
    }

    public static void z(Function function, Function function2, at6 at6Var, Object obj) {
        final Collection collection = at6Var.get(function.apply(obj));
        Stream stream = (Stream) function2.apply(obj);
        Objects.requireNonNull(collection);
        stream.forEachOrdered(new Consumer() {
            @Override
            public final void accept(Object obj2) {
                collection.add(obj2);
            }
        });
    }
}
