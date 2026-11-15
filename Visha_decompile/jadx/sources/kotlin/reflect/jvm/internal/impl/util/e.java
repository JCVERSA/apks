package kotlin.reflect.jvm.internal.impl.util;

import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class e implements kotlin.reflect.jvm.internal.impl.util.b {
    public final String a;

    public static final class a extends e {
        public static final a b = new a();

        public a() {
            super("must be a member function", null);
        }

        @Override
        public boolean b(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
            y45.j(eVar, "functionDescriptor");
            return eVar.Z() != null;
        }
    }

    public static final class b extends e {
        public static final b b = new b();

        public b() {
            super("must be a member or an extension function", null);
        }

        @Override
        public boolean b(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
            y45.j(eVar, "functionDescriptor");
            return (eVar.Z() == null && eVar.b0() == null) ? false : true;
        }
    }

    public e(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @Override
    public String a(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        return kotlin.reflect.jvm.internal.impl.util.b.a.a(this, eVar);
    }

    @Override
    public String getDescription() {
        return this.a;
    }

    public e(String str) {
        this.a = str;
    }
}
