package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.List;

final class zzef implements zzhv {
    private final zzee zza;

    private zzef(zzee zzeeVar) {
        byte[] bArr = zzfd.zzd;
        this.zza = zzeeVar;
        zzeeVar.zza = this;
    }

    public static zzef zza(zzee zzeeVar) {
        zzef zzefVar = zzeeVar.zza;
        return zzefVar != null ? zzefVar : new zzef(zzeeVar);
    }

    @Override
    public final void zzA(int i10, int i11) throws IOException {
        this.zza.zzp(i10, (i11 >> 31) ^ (i11 + i11));
    }

    @Override
    public final void zzB(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                zzee zzeeVar = this.zza;
                int iIntValue = ((Integer) list.get(i11)).intValue();
                zzeeVar.zzp(i10, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                i11++;
            }
            return;
        }
        this.zza.zzo(i10, 2);
        int iZzx = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            int iIntValue2 = ((Integer) list.get(i12)).intValue();
            iZzx += zzee.zzx((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
        }
        this.zza.zzq(iZzx);
        while (i11 < list.size()) {
            zzee zzeeVar2 = this.zza;
            int iIntValue3 = ((Integer) list.get(i11)).intValue();
            zzeeVar2.zzq((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
            i11++;
        }
    }

    @Override
    public final void zzC(int i10, long j10) throws IOException {
        this.zza.zzr(i10, (j10 >> 63) ^ (j10 + j10));
    }

    @Override
    public final void zzD(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                zzee zzeeVar = this.zza;
                long jLongValue = ((Long) list.get(i11)).longValue();
                zzeeVar.zzr(i10, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                i11++;
            }
            return;
        }
        this.zza.zzo(i10, 2);
        int iZzy = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            long jLongValue2 = ((Long) list.get(i12)).longValue();
            iZzy += zzee.zzy((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
        }
        this.zza.zzq(iZzy);
        while (i11 < list.size()) {
            zzee zzeeVar2 = this.zza;
            long jLongValue3 = ((Long) list.get(i11)).longValue();
            zzeeVar2.zzs((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
            i11++;
        }
    }

    @Override
    @Deprecated
    public final void zzE(int i10) throws IOException {
        this.zza.zzo(i10, 3);
    }

    @Override
    public final void zzF(int i10, String str) throws IOException {
        this.zza.zzm(i10, str);
    }

    @Override
    public final void zzG(int i10, List list) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzfk)) {
            while (i11 < list.size()) {
                this.zza.zzm(i10, (String) list.get(i11));
                i11++;
            }
            return;
        }
        zzfk zzfkVar = (zzfk) list;
        while (i11 < list.size()) {
            Object objZzf = zzfkVar.zzf(i11);
            if (objZzf instanceof String) {
                this.zza.zzm(i10, (String) objZzf);
            } else {
                this.zza.zze(i10, (zzdw) objZzf);
            }
            i11++;
        }
    }

    @Override
    public final void zzH(int i10, int i11) throws IOException {
        this.zza.zzp(i10, i11);
    }

    @Override
    public final void zzI(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.zza.zzp(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.zza.zzo(i10, 2);
        int iZzx = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZzx += zzee.zzx(((Integer) list.get(i12)).intValue());
        }
        this.zza.zzq(iZzx);
        while (i11 < list.size()) {
            this.zza.zzq(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override
    public final void zzJ(int i10, long j10) throws IOException {
        this.zza.zzr(i10, j10);
    }

    @Override
    public final void zzK(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.zza.zzr(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.zza.zzo(i10, 2);
        int iZzy = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZzy += zzee.zzy(((Long) list.get(i12)).longValue());
        }
        this.zza.zzq(iZzy);
        while (i11 < list.size()) {
            this.zza.zzs(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    @Override
    public final void zzb(int i10, boolean z10) throws IOException {
        this.zza.zzd(i10, z10);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public final void zzc(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.zza.zzd(i10, ((Boolean) list.get(i11)).booleanValue());
                i11++;
            }
            return;
        }
        this.zza.zzo(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Boolean) list.get(i13)).booleanValue();
            i12++;
        }
        this.zza.zzq(i12);
        while (i11 < list.size()) {
            this.zza.zzb(((Boolean) list.get(i11)).booleanValue() ? (byte) 1 : (byte) 0);
            i11++;
        }
    }

    @Override
    public final void zzd(int i10, zzdw zzdwVar) throws IOException {
        this.zza.zze(i10, zzdwVar);
    }

    @Override
    public final void zze(int i10, List list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.zza.zze(i10, (zzdw) list.get(i11));
        }
    }

    @Override
    public final void zzf(int i10, double d10) throws IOException {
        this.zza.zzh(i10, Double.doubleToRawLongBits(d10));
    }

    @Override
    public final void zzg(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.zza.zzh(i10, Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
                i11++;
            }
            return;
        }
        this.zza.zzo(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Double) list.get(i13)).doubleValue();
            i12 += 8;
        }
        this.zza.zzq(i12);
        while (i11 < list.size()) {
            this.zza.zzi(Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
            i11++;
        }
    }

    @Override
    @Deprecated
    public final void zzh(int i10) throws IOException {
        this.zza.zzo(i10, 4);
    }

    @Override
    public final void zzi(int i10, int i11) throws IOException {
        this.zza.zzj(i10, i11);
    }

    @Override
    public final void zzj(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.zza.zzj(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.zza.zzo(i10, 2);
        int iZzu = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZzu += zzee.zzu(((Integer) list.get(i12)).intValue());
        }
        this.zza.zzq(iZzu);
        while (i11 < list.size()) {
            this.zza.zzk(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override
    public final void zzk(int i10, int i11) throws IOException {
        this.zza.zzf(i10, i11);
    }

    @Override
    public final void zzl(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.zza.zzf(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.zza.zzo(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Integer) list.get(i13)).intValue();
            i12 += 4;
        }
        this.zza.zzq(i12);
        while (i11 < list.size()) {
            this.zza.zzg(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override
    public final void zzm(int i10, long j10) throws IOException {
        this.zza.zzh(i10, j10);
    }

    @Override
    public final void zzn(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.zza.zzh(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.zza.zzo(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Long) list.get(i13)).longValue();
            i12 += 8;
        }
        this.zza.zzq(i12);
        while (i11 < list.size()) {
            this.zza.zzi(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    @Override
    public final void zzo(int i10, float f10) throws IOException {
        this.zza.zzf(i10, Float.floatToRawIntBits(f10));
    }

    @Override
    public final void zzp(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.zza.zzf(i10, Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
                i11++;
            }
            return;
        }
        this.zza.zzo(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Float) list.get(i13)).floatValue();
            i12 += 4;
        }
        this.zza.zzq(i12);
        while (i11 < list.size()) {
            this.zza.zzg(Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
            i11++;
        }
    }

    @Override
    public final void zzq(int i10, Object obj, zzgm zzgmVar) throws IOException {
        zzee zzeeVar = this.zza;
        zzeeVar.zzo(i10, 3);
        zzgmVar.zzi((zzgc) obj, zzeeVar.zza);
        zzeeVar.zzo(i10, 4);
    }

    @Override
    public final void zzr(int i10, int i11) throws IOException {
        this.zza.zzj(i10, i11);
    }

    @Override
    public final void zzs(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.zza.zzj(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.zza.zzo(i10, 2);
        int iZzu = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZzu += zzee.zzu(((Integer) list.get(i12)).intValue());
        }
        this.zza.zzq(iZzu);
        while (i11 < list.size()) {
            this.zza.zzk(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override
    public final void zzt(int i10, long j10) throws IOException {
        this.zza.zzr(i10, j10);
    }

    @Override
    public final void zzu(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.zza.zzr(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.zza.zzo(i10, 2);
        int iZzy = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZzy += zzee.zzy(((Long) list.get(i12)).longValue());
        }
        this.zza.zzq(iZzy);
        while (i11 < list.size()) {
            this.zza.zzs(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    @Override
    public final void zzv(int i10, Object obj, zzgm zzgmVar) throws IOException {
        zzgc zzgcVar = (zzgc) obj;
        zzeb zzebVar = (zzeb) this.zza;
        zzebVar.zzq((i10 << 3) | 2);
        zzebVar.zzq(((zzdg) zzgcVar).zza(zzgmVar));
        zzgmVar.zzi(zzgcVar, zzebVar.zza);
    }

    @Override
    public final void zzw(int i10, int i11) throws IOException {
        this.zza.zzf(i10, i11);
    }

    @Override
    public final void zzx(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.zza.zzf(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.zza.zzo(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Integer) list.get(i13)).intValue();
            i12 += 4;
        }
        this.zza.zzq(i12);
        while (i11 < list.size()) {
            this.zza.zzg(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override
    public final void zzy(int i10, long j10) throws IOException {
        this.zza.zzh(i10, j10);
    }

    @Override
    public final void zzz(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.zza.zzh(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.zza.zzo(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Long) list.get(i13)).longValue();
            i12 += 8;
        }
        this.zza.zzq(i12);
        while (i11 < list.size()) {
            this.zza.zzi(((Long) list.get(i11)).longValue());
            i11++;
        }
    }
}
