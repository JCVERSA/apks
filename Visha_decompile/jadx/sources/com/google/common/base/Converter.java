package com.google.common.base;

import defpackage.o74;
import defpackage.t37;
import defpackage.xd8;
import java.io.Serializable;
import java.util.Iterator;

public abstract class Converter implements o74 {
    public transient Converter b;
    private final boolean handleNullAutomatically;

    public static final class ConverterComposition<A, B, C> extends Converter implements Serializable {
        private static final long serialVersionUID = 0;
        final Converter first;
        final Converter second;

        public ConverterComposition(Converter converter, Converter converter2) {
            this.first = converter;
            this.second = converter2;
        }

        @Override
        public A correctedDoBackward(C c) {
            return (A) this.first.correctedDoBackward(this.second.correctedDoBackward(c));
        }

        @Override
        public C correctedDoForward(A a) {
            return (C) this.second.correctedDoForward(this.first.correctedDoForward(a));
        }

        @Override
        public A doBackward(C c) {
            throw new AssertionError();
        }

        @Override
        public C doForward(A a) {
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

    public static final class FunctionBasedConverter<A, B> extends Converter implements Serializable {
        private final o74 backwardFunction;
        private final o74 forwardFunction;

        public FunctionBasedConverter(o74 o74Var, o74 o74Var2, a aVar) {
            this(o74Var, o74Var2);
        }

        @Override
        public A doBackward(B b) {
            return (A) this.backwardFunction.apply(b);
        }

        @Override
        public B doForward(A a) {
            return (B) this.forwardFunction.apply(a);
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

        public FunctionBasedConverter(o74 o74Var, o74 o74Var2) {
            this.forwardFunction = (o74) xd8.o(o74Var);
            this.backwardFunction = (o74) xd8.o(o74Var2);
        }
    }

    public static final class IdentityConverter<T> extends Converter implements Serializable {
        static final Converter INSTANCE = new IdentityConverter();
        private static final long serialVersionUID = 0;

        private IdentityConverter() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        @Override
        public <S> Converter doAndThen(Converter converter) {
            return (Converter) xd8.p(converter, "otherConverter");
        }

        @Override
        public T doBackward(T t) {
            return t;
        }

        @Override
        public T doForward(T t) {
            return t;
        }

        @Override
        public IdentityConverter<T> reverse() {
            return this;
        }

        public String toString() {
            return "Converter.identity()";
        }
    }

    public static final class ReverseConverter<A, B> extends Converter implements Serializable {
        private static final long serialVersionUID = 0;
        final Converter original;

        public ReverseConverter(Converter converter) {
            this.original = converter;
        }

        @Override
        public B correctedDoBackward(A a) {
            return (B) this.original.correctedDoForward(a);
        }

        @Override
        public A correctedDoForward(B b) {
            return (A) this.original.correctedDoBackward(b);
        }

        @Override
        public B doBackward(A a) {
            throw new AssertionError();
        }

        @Override
        public A doForward(B b) {
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

    public class a implements Iterable {
        public final Iterable b;
        public final Converter c;

        public class C0095a implements Iterator {
            public final Iterator b;

            public C0095a() {
                this.b = a.this.b.iterator();
            }

            @Override
            public boolean hasNext() {
                return this.b.hasNext();
            }

            @Override
            public Object next() {
                return a.this.c.convert(this.b.next());
            }

            @Override
            public void remove() {
                this.b.remove();
            }
        }

        public a(Converter converter, Iterable iterable) {
            this.b = iterable;
            this.c = converter;
        }

        @Override
        public Iterator iterator() {
            return new C0095a();
        }
    }

    public Converter() {
        this(true);
    }

    public static <A, B> Converter from(o74 o74Var, o74 o74Var2) {
        return new FunctionBasedConverter(o74Var, o74Var2, null);
    }

    public static <T> Converter identity() {
        return (IdentityConverter) IdentityConverter.INSTANCE;
    }

    public final Object a(Object obj) {
        return doBackward(t37.a(obj));
    }

    public final <C> Converter andThen(Converter converter) {
        return doAndThen(converter);
    }

    @Override
    @Deprecated
    public final Object apply(Object obj) {
        return convert(obj);
    }

    public final Object b(Object obj) {
        return doForward(t37.a(obj));
    }

    public final Object convert(Object obj) {
        return correctedDoForward(obj);
    }

    public Iterable<Object> convertAll(Iterable<Object> iterable) {
        xd8.p(iterable, "fromIterable");
        return new a(this, iterable);
    }

    public Object correctedDoBackward(Object obj) {
        if (!this.handleNullAutomatically) {
            return a(obj);
        }
        if (obj == null) {
            return null;
        }
        return xd8.o(doBackward(obj));
    }

    public Object correctedDoForward(Object obj) {
        if (!this.handleNullAutomatically) {
            return b(obj);
        }
        if (obj == null) {
            return null;
        }
        return xd8.o(doForward(obj));
    }

    public <C> Converter doAndThen(Converter converter) {
        return new ConverterComposition(this, (Converter) xd8.o(converter));
    }

    public abstract Object doBackward(Object obj);

    public abstract Object doForward(Object obj);

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public Converter reverse() {
        Converter converter = this.b;
        if (converter != null) {
            return converter;
        }
        ReverseConverter reverseConverter = new ReverseConverter(this);
        this.b = reverseConverter;
        return reverseConverter;
    }

    public Converter(boolean z) {
        this.handleNullAutomatically = z;
    }
}
