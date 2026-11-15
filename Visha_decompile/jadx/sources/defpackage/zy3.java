package defpackage;

import android.util.Property;

public abstract class zy3 extends Property {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zy3(String str) {
        super(Float.TYPE, str);
        y45.j(str, "name");
    }

    public void a(Object obj, float f) {
        b(obj, f);
    }

    public abstract void b(Object obj, float f);

    @Override
    public void set(Object obj, Object obj2) {
        a(obj, ((Number) obj2).floatValue());
    }
}
