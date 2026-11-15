package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

final class zzli<T> implements zzlu<T> {
    private final zzlc zza;
    private final zzmk<?, ?> zzb;
    private final boolean zzc;
    private final zzji<?> zzd;

    private zzli(zzmk<?, ?> zzmkVar, zzji<?> zzjiVar, zzlc zzlcVar) {
        this.zzb = zzmkVar;
        this.zzc = zzjiVar.zza(zzlcVar);
        this.zzd = zzjiVar;
        this.zza = zzlcVar;
    }

    @Override
    public final int zza(T t10) {
        zzmk<?, ?> zzmkVar = this.zzb;
        int iZzb = zzmkVar.zzb(zzmkVar.zzd(t10));
        return this.zzc ? iZzb + this.zzd.zza(t10).zza() : iZzb;
    }

    @Override
    public final int zzb(T t10) {
        int iHashCode = this.zzb.zzd(t10).hashCode();
        return this.zzc ? (iHashCode * 53) + this.zzd.zza(t10).hashCode() : iHashCode;
    }

    @Override
    public final void zzd(T t10) {
        this.zzb.zzf(t10);
        this.zzd.zzc(t10);
    }

    @Override
    public final boolean zze(T t10) {
        return this.zzd.zza(t10).zzg();
    }

    @Override
    public final boolean zzb(T t10, T t11) {
        if (!this.zzb.zzd(t10).equals(this.zzb.zzd(t11))) {
            return false;
        }
        if (this.zzc) {
            return this.zzd.zza(t10).equals(this.zzd.zza(t11));
        }
        return true;
    }

    static <T> zzli<T> zza(zzmk<?, ?> zzmkVar, zzji<?> zzjiVar, zzlc zzlcVar) {
        return new zzli<>(zzmkVar, zzjiVar, zzlcVar);
    }

    @Override
    public final T zza() {
        zzlc zzlcVar = this.zza;
        if (zzlcVar instanceof zzjt) {
            return (T) ((zzjt) zzlcVar).zzce();
        }
        return (T) zzlcVar.zzci().zzaj();
    }

