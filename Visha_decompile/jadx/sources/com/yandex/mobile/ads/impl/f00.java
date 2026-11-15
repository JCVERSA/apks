package com.yandex.mobile.ads.impl;

import java.io.IOException;

public final class f00 implements gv0.b {
    @Override
    public final gv0 a(gv0.a aVar) throws IOException {
        int i = f92.a;
        if (i < 23 || i < 31) {
            return new x32.a().a(aVar);
        }
        int iC = w01.c(aVar.c.m);
        et0.c("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + f92.d(iC));
        return new hh.a(iC).a(aVar);
    }
}
