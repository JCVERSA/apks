package com.google.android.gms.internal.ads;

import java.util.Comparator;

final class zzapz implements Comparator {
    @Override
    public final int compare(Object obj, Object obj2) {
        return ((byte[]) obj).length - ((byte[]) obj2).length;
    }
}
