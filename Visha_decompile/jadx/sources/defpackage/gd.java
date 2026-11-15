package defpackage;

import java.util.Map;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

public interface gd {

    public static final class a {
        public static o54 a(gd gdVar) {
            qw0 qw0VarI = DescriptorUtilsKt.i(gdVar);
            if (qw0VarI == null) {
                return null;
            }
            if (id3.m(qw0VarI)) {
                qw0VarI = null;
            }
            if (qw0VarI != null) {
                return DescriptorUtilsKt.h(qw0VarI);
            }
            return null;
        }
    }

    o54 d();

    Map f();

    yt9 getSource();

    eh5 getType();
}
