package defpackage;

import java.util.Random;

public final class ap3 extends o3 {
    public final a b = new a();

    public static final class a extends ThreadLocal {
        @Override
        public Random initialValue() {
            return new Random();
        }
    }

    @Override
    public Random a() {
        Object obj = this.b.get();
        y45.i(obj, "get(...)");
        return (Random) obj;
    }
}
