package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import defpackage.fo8;
import defpackage.nn0;
import defpackage.o54;
import defpackage.ol0;
import defpackage.qq6;
import defpackage.vx9;
import defpackage.y45;
import java.io.InputStream;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedPackageFragmentImpl;

public final class a extends DeserializedPackageFragmentImpl implements nn0 {
    public static final C0407a p = new C0407a(null);
    public final boolean o;

    public static final class C0407a {
        public C0407a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(o54 o54Var, vx9 vx9Var, qq6 qq6Var, InputStream inputStream, boolean z) {
            y45.j(o54Var, "fqName");
            y45.j(vx9Var, "storageManager");
            y45.j(qq6Var, "module");
            y45.j(inputStream, "inputStream");
            Pair pairA = fo8.a(inputStream);
            ProtoBuf$PackageFragment protoBuf$PackageFragment = (ProtoBuf$PackageFragment) pairA.component1();
            ol0 ol0Var = (ol0) pairA.component2();
            if (protoBuf$PackageFragment != null) {
                return new a(o54Var, vx9Var, qq6Var, protoBuf$PackageFragment, ol0Var, z, null);
            }
            throw new UnsupportedOperationException("Kotlin built-in definition format version is not supported: expected " + ol0.h + ", actual " + ol0Var + ". Please update Kotlin");
        }

        public C0407a() {
        }
    }

    public a(o54 o54Var, vx9 vx9Var, qq6 qq6Var, ProtoBuf$PackageFragment protoBuf$PackageFragment, ol0 ol0Var, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(o54Var, vx9Var, qq6Var, protoBuf$PackageFragment, ol0Var, z);
    }

    @Override
    public String toString() {
        return "builtins package fragment for " + d() + " from " + DescriptorUtilsKt.p(this);
    }

    public a(o54 o54Var, vx9 vx9Var, qq6 qq6Var, ProtoBuf$PackageFragment protoBuf$PackageFragment, ol0 ol0Var, boolean z) {
        super(o54Var, vx9Var, qq6Var, protoBuf$PackageFragment, ol0Var, null);
        this.o = z;
    }
}
