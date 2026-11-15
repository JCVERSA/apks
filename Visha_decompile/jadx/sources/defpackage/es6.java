package defpackage;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

public abstract class es6 {
    public static final Charset e = StandardCharsets.UTF_8;
    public static final String[] f = {"reserved", "CONNECT", "CONNACK", "PUBLISH", "PUBACK", "PUBREC", "PUBREL", "PUBCOMP", "SUBSCRIBE", "SUBACK", "UNSUBSCRIBE", "UNSUBACK", "PINGREQ", "PINGRESP", "DISCONNECT"};
    public byte a;
    public bud d;
    public boolean c = false;
    public int b = 0;

    public es6(byte b) {
        this.a = b;
    }

    public String a() {
        return Integer.toString(b());
    }

    public int b() {
        return this.b;
    }

    public void c(bud budVar) {
        this.d = budVar;
    }

    public String toString() {
        return f[this.a];
    }
}