    @Override
    public final void zza(T t10, T t11) {
        zzlw.zza(this.zzb, t10, t11);
        if (this.zzc) {
            zzlw.zza(this.zzd, t10, t11);
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:? A[LOOP:0: B:46:0x000c->B:54:?, LOOP_END, SYNTHETIC] */
    @Override
    public final void zza(T t10, zzlr zzlrVar, zzjg zzjgVar) throws IOException {
        boolean zZzt;
        zzmk<?, ?> zzmkVar = this.zzb;
        zzji<?> zzjiVar = this.zzd;
        Object objZzc = zzmkVar.zzc(t10);
        zzjm<T> zzjmVarZzb = zzjiVar.zzb(t10);
        while (zzlrVar.zzc() != Integer.MAX_VALUE) {
            try {
                int iZzd = zzlrVar.zzd();
                int iZzj = 0;
                if (iZzd != 11) {
                    if ((iZzd & 7) == 2) {
                        Object objZza = zzjiVar.zza(zzjgVar, this.zza, iZzd >>> 3);
                        if (objZza != null) {
                            zzjiVar.zza(zzlrVar, objZza, zzjgVar, zzjmVarZzb);
                        } else {
                            zZzt = zzmkVar.zza(objZzc, zzlrVar, 0);
                        }
                    } else {
                        zZzt = zzlrVar.zzt();
                    }
                    if (!zZzt) {
                        zzmkVar.zzb(t10, objZzc);
                        return;
                    }
                } else {
                    Object objZza2 = null;
                    zzik zzikVarZzp = null;
                    while (zzlrVar.zzc() != Integer.MAX_VALUE) {
                        int iZzd2 = zzlrVar.zzd();
                        if (iZzd2 == 16) {
                            iZzj = zzlrVar.zzj();
                            objZza2 = zzjiVar.zza(zzjgVar, this.zza, iZzj);
                        } else if (iZzd2 == 26) {
                            if (objZza2 != null) {
                                zzjiVar.zza(zzlrVar, objZza2, zzjgVar, zzjmVarZzb);
                            } else {
                                zzikVarZzp = zzlrVar.zzp();
                            }
                        } else if (!zzlrVar.zzt()) {
                            break;
                        }
                    }
                    if (zzlrVar.zzd() != 12) {
                        throw zzkb.zzb();
                    }
                    if (zzikVarZzp != null) {
                        if (objZza2 != null) {
                            zzjiVar.zza(zzikVarZzp, objZza2, zzjgVar, zzjmVarZzb);
                        } else {
                            zzmkVar.zza(objZzc, iZzj, zzikVarZzp);
                        }
                    }
                }
                zZzt = true;
                if (!zZzt) {
                    zzmkVar.zzb(t10, objZzc);
                    return;
                }
            } catch (Throwable th2) {
                zzmkVar.zzb(t10, objZzc);
                throw th2;
            }
        }
        zzmkVar.zzb(t10, objZzc);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0094  */
    /* JADX WARN: Code duplicated, block: B:56:0x0099 A[EDGE_INSN: B:56:0x0099->B:34:0x0099 BREAK  A[LOOP:1: B:18:0x0053->B:61:0x0053], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void zza(T t10, byte[] bArr, int i10, int i11, zzij zzijVar) throws IOException {
        zzjt zzjtVar = (zzjt) t10;
        zzmj zzmjVarZzd = zzjtVar.zzb;
        if (zzmjVarZzd == zzmj.zzc()) {
            zzmjVarZzd = zzmj.zzd();
            zzjtVar.zzb = zzmjVarZzd;
        }
        ((zzjt.zzd) t10).zza();
        zzjt.zzf zzfVar = null;
        while (i10 < i11) {
            int iZzc = zzig.zzc(bArr, i10, zzijVar);
            int i12 = zzijVar.zza;
            if (i12 == 11) {
                int i13 = 0;
                zzik zzikVar = null;
                while (iZzc < i11) {
                    iZzc = zzig.zzc(bArr, iZzc, zzijVar);
                    int i14 = zzijVar.zza;
                    int i15 = i14 >>> 3;
                    int i16 = i14 & 7;
                    if (i15 == 2) {
                        if (i16 != 0) {
                            if (i14 != 12) {
                                break;
                                break;
                            }
                            iZzc = zzig.zza(i14, bArr, iZzc, i11, zzijVar);
                        } else {
                            iZzc = zzig.zzc(bArr, iZzc, zzijVar);
                            i13 = zzijVar.zza;
                            zzfVar = (zzjt.zzf) this.zzd.zza(zzijVar.zzd, this.zza, i13);
                        }
                    } else {
                        if (i15 == 3) {
                            if (zzfVar != null) {
                                zzlq.zza();
                                throw new NoSuchMethodError();
                            }
                            if (i16 == 2) {
                                iZzc = zzig.zza(bArr, iZzc, zzijVar);
                                zzikVar = (zzik) zzijVar.zzc;
                            }
                        }
                        if (i14 != 12) {
                            break;
                        } else {
                            iZzc = zzig.zza(i14, bArr, iZzc, i11, zzijVar);
                        }
                    }
                }
                if (zzikVar != null) {
                    zzmjVarZzd.zza((i13 << 3) | 2, zzikVar);
                }
                i10 = iZzc;
            } else if ((i12 & 7) == 2) {
                zzfVar = (zzjt.zzf) this.zzd.zza(zzijVar.zzd, this.zza, i12 >>> 3);
                if (zzfVar == null) {
                    i10 = zzig.zza(i12, bArr, iZzc, i11, zzmjVarZzd, zzijVar);
                } else {
                    zzlq.zza();
                    throw new NoSuchMethodError();
                }
            } else {
                i10 = zzig.zza(i12, bArr, iZzc, i11, zzijVar);
            }
        }
        if (i10 != i11) {
            throw zzkb.zzg();
        }
    }

    @Override
    public final void zza(T t10, zznb zznbVar) throws IOException {
        Iterator itZzd = this.zzd.zza(t10).zzd();
        while (itZzd.hasNext()) {
            Map.Entry entry = (Map.Entry) itZzd.next();
            zzjo zzjoVar = (zzjo) entry.getKey();
            if (zzjoVar.zzc() == zzmz.MESSAGE && !zzjoVar.zze() && !zzjoVar.zzd()) {
                if (entry instanceof zzkf) {
                    zznbVar.zza(zzjoVar.zza(), (Object) ((zzkf) entry).zza().zzb());
                } else {
                    zznbVar.zza(zzjoVar.zza(), entry.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        zzmk<?, ?> zzmkVar = this.zzb;
        zzmkVar.zza(zzmkVar.zzd(t10), zznbVar);
    }
}
