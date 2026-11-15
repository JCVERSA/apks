package io.appmetrica.analytics.impl;

public abstract class AbstractC2607i5 {
    public final C2706m5 a;
    public final String b = "[ComponentMigrationToV113]";

    public AbstractC2607i5(C2706m5 c2706m5) {
        this.a = c2706m5;
    }

    public final C2706m5 a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public abstract boolean b(int i);

    public abstract void c();

    public final void a(int i) {
        if (b(i)) {
            c();
        }
    }
}
