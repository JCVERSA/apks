package com.google.common.base;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;

public abstract class Suppliers {

    static class MemoizingSupplier<T> implements q, Serializable {
        private static final long serialVersionUID = 0;

        private transient Object f29388a = new Object();
        final q delegate;
        volatile transient boolean initialized;
        transient T value;

        MemoizingSupplier(q qVar) {
            this.delegate = (q) m.o(qVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.f29388a = new Object();
        }

        @Override
        public T get() {
            if (!this.initialized) {
                synchronized (this.f29388a) {
                    try {
                        if (!this.initialized) {
                            T t10 = (T) this.delegate.get();
                            this.value = t10;
                            this.initialized = true;
                            return t10;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            return (T) i.a(this.value);
        }

        public String toString() {
            Object obj;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Suppliers.memoize(");
            if (this.initialized) {
                obj = "<supplier that returned " + this.value + ">";
            } else {
                obj = this.delegate;
            }
            sb2.append(obj);
            sb2.append(")");
            return sb2.toString();
        }
    }

    private static class SupplierOfInstance<T> implements q, Serializable {
        private static final long serialVersionUID = 0;
        final T instance;

        SupplierOfInstance(T t10) {
            this.instance = t10;
        }

        public boolean equals(Object obj) {
            if (obj instanceof SupplierOfInstance) {
                return j.a(this.instance, ((SupplierOfInstance) obj).instance);
            }
            return false;
        }

        @Override
        public T get() {
            return this.instance;
        }

        public int hashCode() {
            return j.b(this.instance);
        }

        public String toString() {
            return "Suppliers.ofInstance(" + this.instance + ")";
        }
    }

    static class a implements q {

        private static final q f29389d = new q() {
            @Override
            public final Object get() {
                return Suppliers.a.b();
            }
        };

        private final Object f29390a = new Object();

        private volatile q f29391b;

        private Object f29392c;

        a(q qVar) {
            this.f29391b = (q) m.o(qVar);
        }

        public static Void b() {
            throw new IllegalStateException();
        }

        @Override
        public Object get() {
            q qVar = this.f29391b;
            q qVar2 = f29389d;
            if (qVar != qVar2) {
                synchronized (this.f29390a) {
                    try {
                        if (this.f29391b != qVar2) {
                            Object obj = this.f29391b.get();
                            this.f29392c = obj;
                            this.f29391b = qVar2;
                            return obj;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            return i.a(this.f29392c);
        }

        public String toString() {
            Object obj = this.f29391b;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Suppliers.memoize(");
            if (obj == f29389d) {
                obj = "<supplier that returned " + this.f29392c + ">";
            }
            sb2.append(obj);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static q a(q qVar) {
        if ((qVar instanceof a) || (qVar instanceof MemoizingSupplier)) {
            return qVar;
        }
        return qVar instanceof Serializable ? new MemoizingSupplier(qVar) : new a(qVar);
    }

    public static q b(Object obj) {
        return new SupplierOfInstance(obj);
    }
}
