package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
import java.util.Map;

final class zzjb implements zzlr {
    private final zziw zza;
    private int zzb;
    private int zzc;
    private int zzd = 0;

    private zzjb(zziw zziwVar) {
        zziw zziwVar2 = (zziw) zzjv.zza(zziwVar, "input");
        this.zza = zziwVar2;
        zziwVar2.zzc = this;
    }

    @Override
    public final double zza() throws IOException {
        zzb(1);
        return this.zza.zza();
    }

    @Override
    public final float zzb() throws IOException {
        zzb(5);
        return this.zza.zzb();
    }

    @Override
    public final int zzc() throws IOException {
        int i10 = this.zzd;
        if (i10 != 0) {
            this.zzb = i10;
            this.zzd = 0;
        } else {
            this.zzb = this.zza.zzi();
        }
        int i11 = this.zzb;
        if (i11 == 0 || i11 == this.zzc) {
            return Integer.MAX_VALUE;
        }
        return i11 >>> 3;
    }

    @Override
    public final int zzd() {
        return this.zzb;
    }

    @Override
    public final int zze() throws IOException {
        zzb(0);
        return this.zza.zzd();
    }

    @Override
    public final int zzf() throws IOException {
        zzb(5);
        return this.zza.zze();
    }

    @Override
    public final int zzg() throws IOException {
        zzb(0);
        return this.zza.zzf();
    }

    @Override
    public final int zzh() throws IOException {
        zzb(5);
        return this.zza.zzg();
    }

    @Override
    public final int zzi() throws IOException {
        zzb(0);
        return this.zza.zzh();
    }

    @Override
    public final int zzj() throws IOException {
        zzb(0);
        return this.zza.zzj();
    }

    @Override
    public final long zzk() throws IOException {
        zzb(1);
        return this.zza.zzk();
    }

    @Override
    public final long zzl() throws IOException {
        zzb(0);
        return this.zza.zzl();
    }

    @Override
    public final long zzm() throws IOException {
        zzb(1);
        return this.zza.zzn();
    }

    @Override
    public final long zzn() throws IOException {
        zzb(0);
        return this.zza.zzo();
    }

    @Override
    public final long zzo() throws IOException {
        zzb(0);
        return this.zza.zzp();
    }

    @Override
    public final zzik zzp() throws IOException {
        zzb(2);
        return this.zza.zzq();
    }

    @Override
    public final String zzq() throws IOException {
        zzb(2);
        return this.zza.zzr();
    }

    @Override
    public final String zzr() throws IOException {
        zzb(2);
        return this.zza.zzs();
    }

    @Override
    public final boolean zzs() throws IOException {
        zzb(0);
        return this.zza.zzu();
    }

    @Override
    public final boolean zzt() throws IOException {
        int i10;
        if (this.zza.zzt() || (i10 = this.zzb) == this.zzc) {
            return false;
        }
        return this.zza.zze(i10);
    }

    private final <T> void zzd(T t10, zzlu<T> zzluVar, zzjg zzjgVar) throws IOException {
        int iZzj = this.zza.zzj();
        zziw zziwVar = this.zza;
        if (zziwVar.zza >= zziwVar.zzb) {
            throw zzkb.zzh();
        }
        int iZzb = zziwVar.zzb(iZzj);
        this.zza.zza++;
        zzluVar.zza(t10, this, zzjgVar);
        this.zza.zzc(0);
        zziw zziwVar2 = this.zza;
        zziwVar2.zza--;
        zziwVar2.zzd(iZzb);
    }

    public static zzjb zza(zziw zziwVar) {
        zzjb zzjbVar = zziwVar.zzc;
        return zzjbVar != null ? zzjbVar : new zzjb(zziwVar);
    }

    private final <T> T zzb(zzlu<T> zzluVar, zzjg zzjgVar) throws IOException {
        T tZza = zzluVar.zza();
        zzd(tZza, zzluVar, zzjgVar);
        zzluVar.zzd(tZza);
        return tZza;
    }

