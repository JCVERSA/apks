package com.facebook.ads.redexgen.core;

import java.io.File;

public final class C1992jQ implements InterfaceC1041Ks<File> {
    @Override
    public final C1040Kr<File> A3p(File file, LA la) {
        if (file.exists()) {
            return new C1040Kr<>(true, file);
        }
        return new C1040Kr<>(false, null);
    }

    @Override
    public final void A55(File file, LA la) {
    }
}
