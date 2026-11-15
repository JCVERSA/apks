package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import v8.f;
import v8.k;

@Keep
public class CctBackendFactory implements v8.c {
    @Override
    public k create(f fVar) {
        return new d(fVar.b(), fVar.e(), fVar.d());
    }
}
