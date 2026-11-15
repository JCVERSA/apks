package defpackage;

import java.util.concurrent.Executor;

public abstract class u18 {
    public static final Executor a;
    public static final yq8 b;
    public static final gl0 c;

    static {
        String property = System.getProperty("java.vm.name");
        property.hashCode();
        if (property.equals("RoboVM")) {
            a = null;
            b = new yq8();
            c = new gl0();
        } else if (property.equals("Dalvik")) {
            a = new tb();
            b = new yq8.a();
            c = new gl0.a();
        } else {
            a = null;
            b = new yq8.b();
            c = new gl0.a();
        }
    }
}
