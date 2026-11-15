package defpackage;

import java.io.InputStream;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment;
import kotlin.reflect.jvm.internal.impl.protobuf.d;

public abstract class fo8 {
    public static final Pair a(InputStream inputStream) {
        ProtoBuf$PackageFragment from;
        y45.j(inputStream, "<this>");
        try {
            ol0 ol0VarA = ol0.g.a(inputStream);
            if (ol0VarA.h()) {
                d dVarD = d.d();
                on0.a(dVarD);
                from = ProtoBuf$PackageFragment.parseFrom(inputStream, dVarD);
            } else {
                from = null;
            }
            Pair pairA = abb.a(from, ol0VarA);
            ly0.a(inputStream, null);
            return pairA;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ly0.a(inputStream, th);
                throw th2;
            }
        }
    }
}
