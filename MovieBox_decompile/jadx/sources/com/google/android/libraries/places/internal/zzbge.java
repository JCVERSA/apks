package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.InvalidMarkException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.Queue;

public final class zzbge extends zzbeg {
    private static final zzbgc zza = new zzbfx();
    private static final zzbgc zzb = new zzbfy();
    private static final zzbgc zzc = new zzbfz();
    private static final zzbgc zzd = new zzbga();
    private static final zzbgd zze = new zzbgb();
    private final Deque zzf;
    private Deque zzg;
    private int zzh;
    private final Queue zzi;
    private boolean zzj;

    public zzbge() {
        this.zzi = new ArrayDeque(2);
        this.zzf = new ArrayDeque();
    }

    private final int zzm(zzbgd zzbgdVar, int i10, Object obj, int i11) throws IOException {
        zza(i10);
        if (!this.zzf.isEmpty()) {
            zzp();
        }
        while (i10 > 0 && !this.zzf.isEmpty()) {
            zzbnv zzbnvVar = (zzbnv) this.zzf.peek();
            int iMin = Math.min(i10, zzbnvVar.zzf());
            i11 = zzbgdVar.zza(zzbnvVar, iMin, obj, i11);
            i10 -= iMin;
            this.zzh -= iMin;
            zzp();
        }
        if (i10 <= 0) {
            return i11;
        }
        throw new AssertionError("Failed executing read operation");
    }

    private final int zzn(zzbgc zzbgcVar, int i10, Object obj, int i11) {
        try {
            return zzm(zzbgcVar, i10, obj, i11);
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    private final void zzo() {
        if (!this.zzj) {
            ((zzbnv) this.zzf.remove()).close();
            return;
        }
        this.zzg.add((zzbnv) this.zzf.remove());
        zzbnv zzbnvVar = (zzbnv) this.zzf.peek();
        if (zzbnvVar != null) {
            zzbnvVar.zzb();
        }
    }

    private final void zzp() {
        if (((zzbnv) this.zzf.peek()).zzf() == 0) {
            zzo();
        }
    }

    @Override
    public final void close() {
        while (!this.zzf.isEmpty()) {
            ((zzbnv) this.zzf.remove()).close();
        }
        if (this.zzg != null) {
            while (!this.zzg.isEmpty()) {
                ((zzbnv) this.zzg.remove()).close();
            }
        }
    }

    @Override
    public final void zzb() {
        if (this.zzg == null) {
            this.zzg = new ArrayDeque(Math.min(this.zzf.size(), 16));
        }
        while (!this.zzg.isEmpty()) {
            ((zzbnv) this.zzg.remove()).close();
        }
        this.zzj = true;
        zzbnv zzbnvVar = (zzbnv) this.zzf.peek();
        if (zzbnvVar != null) {
            zzbnvVar.zzb();
        }
    }

    @Override
    public final void zzc() {
        if (!this.zzj) {
            throw new InvalidMarkException();
        }
        zzbnv zzbnvVar = (zzbnv) this.zzf.peek();
        if (zzbnvVar != null) {
            int iZzf = zzbnvVar.zzf();
            zzbnvVar.zzc();
            this.zzh += zzbnvVar.zzf() - iZzf;
        }
        while (true) {
            zzbnv zzbnvVar2 = (zzbnv) this.zzg.pollLast();
            if (zzbnvVar2 == null) {
                return;
            }
            zzbnvVar2.zzc();
            this.zzf.addFirst(zzbnvVar2);
            this.zzh += zzbnvVar2.zzf();
        }
    }

    @Override
    public final boolean zzd() {
        Iterator it = this.zzf.iterator();
        while (it.hasNext()) {
            if (!((zzbnv) it.next()).zzd()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final int zze() {
        return zzn(zza, 1, null, 0);
    }

    @Override
    public final int zzf() {
        return this.zzh;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0062, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.libraries.places.internal.zzbnv] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.libraries.places.internal.zzbnv] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.libraries.places.internal.zzbge] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.libraries.places.internal.zzbge] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzbnv zzg(int i10) {
        zzbnv zzbnvVarZzg;
        int i11;
        zzbnv zzbnvVarZzg2;
        ?? r10;
        ?? r11;
        if (i10 <= 0) {
            return zzbny.zza();
        }
        zza(i10);
        this.zzh -= i10;
        ?? r12 = 0;
        ?? zzbgeVar = 0;
        while (true) {
            zzbnv zzbnvVar = (zzbnv) this.zzf.peek();
            int iZzf = zzbnvVar.zzf();
            if (iZzf > i10) {
                zzbnvVarZzg2 = zzbnvVar.zzg(i10);
                i11 = 0;
            } else {
                if (this.zzj) {
                    zzbnvVarZzg = zzbnvVar.zzg(iZzf);
                    zzo();
                } else {
                    zzbnvVarZzg = (zzbnv) this.zzf.poll();
                }
                zzbnv zzbnvVar2 = zzbnvVarZzg;
                i11 = i10 - iZzf;
                zzbnvVarZzg2 = zzbnvVar2;
            }
            if (r12 == 0) {
                r11 = zzbnvVarZzg2;
            } else {
                if (zzbgeVar == 0) {
                    zzbgeVar = new zzbge(i11 != 0 ? Math.min(this.zzf.size() + 2, 16) : 2);
                    zzbgeVar.zzh(r12);
                    r12 = zzbgeVar;
                }
                zzbgeVar.zzh(zzbnvVarZzg2);
                r11 = r12;
                r10 = zzbgeVar;
            }
            if (i11 <= 0) {
                break;
            }
            r10 = zzbgeVar;
            i10 = i11;
            r12 = r11;
            zzbgeVar = r10;
        }
        return r11;
    }

    public final void zzh(zzbnv zzbnvVar) {
        boolean z10 = this.zzj && this.zzf.isEmpty();
        if (zzbnvVar instanceof zzbge) {
            zzbge zzbgeVar = (zzbge) zzbnvVar;
            while (!zzbgeVar.zzf.isEmpty()) {
                this.zzf.add((zzbnv) zzbgeVar.zzf.remove());
            }
            this.zzh += zzbgeVar.zzh;
            zzbgeVar.zzh = 0;
            zzbgeVar.close();
        } else {
            this.zzf.add(zzbnvVar);
            this.zzh += zzbnvVar.zzf();
        }
        if (z10) {
            ((zzbnv) this.zzf.peek()).zzb();
        }
    }

    @Override
    public final void zzi(ByteBuffer byteBuffer) {
        zzn(zzd, byteBuffer.remaining(), byteBuffer, 0);
    }

    @Override
    public final void zzj(OutputStream outputStream, int i10) throws IOException {
        zzm(zze, i10, outputStream, 0);
    }

    @Override
    public final void zzk(byte[] bArr, int i10, int i11) {
        zzn(zzc, i11, bArr, i10);
    }

    @Override
    public final void zzl(int i10) {
        zzn(zzb, i10, null, 0);
    }

    public zzbge(int i10) {
        this.zzi = new ArrayDeque(2);
        this.zzf = new ArrayDeque(i10);
    }
}
