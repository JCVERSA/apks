package defpackage;

import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeFlexibility;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;

public final class p85 extends pc3 {
    public final TypeUsage d;
    public final JavaTypeFlexibility e;
    public final boolean f;
    public final boolean g;
    public final Set h;
    public final sm9 i;

    public p85(TypeUsage typeUsage, JavaTypeFlexibility javaTypeFlexibility, boolean z, boolean z2, Set set, sm9 sm9Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeUsage, (i & 2) != 0 ? JavaTypeFlexibility.INFLEXIBLE : javaTypeFlexibility, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2, (i & 16) != 0 ? null : set, (i & 32) != 0 ? null : sm9Var);
    }

    public static p85 f(p85 p85Var, TypeUsage typeUsage, JavaTypeFlexibility javaTypeFlexibility, boolean z, boolean z2, Set set, sm9 sm9Var, int i, Object obj) {
        if ((i & 1) != 0) {
            typeUsage = p85Var.d;
        }
        if ((i & 2) != 0) {
            javaTypeFlexibility = p85Var.e;
        }
        JavaTypeFlexibility javaTypeFlexibility2 = javaTypeFlexibility;
        if ((i & 4) != 0) {
            z = p85Var.f;
        }
        boolean z3 = z;
        if ((i & 8) != 0) {
            z2 = p85Var.g;
        }
        boolean z4 = z2;
        if ((i & 16) != 0) {
            set = p85Var.h;
        }
        Set set2 = set;
        if ((i & 32) != 0) {
            sm9Var = p85Var.i;
        }
        return p85Var.e(typeUsage, javaTypeFlexibility2, z3, z4, set2, sm9Var);
    }

    @Override
    public sm9 a() {
        return this.i;
    }

    @Override
    public TypeUsage b() {
        return this.d;
    }

    @Override
    public Set c() {
        return this.h;
    }

    public final p85 e(TypeUsage typeUsage, JavaTypeFlexibility javaTypeFlexibility, boolean z, boolean z2, Set set, sm9 sm9Var) {
        y45.j(typeUsage, "howThisTypeIsUsed");
        y45.j(javaTypeFlexibility, "flexibility");
        return new p85(typeUsage, javaTypeFlexibility, z, z2, set, sm9Var);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof p85)) {
            return false;
        }
        p85 p85Var = (p85) obj;
        return y45.e(p85Var.a(), a()) && p85Var.b() == b() && p85Var.e == this.e && p85Var.f == this.f && p85Var.g == this.g;
    }

    public final JavaTypeFlexibility g() {
        return this.e;
    }

    public final boolean h() {
        return this.g;
    }

    @Override
    public int hashCode() {
        sm9 sm9VarA = a();
        int iHashCode = sm9VarA != null ? sm9VarA.hashCode() : 0;
        int iHashCode2 = iHashCode + (iHashCode * 31) + b().hashCode();
        int iHashCode3 = iHashCode2 + (iHashCode2 * 31) + this.e.hashCode();
        int i = iHashCode3 + (iHashCode3 * 31) + (this.f ? 1 : 0);
        return i + (i * 31) + (this.g ? 1 : 0);
    }

    public final boolean i() {
        return this.f;
    }

    public final p85 j(boolean z) {
        return f(this, null, null, z, false, null, null, 59, null);
    }

    public p85 k(sm9 sm9Var) {
        return f(this, null, null, false, false, null, sm9Var, 31, null);
    }

    public final p85 l(JavaTypeFlexibility javaTypeFlexibility) {
        y45.j(javaTypeFlexibility, "flexibility");
        return f(this, null, javaTypeFlexibility, false, false, null, null, 61, null);
    }

    @Override
    public p85 d(hcb hcbVar) {
        y45.j(hcbVar, "typeParameter");
        return f(this, null, null, false, false, c() != null ? ze9.n(c(), hcbVar) : xe9.d(hcbVar), null, 47, null);
    }

    public String toString() {
        return "JavaTypeAttributes(howThisTypeIsUsed=" + this.d + ", flexibility=" + this.e + ", isRaw=" + this.f + ", isForAnnotationParameter=" + this.g + ", visitedTypeParameters=" + this.h + ", defaultType=" + this.i + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p85(TypeUsage typeUsage, JavaTypeFlexibility javaTypeFlexibility, boolean z, boolean z2, Set set, sm9 sm9Var) {
        super(typeUsage, set, sm9Var);
        y45.j(typeUsage, "howThisTypeIsUsed");
        y45.j(javaTypeFlexibility, "flexibility");
        this.d = typeUsage;
        this.e = javaTypeFlexibility;
        this.f = z;
        this.g = z2;
        this.h = set;
        this.i = sm9Var;
    }
}
