package defpackage;

import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.internal.TaggedDecoder;

public abstract class iy6 extends TaggedDecoder {
    public abstract String Z(String str, String str2);

    public String a0(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return aVar.f(i);
    }

    @Override
    public final String V(a aVar, int i) {
        y45.j(aVar, "<this>");
        return c0(a0(aVar, i));
    }

    public final String c0(String str) {
        y45.j(str, "nestedName");
        String str2 = (String) U();
        if (str2 == null) {
            str2 = "";
        }
        return Z(str2, str);
    }
}
