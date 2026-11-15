package defpackage;

import com.yandex.div2.JsonParserComponent;

public abstract class ml0 {
    public static final ex7 a = new a();
    public static final JsonParserComponent b = new JsonParserComponent();

    public static final class a implements ex7 {
        public final kga a = kga.a.a();
        public final lx7 b;

        public a() {
            lx7 lx7Var = lx7.a;
            y45.i(lx7Var, "LOG");
            this.b = lx7Var;
        }

        @Override
        public kga a() {
            return this.a;
        }

        @Override
        public lx7 getLogger() {
            return this.b;
        }
    }

    public static final JsonParserComponent a() {
        return b;
    }

    public static final ex7 b() {
        return a;
    }
}
