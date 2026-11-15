package defpackage;

import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer;

public class bd5 implements jq1.c {
    public final JvmBuiltInsCustomizer a;

    public bd5(JvmBuiltInsCustomizer jvmBuiltInsCustomizer) {
        this.a = jvmBuiltInsCustomizer;
    }

    @Override
    public Iterable a(Object obj) {
        return JvmBuiltInsCustomizer.s(this.a, (qw0) obj);
    }
}
