package com.google.android.gms.internal.ads;

import defpackage.psi;
import defpackage.tsi;
import defpackage.usi;

public enum zzbbn$zzaf$zzd implements psi {
    UNSPECIFIED(0),
    CONNECTING(1),
    CONNECTED(2),
    DISCONNECTING(3),
    DISCONNECTED(4),
    SUSPENDED(5);

    public static final int zzg = 0;
    public static final int zzh = 1;
    public static final int zzi = 2;
    public static final int zzj = 3;
    public static final int zzk = 4;
    public static final int zzl = 5;
    private static final tsi zzm = new tsi() {
    };
    private final int zzo;

    zzbbn$zzaf$zzd(int i) {
        this.zzo = i;
    }

    public static zzbbn$zzaf$zzd zzb(int i) {
        if (i == 0) {
            return UNSPECIFIED;
        }
        if (i == 1) {
            return CONNECTING;
        }
        if (i == 2) {
            return CONNECTED;
        }
        if (i == 3) {
            return DISCONNECTING;
        }
        if (i == 4) {
            return DISCONNECTED;
        }
        if (i != 5) {
            return null;
        }
        return SUSPENDED;
    }

    public static tsi zzd() {
        return zzm;
    }

    public static usi zze() {
        return b1.a;
    }

    @Override
    public final String toString() {
        return Integer.toString(zza());
    }

    public final int zza() {
        return this.zzo;
    }
}
