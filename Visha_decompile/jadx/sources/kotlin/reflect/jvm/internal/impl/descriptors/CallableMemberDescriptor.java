package kotlin.reflect.jvm.internal.impl.descriptors;

import defpackage.bn6;
import defpackage.c92;
import defpackage.xt1;
import java.util.Collection;

public interface CallableMemberDescriptor extends a, bn6 {

    public enum Kind {
        DECLARATION,
        FAKE_OVERRIDE,
        DELEGATION,
        SYNTHESIZED;

        public boolean isReal() {
            return this != FAKE_OVERRIDE;
        }
    }

    CallableMemberDescriptor J(xt1 xt1Var, Modality modality, c92 c92Var, Kind kind, boolean z);

    void O(Collection collection);

    @Override
    CallableMemberDescriptor a();

    @Override
    Collection e();

    Kind getKind();
}
