package defpackage;

import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.c;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import org.apache.commons.io.IOUtils;

public final class qq8 implements c {
    public static final a c = new a(null);
    public final Class a;
    public final KotlinClassHeader b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final qq8 a(Class cls) {
            y45.j(cls, "klass");
            kotlin.reflect.jvm.internal.impl.load.kotlin.header.a aVar = new kotlin.reflect.jvm.internal.impl.load.kotlin.header.a();
            op8.a.b(cls, aVar);
            KotlinClassHeader kotlinClassHeaderM = aVar.m();
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (kotlinClassHeaderM == null) {
                return null;
            }
            return new qq8(cls, kotlinClassHeaderM, defaultConstructorMarker);
        }

        public a() {
        }
    }

    public qq8(Class cls, KotlinClassHeader kotlinClassHeader, DefaultConstructorMarker defaultConstructorMarker) {
        this(cls, kotlinClassHeader);
    }

    @Override
    public void a(c.d dVar, byte[] bArr) throws InvocationTargetException {
        y45.j(dVar, "visitor");
        op8.a.i(this.a, dVar);
    }

    @Override
    public KotlinClassHeader b() {
        return this.b;
    }

    @Override
    public xw0 c() {
        return ReflectClassUtilKt.a(this.a);
    }

    @Override
    public void d(c.InterfaceC0394c interfaceC0394c, byte[] bArr) throws InvocationTargetException {
        y45.j(interfaceC0394c, "visitor");
        op8.a.b(this.a, interfaceC0394c);
    }

    public final Class e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof qq8) && y45.e(this.a, ((qq8) obj).a);
    }

    @Override
    public String getLocation() {
        StringBuilder sb = new StringBuilder();
        String name = this.a.getName();
        y45.i(name, "klass.name");
        sb.append(g1a.M(name, '.', IOUtils.DIR_SEPARATOR_UNIX, false, 4, null));
        sb.append(".class");
        return sb.toString();
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return qq8.class.getName() + ": " + this.a;
    }

    public qq8(Class cls, KotlinClassHeader kotlinClassHeader) {
        this.a = cls;
        this.b = kotlinClassHeader;
    }
}
