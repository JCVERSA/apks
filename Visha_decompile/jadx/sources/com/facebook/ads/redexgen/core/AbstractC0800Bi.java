package com.facebook.ads.redexgen.core;

import com.facebook.ads.sync.SyncModifiableBundle;
import java.util.Map;

public abstract class AbstractC0800Bi implements InterfaceC1756fK {
    public final By A00;
    public final EnumC1761fP A01;

    public AbstractC0800Bi(By by, EnumC1761fP enumC1761fP) {
        this.A00 = by;
        this.A01 = enumC1761fP;
    }

    @Override
    public void A45(Map<InterfaceC1739f2, EnumC1761fP> map, Map<SyncModifiableBundle, EnumC1748fC> map2) {
        map.put(this.A00, this.A01);
    }
}
