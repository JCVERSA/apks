package com.facebook.ads.redexgen.core;

import java.util.Set;

public class C1718eh {
    public C1722el A00;
    public Set<String> A01;
    public Set<String> A02;
    public boolean A03;
    public boolean A04 = true;

    public final C1718eh A00(C1722el c1722el) {
        this.A00 = c1722el;
        return this;
    }

    public final C1718eh A01(Set<String> pinnedCertificates) {
        this.A01 = pinnedCertificates;
        return this;
    }

    public final C1718eh A02(Set<String> pinnedPublicKeys) {
        this.A02 = pinnedPublicKeys;
        return this;
    }

    public final C1718eh A03(boolean z) {
        this.A04 = z;
        return this;
    }

    public final C1718eh A04(boolean z) {
        this.A03 = z;
        return this;
    }

    public final C1719ei A05() {
        return new C1719ei(this.A00, this.A04, this.A02, this.A01, this.A03);
    }
}