    @Override
    public final void zze(List<Integer> list) throws IOException {
        int iZzi;
        int iZzi2;
        if (list instanceof zzjw) {
            zzjw zzjwVar = (zzjw) list;
            int i10 = this.zzb & 7;
            if (i10 == 2) {
                int iZzj = this.zza.zzj();
                zzc(iZzj);
                int iZzc = this.zza.zzc() + iZzj;
                do {
                    zzjwVar.zzd(this.zza.zze());
                } while (this.zza.zzc() < iZzc);
                return;
            }
            if (i10 == 5) {
                do {
                    zzjwVar.zzd(this.zza.zze());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        iZzi2 = this.zza.zzi();
                    }
                } while (iZzi2 == this.zzb);
                this.zzd = iZzi2;
                return;
            }
            throw zzkb.zza();
        }
        int i11 = this.zzb & 7;
        if (i11 == 2) {
            int iZzj2 = this.zza.zzj();
            zzc(iZzj2);
            int iZzc2 = this.zza.zzc() + iZzj2;
            do {
                list.add(Integer.valueOf(this.zza.zze()));
            } while (this.zza.zzc() < iZzc2);
            return;
        }
        if (i11 == 5) {
            do {
                list.add(Integer.valueOf(this.zza.zze()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        throw zzkb.zza();
    }

    @Override
    public final void zzf(List<Long> list) throws IOException {
        int iZzi;
        int iZzi2;
        if (list instanceof zzkn) {
            zzkn zzknVar = (zzkn) list;
            int i10 = this.zzb & 7;
            if (i10 == 1) {
                do {
                    zzknVar.zza(this.zza.zzk());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        iZzi2 = this.zza.zzi();
                    }
                } while (iZzi2 == this.zzb);
                this.zzd = iZzi2;
                return;
            }
            if (i10 == 2) {
                int iZzj = this.zza.zzj();
                zzd(iZzj);
                int iZzc = this.zza.zzc() + iZzj;
                do {
                    zzknVar.zza(this.zza.zzk());
                } while (this.zza.zzc() < iZzc);
                return;
            }
            throw zzkb.zza();
        }
        int i11 = this.zzb & 7;
        if (i11 == 1) {
            do {
                list.add(Long.valueOf(this.zza.zzk()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        if (i11 == 2) {
            int iZzj2 = this.zza.zzj();
            zzd(iZzj2);
            int iZzc2 = this.zza.zzc() + iZzj2;
            do {
                list.add(Long.valueOf(this.zza.zzk()));
            } while (this.zza.zzc() < iZzc2);
            return;
        }
        throw zzkb.zza();
    }

    @Override
    public final void zzg(List<Float> list) throws IOException {
        int iZzi;
        int iZzi2;
        if (list instanceof zzjs) {
            zzjs zzjsVar = (zzjs) list;
            int i10 = this.zzb & 7;
            if (i10 == 2) {
                int iZzj = this.zza.zzj();
                zzc(iZzj);
                int iZzc = this.zza.zzc() + iZzj;
                do {
                    zzjsVar.zza(this.zza.zzb());
                } while (this.zza.zzc() < iZzc);
                return;
            }
            if (i10 == 5) {
                do {
                    zzjsVar.zza(this.zza.zzb());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        iZzi2 = this.zza.zzi();
                    }
                } while (iZzi2 == this.zzb);
                this.zzd = iZzi2;
                return;
            }
            throw zzkb.zza();
        }
        int i11 = this.zzb & 7;
        if (i11 == 2) {
            int iZzj2 = this.zza.zzj();
            zzc(iZzj2);
            int iZzc2 = this.zza.zzc() + iZzj2;
            do {
                list.add(Float.valueOf(this.zza.zzb()));
            } while (this.zza.zzc() < iZzc2);
            return;
        }
        if (i11 == 5) {
            do {
                list.add(Float.valueOf(this.zza.zzb()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        throw zzkb.zza();
    }

    @Override
    public final void zzh(List<Integer> list) throws IOException {
        int iZzi;
        int iZzi2;
        if (list instanceof zzjw) {
            zzjw zzjwVar = (zzjw) list;
            int i10 = this.zzb & 7;
            if (i10 == 0) {
                do {
                    zzjwVar.zzd(this.zza.zzf());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        iZzi2 = this.zza.zzi();
                    }
                } while (iZzi2 == this.zzb);
                this.zzd = iZzi2;
                return;
            }
            if (i10 == 2) {
                int iZzc = this.zza.zzc() + this.zza.zzj();
                do {
                    zzjwVar.zzd(this.zza.zzf());
                } while (this.zza.zzc() < iZzc);
                zza(iZzc);
                return;
            }
            throw zzkb.zza();
        }
        int i11 = this.zzb & 7;
        if (i11 == 0) {
            do {
                list.add(Integer.valueOf(this.zza.zzf()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        if (i11 == 2) {
            int iZzc2 = this.zza.zzc() + this.zza.zzj();
            do {
                list.add(Integer.valueOf(this.zza.zzf()));
            } while (this.zza.zzc() < iZzc2);
            zza(iZzc2);
            return;
        }
        throw zzkb.zza();
    }

    @Override
    public final void zzi(List<Long> list) throws IOException {
        int iZzi;
        int iZzi2;
        if (list instanceof zzkn) {
            zzkn zzknVar = (zzkn) list;
            int i10 = this.zzb & 7;
            if (i10 == 0) {
                do {
                    zzknVar.zza(this.zza.zzl());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        iZzi2 = this.zza.zzi();
                    }
                } while (iZzi2 == this.zzb);
                this.zzd = iZzi2;
                return;
            }
            if (i10 == 2) {
                int iZzc = this.zza.zzc() + this.zza.zzj();
                do {
                    zzknVar.zza(this.zza.zzl());
                } while (this.zza.zzc() < iZzc);
                zza(iZzc);
                return;
            }
            throw zzkb.zza();
        }
        int i11 = this.zzb & 7;
        if (i11 == 0) {
            do {
                list.add(Long.valueOf(this.zza.zzl()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        if (i11 == 2) {
            int iZzc2 = this.zza.zzc() + this.zza.zzj();
            do {
                list.add(Long.valueOf(this.zza.zzl()));
            } while (this.zza.zzc() < iZzc2);
            zza(iZzc2);
            return;
        }
        throw zzkb.zza();
    }

    @Override
    public final void zzj(List<Integer> list) throws IOException {
        int iZzi;
        int iZzi2;
        if (list instanceof zzjw) {
            zzjw zzjwVar = (zzjw) list;
            int i10 = this.zzb & 7;
            if (i10 == 2) {
                int iZzj = this.zza.zzj();
                zzc(iZzj);
                int iZzc = this.zza.zzc() + iZzj;
                do {
                    zzjwVar.zzd(this.zza.zzg());
                } while (this.zza.zzc() < iZzc);
                return;
            }
            if (i10 == 5) {
                do {
                    zzjwVar.zzd(this.zza.zzg());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        iZzi2 = this.zza.zzi();
                    }
                } while (iZzi2 == this.zzb);
                this.zzd = iZzi2;
                return;
            }
            throw zzkb.zza();
        }
        int i11 = this.zzb & 7;
        if (i11 == 2) {
            int iZzj2 = this.zza.zzj();
            zzc(iZzj2);
            int iZzc2 = this.zza.zzc() + iZzj2;
            do {
                list.add(Integer.valueOf(this.zza.zzg()));
            } while (this.zza.zzc() < iZzc2);
            return;
        }
        if (i11 == 5) {
            do {
                list.add(Integer.valueOf(this.zza.zzg()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        throw zzkb.zza();
    }

    @Override
    public final void zzk(List<Long> list) throws IOException {
        int iZzi;
        int iZzi2;
        if (list instanceof zzkn) {
            zzkn zzknVar = (zzkn) list;
            int i10 = this.zzb & 7;
            if (i10 == 1) {
                do {
                    zzknVar.zza(this.zza.zzn());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        iZzi2 = this.zza.zzi();
                    }
                } while (iZzi2 == this.zzb);
                this.zzd = iZzi2;
                return;
            }
            if (i10 == 2) {
                int iZzj = this.zza.zzj();
                zzd(iZzj);
                int iZzc = this.zza.zzc() + iZzj;
                do {
                    zzknVar.zza(this.zza.zzn());
                } while (this.zza.zzc() < iZzc);
                return;
            }
            throw zzkb.zza();
        }
        int i11 = this.zzb & 7;
        if (i11 == 1) {
            do {
                list.add(Long.valueOf(this.zza.zzn()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        if (i11 == 2) {
            int iZzj2 = this.zza.zzj();
            zzd(iZzj2);
            int iZzc2 = this.zza.zzc() + iZzj2;
            do {
                list.add(Long.valueOf(this.zza.zzn()));
            } while (this.zza.zzc() < iZzc2);
            return;
        }
        throw zzkb.zza();
    }

    @Override
    public final void zzl(List<Integer> list) throws IOException {
        int iZzi;
        int iZzi2;
        if (list instanceof zzjw) {
            zzjw zzjwVar = (zzjw) list;
            int i10 = this.zzb & 7;
            if (i10 == 0) {
                do {
                    zzjwVar.zzd(this.zza.zzh());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        iZzi2 = this.zza.zzi();
                    }
                } while (iZzi2 == this.zzb);
                this.zzd = iZzi2;
                return;
            }
            if (i10 == 2) {
                int iZzc = this.zza.zzc() + this.zza.zzj();
                do {
                    zzjwVar.zzd(this.zza.zzh());
                } while (this.zza.zzc() < iZzc);
                zza(iZzc);
                return;
            }
            throw zzkb.zza();
        }
        int i11 = this.zzb & 7;
        if (i11 == 0) {
            do {
                list.add(Integer.valueOf(this.zza.zzh()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        if (i11 == 2) {
            int iZzc2 = this.zza.zzc() + this.zza.zzj();
            do {
                list.add(Integer.valueOf(this.zza.zzh()));
            } while (this.zza.zzc() < iZzc2);
            zza(iZzc2);
            return;
        }
        throw zzkb.zza();
    }

    @Override
    public final void zzm(List<Long> list) throws IOException {
        int iZzi;
        int iZzi2;
        if (list instanceof zzkn) {
            zzkn zzknVar = (zzkn) list;
            int i10 = this.zzb & 7;
            if (i10 == 0) {
                do {
                    zzknVar.zza(this.zza.zzo());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        iZzi2 = this.zza.zzi();
                    }
                } while (iZzi2 == this.zzb);
                this.zzd = iZzi2;
                return;
            }
            if (i10 == 2) {
                int iZzc = this.zza.zzc() + this.zza.zzj();
                do {
                    zzknVar.zza(this.zza.zzo());
                } while (this.zza.zzc() < iZzc);
                zza(iZzc);
                return;
            }
            throw zzkb.zza();
        }
        int i11 = this.zzb & 7;
        if (i11 == 0) {
            do {
                list.add(Long.valueOf(this.zza.zzo()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        if (i11 == 2) {
            int iZzc2 = this.zza.zzc() + this.zza.zzj();
            do {
                list.add(Long.valueOf(this.zza.zzo()));
            } while (this.zza.zzc() < iZzc2);
            zza(iZzc2);
            return;
        }
        throw zzkb.zza();
    }

    @Override
    public final void zzn(List<String> list) throws IOException {
        zza(list, false);
    }

    @Override
    public final void zzo(List<String> list) throws IOException {
        zza(list, true);
    }

    @Override
    public final void zzp(List<Integer> list) throws IOException {
        int iZzi;
        int iZzi2;
        if (list instanceof zzjw) {
            zzjw zzjwVar = (zzjw) list;
            int i10 = this.zzb & 7;
            if (i10 == 0) {
                do {
                    zzjwVar.zzd(this.zza.zzj());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        iZzi2 = this.zza.zzi();
                    }
                } while (iZzi2 == this.zzb);
                this.zzd = iZzi2;
                return;
            }
            if (i10 == 2) {
                int iZzc = this.zza.zzc() + this.zza.zzj();
                do {
                    zzjwVar.zzd(this.zza.zzj());
                } while (this.zza.zzc() < iZzc);
                zza(iZzc);
                return;
            }
            throw zzkb.zza();
        }
        int i11 = this.zzb & 7;
        if (i11 == 0) {
            do {
                list.add(Integer.valueOf(this.zza.zzj()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        if (i11 == 2) {
            int iZzc2 = this.zza.zzc() + this.zza.zzj();
            do {
                list.add(Integer.valueOf(this.zza.zzj()));
            } while (this.zza.zzc() < iZzc2);
            zza(iZzc2);
            return;
        }
        throw zzkb.zza();
    }

    @Override
    public final void zzq(List<Long> list) throws IOException {
        int iZzi;
        int iZzi2;
        if (list instanceof zzkn) {
            zzkn zzknVar = (zzkn) list;
            int i10 = this.zzb & 7;
            if (i10 == 0) {
                do {
                    zzknVar.zza(this.zza.zzp());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        iZzi2 = this.zza.zzi();
                    }
                } while (iZzi2 == this.zzb);
                this.zzd = iZzi2;
                return;
            }
            if (i10 == 2) {
                int iZzc = this.zza.zzc() + this.zza.zzj();
                do {
                    zzknVar.zza(this.zza.zzp());
                } while (this.zza.zzc() < iZzc);
                zza(iZzc);
                return;
            }
            throw zzkb.zza();
        }
        int i11 = this.zzb & 7;
        if (i11 == 0) {
            do {
                list.add(Long.valueOf(this.zza.zzp()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        if (i11 == 2) {
            int iZzc2 = this.zza.zzc() + this.zza.zzj();
            do {
                list.add(Long.valueOf(this.zza.zzp()));
            } while (this.zza.zzc() < iZzc2);
            zza(iZzc2);
            return;
        }
        throw zzkb.zza();
    }

    private final Object zza(zzms zzmsVar, Class<?> cls, zzjg zzjgVar) throws IOException {
        switch (zzja.zza[zzmsVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(zzs());
            case 2:
                return zzp();
            case 3:
                return Double.valueOf(zza());
            case 4:
                return Integer.valueOf(zze());
            case 5:
                return Integer.valueOf(zzf());
            case 6:
                return Long.valueOf(zzk());
            case 7:
                return Float.valueOf(zzb());
            case 8:
                return Integer.valueOf(zzg());
            case 9:
                return Long.valueOf(zzl());
            case 10:
                zzb(2);
                return zzb(zzlq.zza().zza((Class) cls), zzjgVar);
            case 11:
                return Integer.valueOf(zzh());
            case 12:
                return Long.valueOf(zzm());
            case 13:
                return Integer.valueOf(zzi());
            case 14:
                return Long.valueOf(zzn());
            case 15:
                return zzr();
            case 16:
                return Integer.valueOf(zzj());
            case 17:
                return Long.valueOf(zzo());
            default:
                throw new IllegalArgumentException("unsupported field type.");
        }
    }

    private final <T> void zzc(T t10, zzlu<T> zzluVar, zzjg zzjgVar) throws IOException {
        int i10 = this.zzc;
        this.zzc = ((this.zzb >>> 3) << 3) | 4;
        try {
            zzluVar.zza(t10, this, zzjgVar);
            if (this.zzb == this.zzc) {
                this.zzc = i10;
                return;
            }
            throw zzkb.zzg();
        } catch (Throwable th2) {
            this.zzc = i10;
            throw th2;
        }
    }

    @Override
    public final <T> void zzb(T t10, zzlu<T> zzluVar, zzjg zzjgVar) throws IOException {
        zzb(2);
        zzd(t10, zzluVar, zzjgVar);
    }

    @Override
    public final void zzb(List<zzik> list) throws IOException {
        int iZzi;
        if ((this.zzb & 7) == 2) {
            do {
                list.add(zzp());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        throw zzkb.zza();
    }

    @Override
    public final void zzd(List<Integer> list) throws IOException {
        int iZzi;
        int iZzi2;
        if (list instanceof zzjw) {
            zzjw zzjwVar = (zzjw) list;
            int i10 = this.zzb & 7;
            if (i10 == 0) {
                do {
                    zzjwVar.zzd(this.zza.zzd());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        iZzi2 = this.zza.zzi();
                    }
                } while (iZzi2 == this.zzb);
                this.zzd = iZzi2;
                return;
            }
            if (i10 == 2) {
                int iZzc = this.zza.zzc() + this.zza.zzj();
                do {
                    zzjwVar.zzd(this.zza.zzd());
                } while (this.zza.zzc() < iZzc);
                zza(iZzc);
                return;
            }
            throw zzkb.zza();
        }
        int i11 = this.zzb & 7;
        if (i11 == 0) {
            do {
                list.add(Integer.valueOf(this.zza.zzd()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        if (i11 == 2) {
            int iZzc2 = this.zza.zzc() + this.zza.zzj();
            do {
                list.add(Integer.valueOf(this.zza.zzd()));
            } while (this.zza.zzc() < iZzc2);
            zza(iZzc2);
            return;
        }
        throw zzkb.zza();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final <T> void zzb(List<T> list, zzlu<T> zzluVar, zzjg zzjgVar) throws IOException {
        int iZzi;
        int i10 = this.zzb;
        if ((i10 & 7) == 2) {
            do {
                list.add(zzb(zzluVar, zzjgVar));
                if (this.zza.zzt() || this.zzd != 0) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == i10);
            this.zzd = iZzi;
            return;
        }
        throw zzkb.zza();
    }

    @Override
    public final void zzc(List<Double> list) throws IOException {
        int iZzi;
        int iZzi2;
        if (list instanceof zzje) {
            zzje zzjeVar = (zzje) list;
            int i10 = this.zzb & 7;
            if (i10 == 1) {
                do {
                    zzjeVar.zza(this.zza.zza());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        iZzi2 = this.zza.zzi();
                    }
                } while (iZzi2 == this.zzb);
                this.zzd = iZzi2;
                return;
            }
            if (i10 == 2) {
                int iZzj = this.zza.zzj();
                zzd(iZzj);
                int iZzc = this.zza.zzc() + iZzj;
                do {
                    zzjeVar.zza(this.zza.zza());
                } while (this.zza.zzc() < iZzc);
                return;
            }
            throw zzkb.zza();
        }
        int i11 = this.zzb & 7;
        if (i11 == 1) {
            do {
                list.add(Double.valueOf(this.zza.zza()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        if (i11 == 2) {
            int iZzj2 = this.zza.zzj();
            zzd(iZzj2);
            int iZzc2 = this.zza.zzc() + iZzj2;
            do {
                list.add(Double.valueOf(this.zza.zza()));
            } while (this.zza.zzc() < iZzc2);
            return;
        }
        throw zzkb.zza();
    }

    private final void zzb(int i10) throws IOException {
        if ((this.zzb & 7) != i10) {
            throw zzkb.zza();
        }
    }

    private final <T> T zza(zzlu<T> zzluVar, zzjg zzjgVar) throws IOException {
        T tZza = zzluVar.zza();
        zzc(tZza, zzluVar, zzjgVar);
        zzluVar.zzd(tZza);
        return tZza;
    }

    @Override
    public final <T> void zza(T t10, zzlu<T> zzluVar, zzjg zzjgVar) throws IOException {
        zzb(3);
        zzc(t10, zzluVar, zzjgVar);
    }

    @Override
    public final void zza(List<Boolean> list) throws IOException {
        int iZzi;
        int iZzi2;
        if (list instanceof zzii) {
            zzii zziiVar = (zzii) list;
            int i10 = this.zzb & 7;
            if (i10 == 0) {
                do {
                    zziiVar.zza(this.zza.zzu());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        iZzi2 = this.zza.zzi();
                    }
                } while (iZzi2 == this.zzb);
                this.zzd = iZzi2;
                return;
            }
            if (i10 == 2) {
                int iZzc = this.zza.zzc() + this.zza.zzj();
                do {
                    zziiVar.zza(this.zza.zzu());
                } while (this.zza.zzc() < iZzc);
                zza(iZzc);
                return;
            }
            throw zzkb.zza();
        }
        int i11 = this.zzb & 7;
        if (i11 == 0) {
            do {
                list.add(Boolean.valueOf(this.zza.zzu()));
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        if (i11 == 2) {
            int iZzc2 = this.zza.zzc() + this.zza.zzj();
            do {
                list.add(Boolean.valueOf(this.zza.zzu()));
            } while (this.zza.zzc() < iZzc2);
            zza(iZzc2);
            return;
        }
        throw zzkb.zza();
    }

    private static void zzd(int i10) throws IOException {
        if ((i10 & 7) != 0) {
            throw zzkb.zzg();
        }
    }

    private static void zzc(int i10) throws IOException {
        if ((i10 & 3) != 0) {
            throw zzkb.zzg();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @Deprecated
    public final <T> void zza(List<T> list, zzlu<T> zzluVar, zzjg zzjgVar) throws IOException {
        int iZzi;
        int i10 = this.zzb;
        if ((i10 & 7) == 3) {
            do {
                list.add(zza(zzluVar, zzjgVar));
                if (this.zza.zzt() || this.zzd != 0) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == i10);
            this.zzd = iZzi;
            return;
        }
        throw zzkb.zza();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final <K, V> void zza(Map<K, V> map, zzkt<K, V> zzktVar, zzjg zzjgVar) throws IOException {
        zzb(2);
        int iZzb = this.zza.zzb(this.zza.zzj());
        Object objZza = zzktVar.zzb;
        Object objZza2 = zzktVar.zzd;
        while (true) {
            try {
                int iZzc = zzc();
                if (iZzc == Integer.MAX_VALUE || this.zza.zzt()) {
                    break;
                }
                if (iZzc == 1) {
                    objZza = zza(zzktVar.zza, (Class<?>) null, (zzjg) null);
                } else if (iZzc != 2) {
                    try {
                        if (!zzt()) {
                            throw new zzkb("Unable to parse map entry.");
                        }
                    } catch (zzke unused) {
                        if (!zzt()) {
                            throw new zzkb("Unable to parse map entry.");
                        }
                    }
                } else {
                    objZza2 = zza(zzktVar.zzc, zzktVar.zzd.getClass(), zzjgVar);
                }
            } catch (Throwable th2) {
                this.zza.zzd(iZzb);
                throw th2;
            }
        }
        map.put(objZza, objZza2);
        this.zza.zzd(iZzb);
    }

    private final void zza(List<String> list, boolean z10) throws IOException {
        int iZzi;
        int iZzi2;
        if ((this.zzb & 7) == 2) {
            if ((list instanceof zzkj) && !z10) {
                zzkj zzkjVar = (zzkj) list;
                do {
                    zzkjVar.zza(zzp());
                    if (this.zza.zzt()) {
                        return;
                    } else {
                        iZzi2 = this.zza.zzi();
                    }
                } while (iZzi2 == this.zzb);
                this.zzd = iZzi2;
                return;
            }
            do {
                list.add(z10 ? zzr() : zzq());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZzi = this.zza.zzi();
                }
            } while (iZzi == this.zzb);
            this.zzd = iZzi;
            return;
        }
        throw zzkb.zza();
    }

    private final void zza(int i10) throws IOException {
        if (this.zza.zzc() != i10) {
            throw zzkb.zzi();
        }
    }
}
