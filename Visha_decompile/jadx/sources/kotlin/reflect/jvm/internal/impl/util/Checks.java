package kotlin.reflect.jvm.internal.impl.util;

import defpackage.by6;
import defpackage.e74;
import defpackage.y45;
import java.util.Arrays;
import java.util.Collection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Regex;

public final class Checks {
    public final by6 a;
    public final Regex b;
    public final Collection c;
    public final e74 d;
    public final b[] e;

    public Checks(by6 by6Var, Regex regex, Collection collection, e74 e74Var, b... bVarArr) {
        this.a = by6Var;
        this.b = regex;
        this.c = collection;
        this.d = e74Var;
        this.e = bVarArr;
    }

    public final c a(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        y45.j(eVar, "functionDescriptor");
        for (b bVar : this.e) {
            String strA = bVar.a(eVar);
            if (strA != null) {
                return new c.b(strA);
            }
        }
        String str = (String) this.d.invoke(eVar);
        return str != null ? new c.b(str) : c.C0412c.b;
    }

    public final boolean b(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        y45.j(eVar, "functionDescriptor");
        if (this.a != null && !y45.e(eVar.getName(), this.a)) {
            return false;
        }
        if (this.b != null) {
            String strB = eVar.getName().b();
            y45.i(strB, "functionDescriptor.name.asString()");
            if (!this.b.matches(strB)) {
                return false;
            }
        }
        Collection collection = this.c;
        return collection == null || collection.contains(eVar.getName());
    }

    public Checks(by6 by6Var, b[] bVarArr, e74 e74Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(by6Var, bVarArr, (i & 4) != 0 ? new e74() {
            @Override
            public final Void invoke(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
                y45.j(eVar, "$this$null");
                return null;
            }
        } : e74Var);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Checks(by6 by6Var, b[] bVarArr, e74 e74Var) {
        this(by6Var, (Regex) null, (Collection) null, e74Var, (b[]) Arrays.copyOf(bVarArr, bVarArr.length));
        y45.j(by6Var, "name");
        y45.j(bVarArr, "checks");
        y45.j(e74Var, "additionalChecks");
    }

    public Checks(Regex regex, b[] bVarArr, e74 e74Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(regex, bVarArr, (i & 4) != 0 ? new e74() {
            @Override
            public final Void invoke(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
                y45.j(eVar, "$this$null");
                return null;
            }
        } : e74Var);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Checks(Regex regex, b[] bVarArr, e74 e74Var) {
        this((by6) null, regex, (Collection) null, e74Var, (b[]) Arrays.copyOf(bVarArr, bVarArr.length));
        y45.j(regex, "regex");
        y45.j(bVarArr, "checks");
        y45.j(e74Var, "additionalChecks");
    }

    public Checks(Collection collection, b[] bVarArr, e74 e74Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(collection, bVarArr, (i & 4) != 0 ? new e74() {
            @Override
            public final Void invoke(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
                y45.j(eVar, "$this$null");
                return null;
            }
        } : e74Var);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Checks(Collection collection, b[] bVarArr, e74 e74Var) {
        this((by6) null, (Regex) null, collection, e74Var, (b[]) Arrays.copyOf(bVarArr, bVarArr.length));
        y45.j(collection, "nameList");
        y45.j(bVarArr, "checks");
        y45.j(e74Var, "additionalChecks");
    }
}
