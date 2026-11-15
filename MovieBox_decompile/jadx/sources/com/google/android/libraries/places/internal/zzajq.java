package com.google.android.libraries.places.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

public final class zzajq {
    public static boolean zza(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Object obj, Object obj2, Object obj3) {
        while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, obj, obj2, obj3)) {
            if (atomicReferenceFieldUpdater.get(obj) != obj2) {
                return false;
            }
        }
        return true;
    }
}
