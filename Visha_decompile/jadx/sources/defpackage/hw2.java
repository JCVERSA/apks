package defpackage;

import java.io.File;

public abstract class hw2 {
    public final hw2 a;

    public hw2(hw2 hw2Var) {
        this.a = hw2Var;
    }

    public static hw2 d(File file) {
        return new yn8(null, file);
    }

    public abstract boolean a();

    public abstract boolean b();

    public abstract boolean c();

    public abstract boolean e(String str);
}
