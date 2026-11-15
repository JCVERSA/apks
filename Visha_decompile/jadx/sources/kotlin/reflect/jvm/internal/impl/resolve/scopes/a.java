package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import defpackage.bq9;
import defpackage.by6;
import defpackage.d81;
import defpackage.e74;
import defpackage.hi;
import defpackage.or5;
import defpackage.px0;
import defpackage.qx0;
import defpackage.u82;
import defpackage.y29;
import defpackage.y45;
import defpackage.y71;
import defpackage.ye9;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a implements MemberScope {
    public static final C0406a d = new C0406a(null);
    public final String b;
    public final MemberScope[] c;

    public static final class C0406a {
        public C0406a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MemberScope a(String str, Iterable iterable) {
            y45.j(str, "debugName");
            y45.j(iterable, "scopes");
            bq9 bq9Var = new bq9();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                MemberScope memberScope = (MemberScope) it.next();
                if (memberScope != MemberScope.a.b) {
                    if (memberScope instanceof a) {
                        d81.D(bq9Var, ((a) memberScope).c);
                    } else {
                        bq9Var.add(memberScope);
                    }
                }
            }
            return b(str, bq9Var);
        }

        public final MemberScope b(String str, List list) {
            y45.j(str, "debugName");
            y45.j(list, "scopes");
            int size = list.size();
            if (size != 0) {
                return size != 1 ? new a(str, (MemberScope[]) list.toArray(new MemberScope[0]), null) : (MemberScope) list.get(0);
            }
            return MemberScope.a.b;
        }

        public C0406a() {
        }
    }

    public a(String str, MemberScope[] memberScopeArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, memberScopeArr);
    }

    @Override
    public Set a() {
        MemberScope[] memberScopeArr = this.c;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : memberScopeArr) {
            d81.C(linkedHashSet, memberScope.a());
        }
        return linkedHashSet;
    }

    @Override
    public Collection b(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        MemberScope[] memberScopeArr = this.c;
        int length = memberScopeArr.length;
        if (length == 0) {
            return y71.k();
        }
        if (length == 1) {
            return memberScopeArr[0].b(by6Var, or5Var);
        }
        Collection collectionA = null;
        for (MemberScope memberScope : memberScopeArr) {
            collectionA = y29.a(collectionA, memberScope.b(by6Var, or5Var));
        }
        return collectionA == null ? ye9.f() : collectionA;
    }

    @Override
    public Collection c(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        MemberScope[] memberScopeArr = this.c;
        int length = memberScopeArr.length;
        if (length == 0) {
            return y71.k();
        }
        if (length == 1) {
            return memberScopeArr[0].c(by6Var, or5Var);
        }
        Collection collectionA = null;
        for (MemberScope memberScope : memberScopeArr) {
            collectionA = y29.a(collectionA, memberScope.c(by6Var, or5Var));
        }
        return collectionA == null ? ye9.f() : collectionA;
    }

    @Override
    public Set d() {
        MemberScope[] memberScopeArr = this.c;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : memberScopeArr) {
            d81.C(linkedHashSet, memberScope.d());
        }
        return linkedHashSet;
    }

    @Override
    public Set e() {
        return b.a(hi.J(this.c));
    }

    @Override
    public px0 f(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        px0 px0Var = null;
        for (MemberScope memberScope : this.c) {
            px0 px0VarF = memberScope.f(by6Var, or5Var);
            if (px0VarF != null) {
                if (!(px0VarF instanceof qx0) || !((qx0) px0VarF).m0()) {
                    return px0VarF;
                }
                if (px0Var == null) {
                    px0Var = px0VarF;
                }
            }
        }
        return px0Var;
    }

    @Override
    public Collection g(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        MemberScope[] memberScopeArr = this.c;
        int length = memberScopeArr.length;
        if (length == 0) {
            return y71.k();
        }
        if (length == 1) {
            return memberScopeArr[0].g(u82Var, e74Var);
        }
        Collection collectionA = null;
        for (MemberScope memberScope : memberScopeArr) {
            collectionA = y29.a(collectionA, memberScope.g(u82Var, e74Var));
        }
        return collectionA == null ? ye9.f() : collectionA;
    }

    public String toString() {
        return this.b;
    }

    public a(String str, MemberScope[] memberScopeArr) {
        this.b = str;
        this.c = memberScopeArr;
    }
}
