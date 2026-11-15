package defpackage;

import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.descriptors.b;

public final class qc8 implements vd9 {
    public final boolean a;
    public final String b;

    public qc8(boolean z, String str) {
        y45.j(str, "discriminator");
        this.a = z;
        this.b = str;
    }

    @Override
    public void a(de5 de5Var, e74 e74Var) {
        y45.j(de5Var, "baseClass");
        y45.j(e74Var, "defaultSerializerProvider");
    }

    @Override
    public void b(de5 de5Var, e74 e74Var) {
        y45.j(de5Var, "baseClass");
        y45.j(e74Var, "defaultDeserializerProvider");
    }

    @Override
    public void c(de5 de5Var, de5 de5Var2, ef5 ef5Var) {
        y45.j(de5Var, "baseClass");
        y45.j(de5Var2, "actualClass");
        y45.j(ef5Var, "actualSerializer");
        a descriptor = ef5Var.getDescriptor();
        e(descriptor, de5Var2);
        if (this.a) {
            return;
        }
        d(descriptor, de5Var2);
    }

    public final void d(a aVar, de5 de5Var) {
        int iE = aVar.e();
        for (int i = 0; i < iE; i++) {
            String strF = aVar.f(i);
            if (y45.e(strF, this.b)) {
                throw new IllegalArgumentException("Polymorphic serializer for " + de5Var + " has property '" + strF + "' that conflicts with JSON class discriminator. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism");
            }
        }
    }

    public final void e(a aVar, de5 de5Var) {
        id9 kind = aVar.getKind();
        if ((kind instanceof mc8) || y45.e(kind, id9.a.a)) {
            throw new IllegalArgumentException("Serializer for " + de5Var.o() + " can't be registered as a subclass for polymorphic serialization because its kind " + kind + " is not concrete. To work with multiple hierarchies, register it as a base class.");
        }
        if (this.a) {
            return;
        }
        if (y45.e(kind, b.C0418b.a) || y45.e(kind, b.c.a) || (kind instanceof ef8) || (kind instanceof id9.b)) {
            throw new IllegalArgumentException("Serializer for " + de5Var.o() + " of kind " + kind + " cannot be serialized polymorphically with class discriminator.");
        }
    }
}
