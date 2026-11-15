package io.appmetrica.analytics.impl;

public final class L8 {
    public final Jc a;
    public final Jc b;

    public L8() {
        this(new C2435b8(), new S9(), new C2426b());
    }

    public L8(C2435b8 c2435b8, S9 s9, C2426b c2426b) {
        Jc jc = new Jc(c2435b8);
        this.a = jc;
        jc.a(M8.NONE, c2435b8);
        jc.a(M8.EXTERNALLY_ENCRYPTED_EVENT_CRYPTER, s9);
        jc.a(M8.AES_VALUE_ENCRYPTION, c2426b);
        this.b = new Jc(c2435b8);
    }
}
