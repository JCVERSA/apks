package defpackage;

import kotlin.KotlinNothingValueException;
import kotlinx.serialization.SerializationException;

public abstract class q3 {
    public static final Void a(de5 de5Var, de5 de5Var2) {
        y45.j(de5Var, "subClass");
        y45.j(de5Var2, "baseClass");
        String strO = de5Var.o();
        if (strO == null) {
            strO = String.valueOf(de5Var);
        }
        b(strO, de5Var2);
        throw new KotlinNothingValueException();
    }

    public static final Void b(String str, de5 de5Var) {
        String str2;
        y45.j(de5Var, "baseClass");
        String str3 = "in the scope of '" + de5Var.o() + '\'';
        if (str == null) {
            str2 = "Class discriminator was missing and no default polymorphic serializers were registered " + str3;
        } else {
            str2 = "Class '" + str + "' is not registered for polymorphic serialization " + str3 + ".\nTo be registered automatically, class '" + str + "' has to be '@Serializable', and the base class '" + de5Var.o() + "' has to be sealed and '@Serializable'.\nAlternatively, register the serializer for '" + str + "' explicitly in a corresponding SerializersModule.";
        }
        throw new SerializationException(str2);
    }
}
