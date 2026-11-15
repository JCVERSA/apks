package com.google.common.base;

import java.io.Serializable;
import java.util.Iterator;

public abstract class Converter implements f {

    private transient Converter f29378a;
    private final boolean handleNullAutomatically;

    private static final class ConverterComposition<A, B, C> extends Converter implements Serializable {
        private static final long serialVersionUID = 0;
        final Converter first;
        final Converter second;

        ConverterComposition(Converter converter, Converter converter2) {
            this.first = converter;
            this.second = converter2;
        }

        @Override
        A correctedDoBackward(C c10) {
            return (A) this.first.correctedDoBackward(this.second.correctedDoBackward(c10));
        }

        @Override
        C correctedDoForward(A a10) {
            return (C) this.second.correctedDoForward(this.first.correctedDoForward(a10));
        }

        @Override
        protected A doBackward(C c10) {
            throw new AssertionError();
        }

        @Override
        protected C doForward(A a10) {
            throw new AssertionError();
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof ConverterComposition)) {
                return false;
            }
            ConverterComposition converterComposition = (ConverterComposition) obj;
            return this.first.equals(converterComposition.first) && this.second.equals(converterComposition.second);
        }

        public int hashCode() {
            return (this.first.hashCode() * 31) + this.second.hashCode();
        }

        public String toString() {
            return this.first + ".andThen(" + this.second + ")";
        }
    }

    private static final class FunctionBasedConverter<A, B> extends Converter implements Serializable {
        private final f backwardFunction;
        private final f forwardFunction;

        FunctionBasedConverter(f fVar, f fVar2, a aVar) {
            this(fVar, fVar2);
        }

        @Override
        protected A doBackward(B b10) {
            return (A) this.backwardFunction.apply(b10);
        }

        @Override
        protected B doForward(A a10) {
            return (B) this.forwardFunction.apply(a10);
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof FunctionBasedConverter)) {
                return false;
            }
            FunctionBasedConverter functionBasedConverter = (FunctionBasedConverter) obj;
            return this.forwardFunction.equals(functionBasedConverter.forwardFunction) && this.backwardFunction.equals(functionBasedConverter.backwardFunction);
        }

        public int hashCode() {
            return (this.forwardFunction.hashCode() * 31) + this.backwardFunction.hashCode();
        }

        public String toString() {
            return "Converter.from(" + this.forwardFunction + ", " + this.backwardFunction + ")";
        }

        private FunctionBasedConverter(f fVar, f fVar2) {
            this.forwardFunction = (f) m.o(fVar);
            this.backwardFunction = (f) m.o(fVar2);
        }
    }

    private static final class IdentityConverter<T> extends Converter implements Serializable {
        static final Converter INSTANCE = new IdentityConverter();
        private static final long serialVersionUID = 0;

        private IdentityConverter() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        @Override
        <S> Converter doAndThen(Converter converter) {
            return (Converter) m.p(converter, "otherConverter");
        }

        @Override
        protected T doBackward(T t10) {
            return t10;
        }

        @Override
        protected T doForward(T t10) {
            return t10;
        }

        @Override
        public IdentityConverter<T> reverse() {
            return this;
        }

        public String toString() {
            return "Converter.identity()";
        }
    }

    private static final class ReverseConverter<A, B> extends Converter implements Serializable {
        private static final long serialVersionUID = 0;
        final Converter original;

        ReverseConverter(Converter converter) {
            this.original = converter;
        }

        @Override
        B correctedDoBackward(A a10) {
            return (B) this.original.correctedDoForward(a10);
        }

        @Override
        A correctedDoForward(B b10) {
            return (A) this.original.correctedDoBackward(b10);
        }

        @Override
        protected B doBackward(A a10) {
            throw new AssertionError();
        }

        @Override
        protected A doForward(B b10) {
            throw new AssertionError();
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof ReverseConverter) {
                return this.original.equals(((ReverseConverter) obj).original);
            }
            return false;
        }

        public int hashCode() {
            return ~this.original.hashCode();
        }

        @Override
        public Converter reverse() {
            return this.original;
        }

        public String toString() {
            return this.original + ".reverse()";
        }
    }

    class a implements Iterable {

        final Iterable f29379a;

        final Converter f29380b;

        class C0375a implements Iterator {

            private final Iterator f29381a;

            C0375a() {
                this.f29381a = a.this.f29379a.iterator();
            }

            @Override
            public boolean hasNext() {
                return this.f29381a.hasNext();
            }

            @Override
            public Object next() {
                return a.this.f29380b.convert(this.f29381a.next());
            }

            @Override
            public void remove() {
                this.f29381a.remove();
            }
        }

        a(Converter converter, Iterable iterable) {
            this.f29379a = iterable;
            this.f29380b = converter;
        }

        @Override
        public Iterator iterator() {
            return new C0375a();
        }
    }

    protected Converter() {
        this(true);
    }

    private Object a(Object obj) {
        return doBackward(i.a(obj));
    }

    private Object b(Object obj) {
        return doForward(i.a(obj));
    }

    public static <A, B> Converter from(f fVar, f fVar2) {
        return new FunctionBasedConverter(fVar, fVar2, null);
    }

    public static <T> Converter identity() {
        return (IdentityConverter) IdentityConverter.INSTANCE;
    }

    public final <C> Converter andThen(Converter converter) {
        return doAndThen(converter);
    }

    @Override
    @Deprecated
    public final Object apply(Object obj) {
        return convert(obj);
    }

    public final Object convert(Object obj) {
        return correctedDoForward(obj);
    }

    public Iterable<Object> convertAll(Iterable<Object> iterable) {
        m.p(iterable, "fromIterable");
        return new a(this, iterable);
    }

    Object correctedDoBackward(Object obj) {
        if (!this.handleNullAutomatically) {
            return a(obj);
        }
        if (obj == null) {
            return null;
        }
        return m.o(doBackward(obj));
    }

    Object correctedDoForward(Object obj) {
        if (!this.handleNullAutomatically) {
            return b(obj);
        }
        if (obj == null) {
            return null;
        }
        return m.o(doForward(obj));
    }

    <C> Converter doAndThen(Converter converter) {
        return new ConverterComposition(this, (Converter) m.o(converter));
    }

    protected abstract Object doBackward(Object obj);

    protected abstract Object doForward(Object obj);

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public Converter reverse() {
        Converter converter = this.f29378a;
        if (converter != null) {
            return converter;
        }
        ReverseConverter reverseConverter = new ReverseConverter(this);
        this.f29378a = reverseConverter;
        return reverseConverter;
    }

    Converter(boolean z10) {
        this.handleNullAutomatically = z10;
    }
}
