package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import defpackage.e74;
import defpackage.ke5;
import defpackage.xq8;
import defpackage.y45;
import java.lang.reflect.Member;
import kotlin.jvm.internal.FunctionReference;

public class ReflectJavaClass$fields$1 extends FunctionReference implements e74 {
    public static final ReflectJavaClass$fields$1 INSTANCE = new ReflectJavaClass$fields$1();

    public ReflectJavaClass$fields$1() {
        super(1);
    }

    @Override
    public final String getName() {
        return "isSynthetic";
    }

    @Override
    public final ke5 getOwner() {
        return xq8.b(Member.class);
    }

    @Override
    public final String getSignature() {
        return "isSynthetic()Z";
    }

    @Override
    public final Boolean invoke(Member member) {
        y45.j(member, "p0");
        return Boolean.valueOf(member.isSynthetic());
    }
}
