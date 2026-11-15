package com.facebook.ads.redexgen.core;

import com.facebook.ads.sync.SyncModifiableBundle;
import java.util.Map;

public abstract class AbstractC0801Bj implements InterfaceC1756fK {
    public final EnumC1748fC A00;
    public final AbstractC05731z A01;

    public AbstractC0801Bj(AbstractC05731z abstractC05731z, EnumC1748fC enumC1748fC) {
        this.A01 = abstractC05731z;
        this.A00 = enumC1748fC;
    }

    @Override
    public void A45(Map<InterfaceC1739f2, EnumC1761fP> map, Map<SyncModifiableBundle, EnumC1748fC> map2) {
        map2.put(null, this.A00);
    }
}
