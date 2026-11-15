package kotlin.reflect.jvm.internal.impl.descriptors;

import defpackage.eh5;
import defpackage.qw0;
import defpackage.qx0;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

public interface c extends e {
    qw0 F();

    @Override
    qx0 b();

    @Override
    c c(TypeSubstitutor typeSubstitutor);

    @Override
    eh5 getReturnType();

    @Override
    List getTypeParameters();

    boolean i0();
}
