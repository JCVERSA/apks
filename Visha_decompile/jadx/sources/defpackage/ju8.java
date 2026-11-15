package defpackage;

import com.google.firebase.components.DependencyException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class ju8 implements ic1 {
    public final Set a;
    public final Set b;
    public final Set c;
    public final Set d;
    public final Set e;
    public final Set f;
    public final ic1 g;

    public static class a implements kk8 {
        public final Set a;
        public final kk8 b;

        public a(Set set, kk8 kk8Var) {
            this.a = set;
            this.b = kk8Var;
        }
    }

    public ju8(zb1 zb1Var, ic1 ic1Var) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (k82 k82Var : zb1Var.g()) {
            if (k82Var.d()) {
                if (k82Var.f()) {
                    hashSet4.add(k82Var.b());
                } else {
                    hashSet.add(k82Var.b());
                }
            } else if (k82Var.c()) {
                hashSet3.add(k82Var.b());
            } else if (k82Var.f()) {
                hashSet5.add(k82Var.b());
            } else {
                hashSet2.add(k82Var.b());
            }
        }
        if (!zb1Var.k().isEmpty()) {
            hashSet.add(vk8.b(kk8.class));
        }
        this.a = Collections.unmodifiableSet(hashSet);
        this.b = Collections.unmodifiableSet(hashSet2);
        this.c = Collections.unmodifiableSet(hashSet3);
        this.d = Collections.unmodifiableSet(hashSet4);
        this.e = Collections.unmodifiableSet(hashSet5);
        this.f = zb1Var.k();
        this.g = ic1Var;
    }

    @Override
    public Object a(Class cls) {
        if (!this.a.contains(vk8.b(cls))) {
            throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", cls));
        }
        Object objA = this.g.a(cls);
        return !cls.equals(kk8.class) ? objA : new a(this.f, (kk8) objA);
    }

    @Override
    public pj8 b(vk8 vk8Var) {
        if (this.e.contains(vk8Var)) {
            return this.g.b(vk8Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", vk8Var));
    }

    @Override
    public Object d(vk8 vk8Var) {
        if (this.a.contains(vk8Var)) {
            return this.g.d(vk8Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", vk8Var));
    }

    @Override
    public pj8 e(Class cls) {
        return f(vk8.b(cls));
    }

    @Override
    public pj8 f(vk8 vk8Var) {
        if (this.b.contains(vk8Var)) {
            return this.g.f(vk8Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<%s>.", vk8Var));
    }

    @Override
    public Set g(vk8 vk8Var) {
        if (this.d.contains(vk8Var)) {
            return this.g.g(vk8Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Set<%s>.", vk8Var));
    }
}
