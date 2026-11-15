package defpackage;

import android.util.Property;

public abstract class l25 extends Property {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l25(String str) {
        super(Integer.TYPE, str);
        y45.j(str, "name");
    }

    public void a(Object obj, int i) {
        b(obj, i);
    }

    public abstract void b(Object obj, int i);

    @Override
    public void set(Object obj, Object obj2) {
        a(obj, ((Number) obj2).intValue());
    }
}
