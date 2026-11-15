package defpackage;

import java.io.InputStream;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInClassDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractDeserializedPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.b;
import kotlin.reflect.jvm.internal.impl.types.checker.e;

public final class cd5 extends AbstractDeserializedPackageFragmentProvider {
    public static final a f = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cd5(vx9 vx9Var, vg5 vg5Var, qq6 qq6Var, NotFoundClasses notFoundClasses, n8 n8Var, v18 v18Var, h92 h92Var, e eVar, e19 e19Var) {
        super(vx9Var, vg5Var, qq6Var);
        y45.j(vx9Var, "storageManager");
        y45.j(vg5Var, "finder");
        y45.j(qq6Var, "moduleDescriptor");
        y45.j(notFoundClasses, "notFoundClasses");
        y45.j(n8Var, "additionalClassPartsProvider");
        y45.j(v18Var, "platformDependentDeclarationFilter");
        y45.j(h92Var, "deserializationConfiguration");
        y45.j(eVar, "kotlinTypeChecker");
        y45.j(e19Var, "samConversionResolver");
        o92 o92Var = new o92(this);
        nl0 nl0Var = nl0.r;
        b bVar = new b(qq6Var, notFoundClasses, nl0Var);
        on5.a aVar = on5.a.a;
        ed3 ed3Var = ed3.a;
        y45.i(ed3Var, "DO_NOTHING");
        j(new e92(vx9Var, qq6Var, h92Var, o92Var, bVar, this, aVar, ed3Var, qr5.a.a, gy3.a.a, y71.n(new kotlin.reflect.jvm.internal.impl.builtins.functions.a(vx9Var, qq6Var), new JvmBuiltInClassDescriptorFactory(vx9Var, qq6Var, null, 4, null)), notFoundClasses, zh1.a.a(), n8Var, v18Var, nl0Var.e(), eVar, e19Var, null, null, 786432, null));
    }

    @Override
    public r92 d(o54 o54Var) {
        y45.j(o54Var, "fqName");
        InputStream inputStreamA = f().a(o54Var);
        if (inputStreamA != null) {
            return kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.p.a(o54Var, h(), g(), inputStreamA, false);
        }
        return null;
    }
}
