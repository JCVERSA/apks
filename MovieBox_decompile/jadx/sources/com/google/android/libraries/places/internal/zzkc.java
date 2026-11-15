package com.google.android.libraries.places.internal;

import java.util.LinkedHashMap;
import java.util.Map;

final class zzkc extends LinkedHashMap {
    zzkc(int i10, float f10, boolean z10) {
        super(16, 0.75f, true);
    }

    @Override
    protected final boolean removeEldestEntry(Map.Entry entry) {
        return size() > 10;
    }
}
