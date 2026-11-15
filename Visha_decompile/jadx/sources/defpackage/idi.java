package defpackage;

public final class idi {
    public static final idi b = new idi("ASSUME_AES_GCM");
    public static final idi c = new idi("ASSUME_XCHACHA20POLY1305");
    public static final idi d = new idi("ASSUME_CHACHA20POLY1305");
    public static final idi e = new idi("ASSUME_AES_CTR_HMAC");
    public static final idi f = new idi("ASSUME_AES_EAX");
    public static final idi g = new idi("ASSUME_AES_GCM_SIV");
    public final String a;

    public idi(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}
