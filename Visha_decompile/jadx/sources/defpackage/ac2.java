package defpackage;

import java.security.SecureRandom;

public class ac2 {
    public static final ac2 d = new ac2("dilithium2", 2, false);
    public static final ac2 e = new ac2("dilithium3", 3, false);
    public static final ac2 f = new ac2("dilithium5", 5, false);
    public final int a;
    public final String b;
    public final boolean c;

    public ac2(String str, int i, boolean z) {
        this.b = str;
        this.a = i;
        this.c = z;
    }

    public wb2 a(SecureRandom secureRandom) {
        return new wb2(this.a, secureRandom, this.c);
    }

    public String b() {
        return this.b;
    }
}
