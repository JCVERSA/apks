package defpackage;

import java.lang.annotation.Annotation;
import kotlin.KotlinNothingValueException;
import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.b;
import kotlinx.serialization.json.c;

public abstract class nc8 {
    public static final void b(id9 id9Var) {
        y45.j(id9Var, "kind");
        if (id9Var instanceof id9.b) {
            throw new IllegalStateException("Enums cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
        }
        if (id9Var instanceof ef8) {
            throw new IllegalStateException("Primitives cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
        }
        if (id9Var instanceof mc8) {
            throw new IllegalStateException("Actual serializer for polymorphic cannot be polymorphic itself");
        }
    }

    public static final String c(a aVar, u95 u95Var) {
        y45.j(aVar, "<this>");
        y45.j(u95Var, "json");
        for (Annotation annotation : aVar.getAnnotations()) {
            if (annotation instanceof ca5) {
                return ((ca5) annotation).discriminator();
            }
        }
        return u95Var.d().c();
    }

    public static final Object d(ia5 ia5Var, k92 k92Var) {
        c cVarK;
        y45.j(ia5Var, "<this>");
        y45.j(k92Var, "deserializer");
        if (!(k92Var instanceof p3) || ia5Var.d().d().l()) {
            return k92Var.deserialize(ia5Var);
        }
        String strC = c(k92Var.getDescriptor(), ia5Var.d());
        b bVarS = ia5Var.s();
        a descriptor = k92Var.getDescriptor();
        if (bVarS instanceof JsonObject) {
            JsonObject jsonObject = (JsonObject) bVarS;
            b bVar = (b) jsonObject.get(strC);
            String strB = (bVar == null || (cVarK = la5.k(bVar)) == null) ? null : cVarK.b();
            k92 k92VarC = ((p3) k92Var).c(ia5Var, strB);
            if (k92VarC != null) {
                return u9b.a(ia5Var.d(), strC, jsonObject, k92VarC);
            }
            e(strB, jsonObject);
            throw new KotlinNothingValueException();
        }
        throw oa5.d(-1, "Expected " + xq8.b(JsonObject.class) + " as the serialized body of " + descriptor.h() + ", but had " + xq8.b(bVarS.getClass()));
    }

    public static final Void e(String str, JsonObject jsonObject) {
        String str2;
        y45.j(jsonObject, "jsonTree");
        if (str == null) {
            str2 = "missing class discriminator ('null')";
        } else {
            str2 = "class discriminator '" + str + '\'';
        }
        throw oa5.e(-1, "Polymorphic serializer was not found for " + str2, jsonObject.toString());
    }

    public static final void f(nd9 nd9Var, nd9 nd9Var2, String str) {
    }
}
