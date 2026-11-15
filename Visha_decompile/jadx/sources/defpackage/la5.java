package defpackage;

import kotlin.KotlinNothingValueException;
import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.b;
import kotlinx.serialization.json.c;

public abstract class la5 {
    public static final a a = e05.a("kotlinx.serialization.json.JsonUnquotedLiteral", qn0.D(hz9.a));

    public static final c a(Boolean bool) {
        return bool == null ? JsonNull.INSTANCE : new wa5(bool, false, null, 4, null);
    }

    public static final c b(Number number) {
        return number == null ? JsonNull.INSTANCE : new wa5(number, false, null, 4, null);
    }

    public static final c c(String str) {
        return str == null ? JsonNull.INSTANCE : new wa5(str, true, null, 4, null);
    }

    public static final Void d(b bVar, String str) {
        throw new IllegalArgumentException("Element " + xq8.b(bVar.getClass()) + " is not a " + str);
    }

    public static final Boolean e(c cVar) {
        y45.j(cVar, "<this>");
        return zz9.d(cVar.b());
    }

    public static final String f(c cVar) {
        y45.j(cVar, "<this>");
        if (cVar instanceof JsonNull) {
            return null;
        }
        return cVar.b();
    }

    public static final double g(c cVar) {
        y45.j(cVar, "<this>");
        return Double.parseDouble(cVar.b());
    }

    public static final Double h(c cVar) {
        y45.j(cVar, "<this>");
        return e1a.o(cVar.b());
    }

    public static final float i(c cVar) {
        y45.j(cVar, "<this>");
        return Float.parseFloat(cVar.b());
    }

    public static final int j(c cVar) {
        y45.j(cVar, "<this>");
        return Integer.parseInt(cVar.b());
    }

    public static final c k(b bVar) {
        y45.j(bVar, "<this>");
        c cVar = bVar instanceof c ? (c) bVar : null;
        if (cVar != null) {
            return cVar;
        }
        d(bVar, "JsonPrimitive");
        throw new KotlinNothingValueException();
    }

    public static final a l() {
        return a;
    }

    public static final long m(c cVar) {
        y45.j(cVar, "<this>");
        return Long.parseLong(cVar.b());
    }

    public static final Long n(c cVar) {
        y45.j(cVar, "<this>");
        return f1a.t(cVar.b());
    }
}
