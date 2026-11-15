package defpackage;

import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope;

public abstract class r92 extends ev7 {
    public final vx9 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r92(o54 o54Var, vx9 vx9Var, qq6 qq6Var) {
        super(qq6Var, o54Var);
        y45.j(o54Var, "fqName");
        y45.j(vx9Var, "storageManager");
        y45.j(qq6Var, "module");
        this.h = vx9Var;
    }

    public abstract pw0 C0();

    public boolean F0(by6 by6Var) {
        y45.j(by6Var, "name");
        MemberScope memberScopeP = p();
        return (memberScopeP instanceof DeserializedMemberScope) && ((DeserializedMemberScope) memberScopeP).q().contains(by6Var);
    }

    public abstract void G0(e92 e92Var);
}
