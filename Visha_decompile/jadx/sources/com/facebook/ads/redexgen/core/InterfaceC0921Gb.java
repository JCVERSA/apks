package com.facebook.ads.redexgen.core;

import android.net.Uri;
import java.util.List;
import java.util.Map;

public interface InterfaceC0921Gb {
    public static final InterfaceC0921Gb A00 = new InterfaceC0921Gb() {
        @Override
        public final GX[] A5F() {
            return AbstractC0920Ga.A00();
        }

        @Override
        public final GX[] A5G(Uri uri, Map map) {
            return AbstractC0920Ga.A01(this, uri, map);
        }
    };

    GX[] A5F();

    GX[] A5G(Uri uri, Map<String, List<String>> map);
}
