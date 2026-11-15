package com.google.android.gms.measurement.internal;

import java.util.EnumMap;

final class zzah {
    private final EnumMap<zzje.zza, zzak> zza;

    zzah() {
        this.zza = new EnumMap<>(zzje.zza.class);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("1");
        for (zzje.zza zzaVar : zzje.zza.values()) {
            zzak zzakVar = this.zza.get(zzaVar);
            if (zzakVar == null) {
                zzakVar = zzak.UNSET;
            }
            sb2.append(zzakVar.zzl);
        }
        return sb2.toString();
    }

    public final zzak zza(zzje.zza zzaVar) {
        zzak zzakVar = this.zza.get(zzaVar);
        return zzakVar == null ? zzak.UNSET : zzakVar;
    }

    private zzah(EnumMap<zzje.zza, zzak> enumMap) {
        EnumMap<zzje.zza, zzak> enumMap2 = new EnumMap<>(zzje.zza.class);
        this.zza = enumMap2;
        enumMap2.putAll(enumMap);
    }

    public static zzah zza(String str) {
        EnumMap enumMap = new EnumMap(zzje.zza.class);
        if (str.length() >= zzje.zza.values().length) {
            int i10 = 0;
            if (str.charAt(0) == '1') {
                zzje.zza[] zzaVarArrValues = zzje.zza.values();
                int length = zzaVarArrValues.length;
                int i11 = 1;
                while (i10 < length) {
                    enumMap.put(zzaVarArrValues[i10], zzak.zza(str.charAt(i11)));
                    i10++;
                    i11++;
                }
                return new zzah(enumMap);
            }
        }
        return new zzah();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001b  */
    public final void zza(zzje.zza zzaVar, int i10) {
        zzak zzakVar = zzak.UNSET;
        if (i10 == -30) {
            zzakVar = zzak.TCF;
        } else if (i10 == -20) {
            zzakVar = zzak.API;
        } else if (i10 == -10) {
            zzakVar = zzak.MANIFEST;
        } else if (i10 == 0) {
            zzakVar = zzak.API;
        } else if (i10 == 30) {
            zzakVar = zzak.INITIALIZATION;
        }
        this.zza.put(zzaVar, zzakVar);
    }

    public final void zza(zzje.zza zzaVar, zzak zzakVar) {
        this.zza.put(zzaVar, zzakVar);
    }
}
