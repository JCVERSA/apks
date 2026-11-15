package com.google.common.base;

import com.google.common.base.Suppliers;
import defpackage.t37;
import defpackage.w6a;
import defpackage.xd8;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;

public abstract class Suppliers {

    public static class MemoizingSupplier<T> implements w6a, Serializable {
        private static final long serialVersionUID = 0;
        public transient Object b = new Object();
        final w6a delegate;
        volatile transient boolean initialized;
        transient T value;

        public MemoizingSupplier(w6a w6aVar) {
            this.delegate = (w6a) xd8.o(w6aVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.b = new Object();
        }

        @Override
        public T get() {
            if (!this.initialized) {
                synchronized (this.b) {
                    try {
                        if (!this.initialized) {
                            T t = (T) this.delegate.get();
                            this.value = t;
                            this.initialized = true;
                            return t;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (T) t37.a(this.value);
        }

        public String toString() {
            Object obj;
            StringBuilder sb = new StringBuilder();
            sb.append("Suppliers.memoize(");
            if (this.initialized) {
                obj = "<supplier that returned " + this.value + ">";
            } else {
                obj = this.delegate;
            }
            sb.append(obj);
            sb.append(")");
            return sb.toString();
        }
    }

    public static class a implements w6a {
        public static final w6a e = new w6a() {
            @Override
            public final Object get() {
                return Suppliers.a.b();
            }
        };
        public final Object b = new Object();
        public volatile w6a c;
        public Object d;

        public a(w6a w6aVar) {
            this.c = (w6a) xd8.o(w6aVar);
        }

        public static Void b() {
            throw new IllegalStateException();
        }

        @Override
        public Object get() {
            w6a w6aVar = this.c;
            w6a w6aVar2 = e;
            if (w6aVar != w6aVar2) {
                synchronized (this.b) {
                    try {
                        if (this.c != w6aVar2) {
                            Object obj = this.c.get();
                            this.d = obj;
                            this.c = w6aVar2;
                            return obj;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return t37.a(this.d);
        }

        public String toString() {
            Object obj = this.c;
            StringBuilder sb = new StringBuilder();
            sb.append("Suppliers.memoize(");
            if (obj == e) {
                obj = "<supplier that returned " + this.d + ">";
            }
            sb.append(obj);
            sb.append(")");
            return sb.toString();
        }
    }

    public static w6a a(w6a w6aVar) {
        if ((w6aVar instanceof a) || (w6aVar instanceof MemoizingSupplier)) {
            return w6aVar;
        }
        return w6aVar instanceof Serializable ? new MemoizingSupplier(w6aVar) : new a(w6aVar);
    }
}
