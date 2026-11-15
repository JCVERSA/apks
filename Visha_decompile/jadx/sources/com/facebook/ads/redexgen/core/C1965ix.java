package com.facebook.ads.redexgen.core;

public final class C1965ix implements InterfaceC06464w {
    public static String[] A08 = {"FmqEYLEjOBovlIuvu7xTusZ6GIuR3pge", "QeU0DUuOAkxor0HSqOzEAO6P6r4bp110", "WNDsEfwHyCZVTn6rYNycLV5FNYvDeUGR", "", "9kl6sBOZXnbWpCxdvxnR8wYz13jzyZGc", "QdIGCZBZzwjOBdbigrYBFiKU6cV", "ZYM92CzuhlmQLmzBChoRToTytAMTrYW0", "W1yocJmlBB3ILJesLtmFt5l7ilHzoTT3"};
    public int A00;
    public int A01;
    public InterfaceC06434t A02;
    public InterfaceC06464w A04;
    public InterfaceC1062Ln A05;
    public boolean A07;
    public InterfaceC06464w A03 = new C2243nh();
    public InterfaceC1071Lw A06 = InterfaceC1071Lw.A00;

    @Override
    public final C7S A5A() {
        return A01(this.A04 != null ? this.A04.A5A() : null, this.A00, this.A01);
    }

    private C7S A01(InterfaceC2247nl interfaceC2247nl, int i, int i2) {
        C1966iy c1966iyA59;
        InterfaceC1062Ln interfaceC1062Ln = (InterfaceC1062Ln) C3M.A01(this.A05);
        if (this.A07 || interfaceC2247nl == null) {
            c1966iyA59 = null;
        } else if (this.A02 != null) {
            InterfaceC06434t interfaceC06434t = this.A02;
            String[] strArr = A08;
            if (strArr[6].charAt(29) == strArr[7].charAt(29)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[0] = "BsDku37cs2h0edzjFuAGMntAOCTwp5qB";
            strArr2[1] = "0s0KxP1bBIf3QxkhX8XEl0TpXhOFUtvY";
            c1966iyA59 = interfaceC06434t.A59();
        } else {
            c1966iyA59 = new C1967iz().A00(interfaceC1062Ln).A59();
        }
        return new C7S(interfaceC1062Ln, interfaceC2247nl, this.A03.A5A(), c1966iyA59, this.A06, i, null, i2, null);
    }

    public final AnonymousClass31 A02() {
        return null;
    }

    public final C1965ix A03(int i) {
        this.A00 = i;
        return this;
    }

    public final C1965ix A04(InterfaceC06464w interfaceC06464w) {
        this.A03 = interfaceC06464w;
        return this;
    }

    public final C1965ix A05(InterfaceC06464w interfaceC06464w) {
        this.A04 = interfaceC06464w;
        return this;
    }

    public final C1965ix A06(InterfaceC1062Ln interfaceC1062Ln) {
        this.A05 = interfaceC1062Ln;
        return this;
    }

    public final C7S A07() {
        return A01(this.A04 != null ? this.A04.A5A() : null, this.A00 | 1, -1000);
    }
}
