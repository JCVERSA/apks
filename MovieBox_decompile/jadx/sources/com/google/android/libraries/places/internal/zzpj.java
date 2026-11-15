package com.google.android.libraries.places.internal;

final class zzpj extends ThreadLocal {
    zzpj() {
    }

    @Override
    protected final Object initialValue() {
        return new char[1024];
    }
}
