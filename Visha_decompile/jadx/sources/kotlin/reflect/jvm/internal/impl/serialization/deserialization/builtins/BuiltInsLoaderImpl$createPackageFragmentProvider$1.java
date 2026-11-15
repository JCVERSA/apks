package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import defpackage.e74;
import defpackage.ke5;
import defpackage.pn0;
import defpackage.xq8;
import defpackage.y45;
import java.io.InputStream;
import kotlin.jvm.internal.FunctionReference;

public class BuiltInsLoaderImpl$createPackageFragmentProvider$1 extends FunctionReference implements e74 {
    public BuiltInsLoaderImpl$createPackageFragmentProvider$1(Object obj) {
        super(1, obj);
    }

    @Override
    public final String getName() {
        return "loadResource";
    }

    @Override
    public final ke5 getOwner() {
        return xq8.b(pn0.class);
    }

    @Override
    public final String getSignature() {
        return "loadResource(Ljava/lang/String;)Ljava/io/InputStream;";
    }

    @Override
    public final InputStream invoke(String str) {
        y45.j(str, "p0");
        return ((pn0) this.receiver).a(str);
    }
}
