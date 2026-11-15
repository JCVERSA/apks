package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import defpackage.c74;
import defpackage.v3;
import defpackage.vx9;
import defpackage.x17;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

public final class LazyScopeAdapter extends v3 {
    public final x17 b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyScopeAdapter(c74 c74Var) {
        this(null, c74Var, 1, 0 == true ? 1 : 0);
        y45.j(c74Var, "getScope");
    }

    @Override
    public MemberScope i() {
        return (MemberScope) this.b.invoke();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LazyScopeAdapter(vx9 vx9Var, c74 c74Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 1) != 0) {
            vx9Var = LockBasedStorageManager.e;
            y45.i(vx9Var, "NO_LOCKS");
        }
        this(vx9Var, c74Var);
    }

    public LazyScopeAdapter(vx9 vx9Var, final c74 c74Var) {
        y45.j(vx9Var, "storageManager");
        y45.j(c74Var, "getScope");
        this.b = vx9Var.c(new c74() {
            {
                super(0);
            }

            @Override
            public final MemberScope invoke() {
                MemberScope memberScope = (MemberScope) c74Var.invoke();
                return memberScope instanceof v3 ? ((v3) memberScope).h() : memberScope;
            }
        });
    }
}
