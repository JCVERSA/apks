package ob;

import com.google.firebase.components.DependencyException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

final class c0 implements e {

    private final Set f67743a;

    private final Set f67744b;

    private final Set f67745c;

    private final Set f67746d;

    private final Set f67747e;

    private final Set f67748f;

    private final e f67749g;

    private static class a implements hc.c {

        private final Set f67750a;

        private final hc.c f67751b;

        public a(Set set, hc.c cVar) {
            this.f67750a = set;
            this.f67751b = cVar;
        }
    }

    c0(c cVar, e eVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (r rVar : cVar.g()) {
            if (rVar.e()) {
                if (rVar.g()) {
                    hashSet4.add(rVar.c());
                } else {
                    hashSet.add(rVar.c());
                }
            } else if (rVar.d()) {
                hashSet3.add(rVar.c());
            } else if (rVar.g()) {
                hashSet5.add(rVar.c());
            } else {
                hashSet2.add(rVar.c());
            }
        }
        if (!cVar.k().isEmpty()) {
            hashSet.add(b0.b(hc.c.class));
        }
        this.f67743a = Collections.unmodifiableSet(hashSet);
        this.f67744b = Collections.unmodifiableSet(hashSet2);
        this.f67745c = Collections.unmodifiableSet(hashSet3);
        this.f67746d = Collections.unmodifiableSet(hashSet4);
        this.f67747e = Collections.unmodifiableSet(hashSet5);
        this.f67748f = cVar.k();
        this.f67749g = eVar;
    }

    @Override
    public Object a(Class cls) {
        if (!this.f67743a.contains(b0.b(cls))) {
            throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", cls));
        }
        Object objA = this.f67749g.a(cls);
        return !cls.equals(hc.c.class) ? objA : new a(this.f67748f, (hc.c) objA);
    }

    @Override
    public kc.a b(b0 b0Var) {
        if (this.f67745c.contains(b0Var)) {
            return this.f67749g.b(b0Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Deferred<%s>.", b0Var));
    }

    @Override
    public kc.b c(b0 b0Var) {
        if (this.f67744b.contains(b0Var)) {
            return this.f67749g.c(b0Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<%s>.", b0Var));
    }

    @Override
    public Set d(b0 b0Var) {
        if (this.f67746d.contains(b0Var)) {
            return this.f67749g.d(b0Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Set<%s>.", b0Var));
    }

    @Override
    public Set e(Class cls) {
        return d.e(this, cls);
    }

    @Override
    public Object f(b0 b0Var) {
        if (this.f67743a.contains(b0Var)) {
            return this.f67749g.f(b0Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", b0Var));
    }

    @Override
    public kc.b g(b0 b0Var) {
        if (this.f67747e.contains(b0Var)) {
            return this.f67749g.g(b0Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", b0Var));
    }

    @Override
    public kc.b h(Class cls) {
        return c(b0.b(cls));
    }

    @Override
    public kc.a i(Class cls) {
        return b(b0.b(cls));
    }
}
