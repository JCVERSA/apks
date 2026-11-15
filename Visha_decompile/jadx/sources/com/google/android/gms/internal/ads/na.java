package com.google.android.gms.internal.ads;

import defpackage.bui;
import java.util.ArrayDeque;
import java.util.Arrays;

public final class na {
    public final ArrayDeque a = new ArrayDeque();

    public na(bui buiVar) {
    }

    public static zzgwn a(na naVar, zzgwn zzgwnVar, zzgwn zzgwnVar2) {
        naVar.b(zzgwnVar);
        naVar.b(zzgwnVar2);
        ArrayDeque arrayDeque = naVar.a;
        zzgwn zzgzyVar = (zzgwn) arrayDeque.pop();
        while (!arrayDeque.isEmpty()) {
            zzgzyVar = new zzgzy((zzgwn) arrayDeque.pop(), zzgzyVar);
        }
        return zzgzyVar;
    }

    public static final int c(int i) {
        int iBinarySearch = Arrays.binarySearch(zzgzy.zza, i);
        return iBinarySearch < 0 ? (-(iBinarySearch + 1)) - 1 : iBinarySearch;
    }

    public final void b(zzgwn zzgwnVar) {
        bui buiVar;
        if (!zzgwnVar.zzh()) {
            if (!(zzgwnVar instanceof zzgzy)) {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found ".concat(String.valueOf(zzgwnVar.getClass())));
            }
            zzgzy zzgzyVar = (zzgzy) zzgwnVar;
            b(zzgzyVar.zzd);
            b(zzgzyVar.zze);
            return;
        }
        int iC = c(zzgwnVar.zzd());
        ArrayDeque arrayDeque = this.a;
        int iZzc = zzgzy.zzc(iC + 1);
        if (arrayDeque.isEmpty() || ((zzgwn) arrayDeque.peek()).zzd() >= iZzc) {
            arrayDeque.push(zzgwnVar);
            return;
        }
        int iZzc2 = zzgzy.zzc(iC);
        zzgwn zzgzyVar2 = (zzgwn) arrayDeque.pop();
        while (true) {
            buiVar = null;
            if (arrayDeque.isEmpty() || ((zzgwn) arrayDeque.peek()).zzd() >= iZzc2) {
                break;
            } else {
                zzgzyVar2 = new zzgzy((zzgwn) arrayDeque.pop(), zzgzyVar2);
            }
        }
        zzgzy zzgzyVar3 = new zzgzy(zzgzyVar2, zzgwnVar);
        while (!arrayDeque.isEmpty()) {
            if (((zzgwn) arrayDeque.peek()).zzd() >= zzgzy.zzc(c(zzgzyVar3.zzd()) + 1)) {
                break;
            } else {
                zzgzyVar3 = new zzgzy((zzgwn) arrayDeque.pop(), zzgzyVar3);
            }
        }
        arrayDeque.push(zzgzyVar3);
    }
}
