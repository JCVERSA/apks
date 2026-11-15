package com.google.android.libraries.places.internal;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;

@SourceDebugExtension
public final class zzbvw {
    private zzbvw() {
        throw null;
    }

    public static final boolean zza(zzbvw zzbvwVar, zzbvz zzbvzVar) {
        ReentrantLock reentrantLock = zzbvz.zzd;
        reentrantLock.lock();
        reentrantLock.unlock();
        return false;
    }

    public zzbvw(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
