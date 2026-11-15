package defpackage;

import java.util.List;
import java.util.Map;
import kotlin.collections.a;

public final class js6 extends inb {
    public final List a;
    public final Map b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public js6(List list) {
        super(null);
        y45.j(list, "underlyingPropertyNamesToTypes");
        this.a = list;
        Map mapY = a.y(a());
        if (mapY.size() != a().size()) {
            throw new IllegalArgumentException("Some properties have the same names");
        }
        this.b = mapY;
    }

    @Override
    public List a() {
        return this.a;
    }

    public String toString() {
        return "MultiFieldValueClassRepresentation(underlyingPropertyNamesToTypes=" + a() + ')';
    }
}
