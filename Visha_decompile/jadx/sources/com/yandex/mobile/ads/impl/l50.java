package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class l50 {
    private static final l50 c = new l50(1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCznqFqHos01bT613or9cQ8OWXEB0nvx8UZ//V75T+fb1IDn1/lPBwGY/OK5RfQYuqeIKoKasqfwtRo3sr8dJ+SDm29Brh3lV9r+apohla+GIAyYd5wcJugMfVH5z9SBxh19ukg+GiIvvDpmgi0M8gNVo6Nk21tkEgFxc9FfdT/HwIDAQAB");
    private final String a;
    private final int b;

    public l50(int i, String str) {
        y45.j(str, "publicKey");
        this.a = str;
        this.b = i;
    }

    public final String b() {
        return this.a;
    }

    public final int c() {
        return this.b;
    }

    public final String d() {
        return this.a;
    }

    public final int e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l50)) {
            return false;
        }
        l50 l50Var = (l50) obj;
        return y45.e(this.a, l50Var.a) && this.b == l50Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "EncryptionParameters(publicKey=" + this.a + ", version=" + this.b + ")";
    }
}
