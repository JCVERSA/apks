package defpackage;

import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.internal.b;

public abstract class u9b {
    public static final Object a(u95 u95Var, String str, JsonObject jsonObject, k92 k92Var) {
        y45.j(u95Var, "<this>");
        y45.j(str, "discriminator");
        y45.j(jsonObject, "element");
        y45.j(k92Var, "deserializer");
        return new b(u95Var, jsonObject, str, k92Var.getDescriptor()).B(k92Var);
    }
}
