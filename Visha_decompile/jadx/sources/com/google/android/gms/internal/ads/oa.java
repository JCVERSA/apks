package com.google.android.gms.internal.ads;

import defpackage.bui;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class oa implements Iterator {
    public final ArrayDeque b;
    public zzgwj c;

    public oa(zzgwn zzgwnVar, bui buiVar) {
        if (!(zzgwnVar instanceof zzgzy)) {
            this.b = null;
            this.c = (zzgwj) zzgwnVar;
            return;
        }
        zzgzy zzgzyVar = (zzgzy) zzgwnVar;
        ArrayDeque arrayDeque = new ArrayDeque(zzgzyVar.zzf());
        this.b = arrayDeque;
        arrayDeque.push(zzgzyVar);
        this.c = b(zzgzyVar.zzd);
    }

    @Override
    public final zzgwj next() {
        zzgwj zzgwjVarB;
        zzgwj zzgwjVar = this.c;
        if (zzgwjVar == null) {
            throw new NoSuchElementException();
        }
        do {
            ArrayDeque arrayDeque = this.b;
            zzgwjVarB = null;
            if (arrayDeque == null || arrayDeque.isEmpty()) {
                break;
            }
            zzgwjVarB = b(((zzgzy) arrayDeque.pop()).zze);
        } while (zzgwjVarB.zzd() == 0);
        this.c = zzgwjVarB;
        return zzgwjVar;
    }

    public final zzgwj b(zzgwn zzgwnVar) {
        while (zzgwnVar instanceof zzgzy) {
            zzgzy zzgzyVar = (zzgzy) zzgwnVar;
            this.b.push(zzgzyVar);
            zzgwnVar = zzgzyVar.zzd;
        }
        return (zzgwj) zzgwnVar;
    }

    @Override
    public final boolean hasNext() {
        return this.c != null;
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
