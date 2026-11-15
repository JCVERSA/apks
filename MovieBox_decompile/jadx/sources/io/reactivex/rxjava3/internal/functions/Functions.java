package io.reactivex.rxjava3.internal.functions;

import io.reactivex.rxjava3.exceptions.OnErrorNotImplementedException;
import java.util.Comparator;
import java.util.concurrent.Callable;

public abstract class Functions {

    static final yx.h f62323a = new g();

    public static final Runnable f62324b = new EmptyRunnable();

    public static final yx.a f62325c = new b();

    static final yx.f f62326d = new c();

    public static final yx.f f62327e = new e();

    public static final yx.f f62328f = new k();

    public static final yx.i f62329g = new d();

    static final yx.j f62330h = new l();

    static final yx.j f62331i = new f();

    static final yx.k f62332j = new j();

    public static final yx.f f62333k = new i();

    static final class EmptyRunnable implements Runnable {
        EmptyRunnable() {
        }

        @Override
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    enum NaturalComparator implements Comparator<Object> {
        INSTANCE;

        @Override
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    static final class a implements yx.h {

        final yx.g f62334a;

        a(yx.g gVar) {
            this.f62334a = gVar;
        }

        @Override
        public Object apply(Object[] objArr) {
            if (objArr.length == 3) {
                return this.f62334a.a(objArr[0], objArr[1], objArr[2]);
            }
            throw new IllegalArgumentException("Array of size 3 expected but got " + objArr.length);
        }
    }

    static final class b implements yx.a {
        b() {
        }

        @Override
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    static final class c implements yx.f {
        c() {
        }

        @Override
        public void accept(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    static final class d implements yx.i {
        d() {
        }
    }

    static final class e implements yx.f {
        e() {
        }

        @Override
        public void accept(Throwable th2) {
            dy.a.r(th2);
        }
    }

    static final class f implements yx.j {
        f() {
        }

        @Override
        public boolean a(Object obj) {
            return false;
        }
    }

    static final class g implements yx.h {
        g() {
        }

        @Override
        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    static final class h implements Callable, yx.k, yx.h {

        final Object f62335a;

        h(Object obj) {
            this.f62335a = obj;
        }

        @Override
        public Object apply(Object obj) {
            return this.f62335a;
        }

        @Override
        public Object call() {
            return this.f62335a;
        }

        @Override
        public Object get() {
            return this.f62335a;
        }
    }

    static final class i implements yx.f {
        i() {
        }

        @Override
        public void accept(i00.d dVar) {
            dVar.request(Long.MAX_VALUE);
        }
    }

    static final class j implements yx.k {
        j() {
        }

        @Override
        public Object get() {
            return null;
        }
    }

    static final class k implements yx.f {
        k() {
        }

        @Override
        public void accept(Throwable th2) {
            dy.a.r(new OnErrorNotImplementedException(th2));
        }
    }

    static final class l implements yx.j {
        l() {
        }

        @Override
        public boolean a(Object obj) {
            return true;
        }
    }

    public static yx.f a() {
        return f62326d;
    }

    public static yx.k b(Object obj) {
        return new h(obj);
    }

    public static yx.h c(yx.g gVar) {
        return new a(gVar);
    }
}
