package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
import java.util.Map;

final class zzjf implements zznb {
    private final zzjc zza;

    private zzjf(zzjc zzjcVar) {
        zzjc zzjcVar2 = (zzjc) zzjv.zza(zzjcVar, "output");
        this.zza = zzjcVar2;
        zzjcVar2.zza = this;
    }

    @Override
    public final int zza() {
        return 1;
    }

    @Override
    public final void zzb(int i10, List<Double> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzje)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.zza.zzb(i10, list.get(i11).doubleValue());
                    i11++;
                }
                return;
            }
            this.zza.zzc(i10, 2);
            int iZza = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                iZza += zzjc.zza(list.get(i12).doubleValue());
            }
            this.zza.zzc(iZza);
            while (i11 < list.size()) {
                this.zza.zzb(list.get(i11).doubleValue());
                i11++;
            }
            return;
        }
        zzje zzjeVar = (zzje) list;
        if (!z10) {
            while (i11 < zzjeVar.size()) {
                this.zza.zzb(i10, zzjeVar.zzb(i11));
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZza2 = 0;
        for (int i13 = 0; i13 < zzjeVar.size(); i13++) {
            iZza2 += zzjc.zza(zzjeVar.zzb(i13));
        }
        this.zza.zzc(iZza2);
        while (i11 < zzjeVar.size()) {
            this.zza.zzb(zzjeVar.zzb(i11));
            i11++;
        }
    }

    @Override
    public final void zzc(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzjw)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.zza.zzb(i10, list.get(i11).intValue());
                    i11++;
                }
                return;
            }
            this.zza.zzc(i10, 2);
            int iZzd = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                iZzd += zzjc.zzd(list.get(i12).intValue());
            }
            this.zza.zzc(iZzd);
            while (i11 < list.size()) {
                this.zza.zzb(list.get(i11).intValue());
                i11++;
            }
            return;
        }
        zzjw zzjwVar = (zzjw) list;
        if (!z10) {
            while (i11 < zzjwVar.size()) {
                this.zza.zzb(i10, zzjwVar.zzb(i11));
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzd2 = 0;
        for (int i13 = 0; i13 < zzjwVar.size(); i13++) {
            iZzd2 += zzjc.zzd(zzjwVar.zzb(i13));
        }
        this.zza.zzc(iZzd2);
        while (i11 < zzjwVar.size()) {
            this.zza.zzb(zzjwVar.zzb(i11));
            i11++;
        }
    }

    @Override
    public final void zzd(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzjw)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.zza.zza(i10, list.get(i11).intValue());
                    i11++;
                }
                return;
            }
            this.zza.zzc(i10, 2);
            int iZze = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                iZze += zzjc.zze(list.get(i12).intValue());
            }
            this.zza.zzc(iZze);
            while (i11 < list.size()) {
                this.zza.zza(list.get(i11).intValue());
                i11++;
            }
            return;
        }
        zzjw zzjwVar = (zzjw) list;
        if (!z10) {
            while (i11 < zzjwVar.size()) {
                this.zza.zza(i10, zzjwVar.zzb(i11));
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZze2 = 0;
        for (int i13 = 0; i13 < zzjwVar.size(); i13++) {
            iZze2 += zzjc.zze(zzjwVar.zzb(i13));
        }
        this.zza.zzc(iZze2);
        while (i11 < zzjwVar.size()) {
            this.zza.zza(zzjwVar.zzb(i11));
            i11++;
        }
    }

    @Override
    public final void zze(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzkn)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.zza.zza(i10, list.get(i11).longValue());
                    i11++;
                }
                return;
            }
            this.zza.zzc(i10, 2);
            int iZzc = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                iZzc += zzjc.zzc(list.get(i12).longValue());
            }
            this.zza.zzc(iZzc);
            while (i11 < list.size()) {
                this.zza.zza(list.get(i11).longValue());
                i11++;
            }
            return;
        }
        zzkn zzknVar = (zzkn) list;
        if (!z10) {
            while (i11 < zzknVar.size()) {
                this.zza.zza(i10, zzknVar.zzb(i11));
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzc2 = 0;
        for (int i13 = 0; i13 < zzknVar.size(); i13++) {
            iZzc2 += zzjc.zzc(zzknVar.zzb(i13));
        }
        this.zza.zzc(iZzc2);
        while (i11 < zzknVar.size()) {
            this.zza.zza(zzknVar.zzb(i11));
            i11++;
        }
    }

    @Override
    public final void zzf(int i10, List<Float> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzjs)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.zza.zzb(i10, list.get(i11).floatValue());
                    i11++;
                }
                return;
            }
            this.zza.zzc(i10, 2);
            int iZza = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                iZza += zzjc.zza(list.get(i12).floatValue());
            }
            this.zza.zzc(iZza);
            while (i11 < list.size()) {
                this.zza.zzb(list.get(i11).floatValue());
                i11++;
            }
            return;
        }
        zzjs zzjsVar = (zzjs) list;
        if (!z10) {
            while (i11 < zzjsVar.size()) {
                this.zza.zzb(i10, zzjsVar.zzb(i11));
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZza2 = 0;
        for (int i13 = 0; i13 < zzjsVar.size(); i13++) {
            iZza2 += zzjc.zza(zzjsVar.zzb(i13));
        }
        this.zza.zzc(iZza2);
        while (i11 < zzjsVar.size()) {
            this.zza.zzb(zzjsVar.zzb(i11));
            i11++;
        }
    }

    @Override
    public final void zzg(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzjw)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.zza.zzb(i10, list.get(i11).intValue());
                    i11++;
                }
                return;
            }
            this.zza.zzc(i10, 2);
            int iZzf = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                iZzf += zzjc.zzf(list.get(i12).intValue());
            }
            this.zza.zzc(iZzf);
            while (i11 < list.size()) {
                this.zza.zzb(list.get(i11).intValue());
                i11++;
            }
            return;
        }
        zzjw zzjwVar = (zzjw) list;
        if (!z10) {
            while (i11 < zzjwVar.size()) {
                this.zza.zzb(i10, zzjwVar.zzb(i11));
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzf2 = 0;
        for (int i13 = 0; i13 < zzjwVar.size(); i13++) {
            iZzf2 += zzjc.zzf(zzjwVar.zzb(i13));
        }
        this.zza.zzc(iZzf2);
        while (i11 < zzjwVar.size()) {
            this.zza.zzb(zzjwVar.zzb(i11));
            i11++;
        }
    }

    @Override
    public final void zzh(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzkn)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.zza.zzb(i10, list.get(i11).longValue());
                    i11++;
                }
                return;
            }
            this.zza.zzc(i10, 2);
            int iZzd = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                iZzd += zzjc.zzd(list.get(i12).longValue());
            }
            this.zza.zzc(iZzd);
            while (i11 < list.size()) {
                this.zza.zzb(list.get(i11).longValue());
                i11++;
            }
            return;
        }
        zzkn zzknVar = (zzkn) list;
        if (!z10) {
            while (i11 < zzknVar.size()) {
                this.zza.zzb(i10, zzknVar.zzb(i11));
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzd2 = 0;
        for (int i13 = 0; i13 < zzknVar.size(); i13++) {
            iZzd2 += zzjc.zzd(zzknVar.zzb(i13));
        }
        this.zza.zzc(iZzd2);
        while (i11 < zzknVar.size()) {
            this.zza.zzb(zzknVar.zzb(i11));
            i11++;
        }
    }

    @Override
    public final void zzi(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzjw)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.zza.zza(i10, list.get(i11).intValue());
                    i11++;
                }
                return;
            }
            this.zza.zzc(i10, 2);
            int iZzg = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                iZzg += zzjc.zzg(list.get(i12).intValue());
            }
            this.zza.zzc(iZzg);
            while (i11 < list.size()) {
                this.zza.zza(list.get(i11).intValue());
                i11++;
            }
            return;
        }
        zzjw zzjwVar = (zzjw) list;
        if (!z10) {
            while (i11 < zzjwVar.size()) {
                this.zza.zza(i10, zzjwVar.zzb(i11));
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzg2 = 0;
        for (int i13 = 0; i13 < zzjwVar.size(); i13++) {
            iZzg2 += zzjc.zzg(zzjwVar.zzb(i13));
        }
        this.zza.zzc(iZzg2);
        while (i11 < zzjwVar.size()) {
            this.zza.zza(zzjwVar.zzb(i11));
            i11++;
        }
    }

    @Override
    public final void zzj(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzkn)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.zza.zza(i10, list.get(i11).longValue());
                    i11++;
                }
                return;
            }
            this.zza.zzc(i10, 2);
            int iZze = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                iZze += zzjc.zze(list.get(i12).longValue());
            }
            this.zza.zzc(iZze);
            while (i11 < list.size()) {
                this.zza.zza(list.get(i11).longValue());
                i11++;
            }
            return;
        }
        zzkn zzknVar = (zzkn) list;
        if (!z10) {
            while (i11 < zzknVar.size()) {
                this.zza.zza(i10, zzknVar.zzb(i11));
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZze2 = 0;
        for (int i13 = 0; i13 < zzknVar.size(); i13++) {
            iZze2 += zzjc.zze(zzknVar.zzb(i13));
        }
        this.zza.zzc(iZze2);
        while (i11 < zzknVar.size()) {
            this.zza.zza(zzknVar.zzb(i11));
            i11++;
        }
    }

    @Override
    public final void zzk(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzjw)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.zza.zzk(i10, list.get(i11).intValue());
                    i11++;
                }
                return;
            }
            this.zza.zzc(i10, 2);
            int iZzh = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                iZzh += zzjc.zzh(list.get(i12).intValue());
            }
            this.zza.zzc(iZzh);
            while (i11 < list.size()) {
                this.zza.zzk(list.get(i11).intValue());
                i11++;
            }
            return;
        }
        zzjw zzjwVar = (zzjw) list;
        if (!z10) {
            while (i11 < zzjwVar.size()) {
                this.zza.zzk(i10, zzjwVar.zzb(i11));
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzh2 = 0;
        for (int i13 = 0; i13 < zzjwVar.size(); i13++) {
            iZzh2 += zzjc.zzh(zzjwVar.zzb(i13));
        }
        this.zza.zzc(iZzh2);
        while (i11 < zzjwVar.size()) {
            this.zza.zzk(zzjwVar.zzb(i11));
            i11++;
        }
    }

    @Override
    public final void zzl(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzkn)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.zza.zzh(i10, list.get(i11).longValue());
                    i11++;
                }
                return;
            }
            this.zza.zzc(i10, 2);
            int iZzf = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                iZzf += zzjc.zzf(list.get(i12).longValue());
            }
            this.zza.zzc(iZzf);
            while (i11 < list.size()) {
                this.zza.zzh(list.get(i11).longValue());
                i11++;
            }
            return;
        }
        zzkn zzknVar = (zzkn) list;
        if (!z10) {
            while (i11 < zzknVar.size()) {
                this.zza.zzh(i10, zzknVar.zzb(i11));
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzf2 = 0;
        for (int i13 = 0; i13 < zzknVar.size(); i13++) {
            iZzf2 += zzjc.zzf(zzknVar.zzb(i13));
        }
        this.zza.zzc(iZzf2);
        while (i11 < zzknVar.size()) {
            this.zza.zzh(zzknVar.zzb(i11));
            i11++;
        }
    }

    @Override
    public final void zzm(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzjw)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.zza.zzd(i10, list.get(i11).intValue());
                    i11++;
                }
                return;
            }
            this.zza.zzc(i10, 2);
            int iZzj = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                iZzj += zzjc.zzj(list.get(i12).intValue());
            }
            this.zza.zzc(iZzj);
            while (i11 < list.size()) {
                this.zza.zzc(list.get(i11).intValue());
                i11++;
            }
            return;
        }
        zzjw zzjwVar = (zzjw) list;
        if (!z10) {
            while (i11 < zzjwVar.size()) {
                this.zza.zzd(i10, zzjwVar.zzb(i11));
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzj2 = 0;
        for (int i13 = 0; i13 < zzjwVar.size(); i13++) {
            iZzj2 += zzjc.zzj(zzjwVar.zzb(i13));
        }
        this.zza.zzc(iZzj2);
        while (i11 < zzjwVar.size()) {
            this.zza.zzc(zzjwVar.zzb(i11));
            i11++;
        }
    }

    @Override
    public final void zzn(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzkn)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.zza.zzb(i10, list.get(i11).longValue());
                    i11++;
                }
                return;
            }
            this.zza.zzc(i10, 2);
            int iZzg = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                iZzg += zzjc.zzg(list.get(i12).longValue());
            }
            this.zza.zzc(iZzg);
            while (i11 < list.size()) {
                this.zza.zzb(list.get(i11).longValue());
                i11++;
            }
            return;
        }
        zzkn zzknVar = (zzkn) list;
        if (!z10) {
            while (i11 < zzknVar.size()) {
                this.zza.zzb(i10, zzknVar.zzb(i11));
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzg2 = 0;
        for (int i13 = 0; i13 < zzknVar.size(); i13++) {
            iZzg2 += zzjc.zzg(zzknVar.zzb(i13));
        }
        this.zza.zzc(iZzg2);
        while (i11 < zzknVar.size()) {
            this.zza.zzb(zzknVar.zzb(i11));
            i11++;
        }
    }

    public static zzjf zza(zzjc zzjcVar) {
        zzjf zzjfVar = zzjcVar.zza;
        return zzjfVar != null ? zzjfVar : new zzjf(zzjcVar);
    }

    @Override
    public final void zza(int i10, boolean z10) throws IOException {
        this.zza.zza(i10, z10);
    }

    @Override
    public final void zza(int i10, List<Boolean> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzii)) {
            if (z10) {
                this.zza.zzc(i10, 2);
                int iZza = 0;
                for (int i12 = 0; i12 < list.size(); i12++) {
                    iZza += zzjc.zza(list.get(i12).booleanValue());
                }
                this.zza.zzc(iZza);
                while (i11 < list.size()) {
                    this.zza.zzb(list.get(i11).booleanValue());
                    i11++;
                }
                return;
            }
            while (i11 < list.size()) {
                this.zza.zza(i10, list.get(i11).booleanValue());
                i11++;
            }
            return;
        }
        zzii zziiVar = (zzii) list;
        if (z10) {
            this.zza.zzc(i10, 2);
            int iZza2 = 0;
            for (int i13 = 0; i13 < zziiVar.size(); i13++) {
                iZza2 += zzjc.zza(zziiVar.zzb(i13));
            }
            this.zza.zzc(iZza2);
            while (i11 < zziiVar.size()) {
                this.zza.zzb(zziiVar.zzb(i11));
                i11++;
            }
            return;
        }
        while (i11 < zziiVar.size()) {
            this.zza.zza(i10, zziiVar.zzb(i11));
            i11++;
        }
    }

    @Override
    public final void zzb(int i10, int i11) throws IOException {
        this.zza.zza(i10, i11);
    }

    @Override
    public final void zzd(int i10, int i11) throws IOException {
        this.zza.zza(i10, i11);
    }

    @Override
    public final void zze(int i10, int i11) throws IOException {
        this.zza.zzk(i10, i11);
    }

    @Override
    public final void zzf(int i10, int i11) throws IOException {
        this.zza.zzd(i10, i11);
    }

    @Override
    public final void zzb(int i10, long j10) throws IOException {
        this.zza.zzb(i10, j10);
    }

    @Override
    public final void zze(int i10, long j10) throws IOException {
        this.zza.zzb(i10, j10);
    }

    @Override
    public final void zzd(int i10, long j10) throws IOException {
        this.zza.zzh(i10, j10);
    }

    @Override
    public final void zzb(int i10, Object obj, zzlu zzluVar) throws IOException {
        this.zza.zza(i10, (zzlc) obj, zzluVar);
    }

    @Override
    public final void zza(int i10, zzik zzikVar) throws IOException {
        this.zza.zza(i10, zzikVar);
    }

    @Override
    public final void zzb(int i10, List<?> list, zzlu zzluVar) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            zzb(i10, list.get(i11), zzluVar);
        }
    }

    @Override
    public final void zzc(int i10, int i11) throws IOException {
        this.zza.zzb(i10, i11);
    }

    @Override
    public final void zza(int i10, List<zzik> list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.zza.zza(i10, list.get(i11));
        }
    }

    @Override
    public final void zzc(int i10, long j10) throws IOException {
        this.zza.zza(i10, j10);
    }

    @Override
    @Deprecated
    public final void zzb(int i10) throws IOException {
        this.zza.zzc(i10, 3);
    }

    @Override
    public final void zza(int i10, double d10) throws IOException {
        this.zza.zzb(i10, d10);
    }

    @Override
    public final void zzb(int i10, List<String> list) throws IOException {
        int i11 = 0;
        if (list instanceof zzkj) {
            zzkj zzkjVar = (zzkj) list;
            while (i11 < list.size()) {
                Object objZza = zzkjVar.zza(i11);
                if (objZza instanceof String) {
                    this.zza.zza(i10, (String) objZza);
                } else {
                    this.zza.zza(i10, (zzik) objZza);
                }
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.zza.zza(i10, list.get(i11));
            i11++;
        }
    }

    @Override
    @Deprecated
    public final void zza(int i10) throws IOException {
        this.zza.zzc(i10, 4);
    }

    @Override
    public final void zza(int i10, int i11) throws IOException {
        this.zza.zzb(i10, i11);
    }

    @Override
    public final void zza(int i10, long j10) throws IOException {
        this.zza.zza(i10, j10);
    }

    @Override
    public final void zza(int i10, float f10) throws IOException {
        this.zza.zzb(i10, f10);
    }

    @Override
    public final void zza(int i10, Object obj, zzlu zzluVar) throws IOException {
        zzjc zzjcVar = this.zza;
        zzjcVar.zzc(i10, 3);
        zzluVar.zza((zzlc) obj, zzjcVar.zza);
        zzjcVar.zzc(i10, 4);
    }

    @Override
    public final void zza(int i10, List<?> list, zzlu zzluVar) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            zza(i10, list.get(i11), zzluVar);
        }
    }

    @Override
    public final <K, V> void zza(int i10, zzkt<K, V> zzktVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zza.zzc(i10, 2);
            this.zza.zzc(zzku.zza(zzktVar, entry.getKey(), entry.getValue()));
            zzku.zza(this.zza, zzktVar, entry.getKey(), entry.getValue());
        }
    }

    @Override
    public final void zza(int i10, Object obj) throws IOException {
        if (obj instanceof zzik) {
            this.zza.zzb(i10, (zzik) obj);
        } else {
            this.zza.zza(i10, (zzlc) obj);
        }
    }

    @Override
    public final void zza(int i10, String str) throws IOException {
        this.zza.zza(i10, str);
    }
}
