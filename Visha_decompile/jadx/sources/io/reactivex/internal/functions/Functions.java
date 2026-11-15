package io.reactivex.internal.functions;

import defpackage.ac7;
import defpackage.be0;
import defpackage.d5;
import defpackage.dr5;
import defpackage.f2a;
import defpackage.ie8;
import defpackage.t74;
import defpackage.v74;
import defpackage.yw8;
import defpackage.zf1;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;

public abstract class Functions {
    public static final t74 a = new i();
    public static final Runnable b = new EmptyRunnable();
    public static final d5 c = new d();
    public static final zf1 d = new e();
    public static final zf1 e = new g();
    public static final zf1 f = new m();
    public static final dr5 g = new f();
    public static final ie8 h = new n();
    public static final ie8 i = new h();
    public static final Callable j = new l();
    public static final Comparator k = new NaturalObjectComparator();
    public static final zf1 l = new k();

    public static final class EmptyRunnable implements Runnable {
        @Override
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    public enum HashSetCallable implements Callable<Set<Object>> {
        INSTANCE;

        @Override
        public Set<Object> call() throws Exception {
            return new HashSet();
        }
    }

    public enum NaturalComparator implements Comparator<Object> {
        INSTANCE;

        @Override
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    public static final class NaturalObjectComparator implements Comparator<Object> {
        @Override
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    public static final class a implements t74 {
        public final be0 b;

        public a(be0 be0Var) {
            this.b = be0Var;
        }

        @Override
        public Object apply(Object[] objArr) {
            if (objArr.length == 2) {
                return this.b.apply(objArr[0], objArr[1]);
            }
            throw new IllegalArgumentException("Array of size 2 expected but got " + objArr.length);
        }
    }

    public static final class b implements t74 {
        public final v74 b;

        public b(v74 v74Var) {
            this.b = v74Var;
        }

        @Override
        public Object apply(Object[] objArr) {
            if (objArr.length == 3) {
                return this.b.apply(objArr[0], objArr[1], objArr[2]);
            }
            throw new IllegalArgumentException("Array of size 3 expected but got " + objArr.length);
        }
    }

    public static final class c implements Callable {
        public final int b;

        public c(int i) {
            this.b = i;
        }

        @Override
        public List call() {
            return new ArrayList(this.b);
        }
    }

    public static final class d implements d5 {
        @Override
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    public static final class e implements zf1 {
        @Override
        public void accept(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    public static final class f implements dr5 {
    }

    public static final class g implements zf1 {
        @Override
        public void accept(Throwable th) {
            yw8.s(th);
        }
    }

    public static final class h implements ie8 {
        @Override
        public boolean test(Object obj) {
            return false;
        }
    }

    public static final class i implements t74 {
        @Override
        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    public static final class j implements Callable, t74 {
        public final Object b;

        public j(Object obj) {
            this.b = obj;
        }

        @Override
        public Object apply(Object obj) {
            return this.b;
        }

        @Override
        public Object call() {
            return this.b;
        }
    }

    public static final class k implements zf1 {
        @Override
        public void accept(f2a f2aVar) {
            f2aVar.request(Long.MAX_VALUE);
        }
    }

    public static final class l implements Callable {
        @Override
        public Object call() {
            return null;
        }
    }

    public static final class m implements zf1 {
        @Override
        public void accept(Throwable th) {
            yw8.s(new OnErrorNotImplementedException(th));
        }
    }

    public static final class n implements ie8 {
        @Override
        public boolean test(Object obj) {
            return true;
        }
    }

    public static ie8 a() {
        return h;
    }

    public static Callable b(int i2) {
        return new c(i2);
    }

    public static Callable c() {
        return HashSetCallable.INSTANCE;
    }

    public static zf1 d() {
        return d;
    }

    public static t74 e() {
        return a;
    }

    public static Callable f(Object obj) {
        return new j(obj);
    }

    public static t74 g(be0 be0Var) {
        ac7.d(be0Var, "f is null");
        return new a(be0Var);
    }

    public static t74 h(v74 v74Var) {
        ac7.d(v74Var, "f is null");
        return new b(v74Var);
    }
}
