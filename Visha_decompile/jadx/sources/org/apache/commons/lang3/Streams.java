package org.apache.commons.lang3;

import defpackage.ez9;
import defpackage.xac;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;
import java.util.stream.Stream;
import org.apache.commons.lang3.Streams;

@Deprecated
public class Streams {

    @Deprecated
    public static class ArrayCollector<O> implements Collector<O, List<O>, O[]> {
        private static final Set<Collector.Characteristics> characteristics = Collections.emptySet();
        private final Class<O> elementType;

        public ArrayCollector(Class<O> cls) {
            this.elementType = cls;
        }

        public static List lambda$combiner$0(List list, List list2) {
            list.addAll(list2);
            return list;
        }

        public Object[] lambda$finisher$1(List list) {
            return list.toArray((Object[]) Array.newInstance((Class<?>) this.elementType, list.size()));
        }

        @Override
        public BiConsumer<List<O>, O> accumulator() {
            return new ez9();
        }

        @Override
        public Set<Collector.Characteristics> characteristics() {
            return characteristics;
        }

        @Override
        public BinaryOperator<List<O>> combiner() {
            return new BinaryOperator() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return Streams.ArrayCollector.lambda$combiner$0((List) obj, (List) obj2);
                }
            };
        }

        @Override
        public Function<List<O>, O[]> finisher() {
            return new Function() {
                @Override
                public final Object apply(Object obj) {
                    return this.a.lambda$finisher$1((List) obj);
                }
            };
        }

        @Override
        public Supplier<List<O>> supplier() {
            return new xac();
        }
    }

    public static <O> FailableStream<O> stream(Stream<O> stream) {
        return new FailableStream<>(stream);
    }

    public static <O> Collector<O, ?, O[]> toArray(Class<O> cls) {
        return new ArrayCollector(cls);
    }

    @Deprecated
    public static class FailableStream<O> {
        private Stream<O> stream;
        private boolean terminated;

        public FailableStream(Stream<O> stream) {
            this.stream = stream;
        }

        public boolean allMatch(Functions.FailablePredicate<O, ?> failablePredicate) {
            assertNotTerminated();
            return stream().allMatch(Functions.asPredicate(failablePredicate));
        }

        public boolean anyMatch(Functions.FailablePredicate<O, ?> failablePredicate) {
            assertNotTerminated();
            return stream().anyMatch(Functions.asPredicate(failablePredicate));
        }

        public void assertNotTerminated() {
            if (this.terminated) {
                throw new IllegalStateException("This stream is already terminated.");
            }
        }

        public <A, R> R collect(Collector<? super O, A, R> collector) {
            makeTerminated();
            return (R) stream().collect(collector);
        }

        public FailableStream<O> filter(Functions.FailablePredicate<O, ?> failablePredicate) {
            assertNotTerminated();
            this.stream = this.stream.filter(Functions.asPredicate(failablePredicate));
            return this;
        }

        public void forEach(Functions.FailableConsumer<O, ?> failableConsumer) {
            makeTerminated();
            stream().forEach(Functions.asConsumer(failableConsumer));
        }

        public void makeTerminated() {
            assertNotTerminated();
            this.terminated = true;
        }

        public <R> FailableStream<R> map(Functions.FailableFunction<O, R, ?> failableFunction) {
            assertNotTerminated();
            return new FailableStream<>(this.stream.map(Functions.asFunction(failableFunction)));
        }

        public O reduce(O o, BinaryOperator<O> binaryOperator) {
            makeTerminated();
            return stream().reduce(o, binaryOperator);
        }

        public Stream<O> stream() {
            return this.stream;
        }

        public <A, R> R collect(Supplier<R> supplier, BiConsumer<R, ? super O> biConsumer, BiConsumer<R, R> biConsumer2) {
            makeTerminated();
            return (R) stream().collect(supplier, biConsumer, biConsumer2);
        }
    }

    public static <O> FailableStream<O> stream(Collection<O> collection) {
        return stream(collection.stream());
    }
}
