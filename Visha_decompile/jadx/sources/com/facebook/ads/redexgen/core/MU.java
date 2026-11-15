package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.protocol.AdPlacementType;

public final class MU {
    public static MP A00;

    public final MP A00(final C1635dL c1635dL, AdPlacementType adPlacementType) {
        if (A00 != null) {
            return A00;
        }
        switch (MT.A00[adPlacementType.ordinal()]) {
            case 1:
                return new C7L();
            case 2:
                if (U7.A1N(c1635dL)) {
                    return new C7K();
                }
                return new C7L();
            case 3:
                return new C1936iS();
            case 4:
                return new C1931iN(c1635dL);
            case 5:
                return new C1931iN(c1635dL) {
                    @Override
                    public final AdPlacementType A8c() {
                        return AdPlacementType.NATIVE_BANNER;
                    }
                };
            case 6:
                return new C7B();
            default:
                return null;
        }
    }
}
