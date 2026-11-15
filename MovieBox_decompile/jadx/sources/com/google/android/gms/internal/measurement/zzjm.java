package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class zzjm<T extends zzjo<T>> {
    private static final zzjm<?> zzb = new zzjm<>(true);
    final zzlv<T, Object> zza;
    private boolean zzc;
    private boolean zzd;

    private zzjm() {
        this.zza = new zzly();
    }

    static int zza(zzms zzmsVar, int i10, Object obj) {
        int iZzi = zzjc.zzi(i10);
        if (zzmsVar == zzms.zzj) {
            zzjv.zza((zzlc) obj);
            iZzi <<= 1;
        }
        return iZzi + zza(zzmsVar, obj);
    }

    public static <T extends zzjo<T>> zzjm<T> zzb() {
        return (zzjm<T>) zzb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object clone() throws CloneNotSupportedException {
        zzjm zzjmVar = new zzjm();
        int iZza = this.zza.zza();
        for (int i10 = 0; i10 < iZza; i10++) {
            Map.Entry<K, Object> entryZza = this.zza.zza(i10);
            zzjmVar.zzb((zzjo) entryZza.getKey(), entryZza.getValue());
        }
        Iterator it = this.zza.zzb().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zzjmVar.zzb((zzjo) entry.getKey(), entry.getValue());
        }
        zzjmVar.zzd = this.zzd;
        return zzjmVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzjm) {
            return this.zza.equals(((zzjm) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    final Iterator<Map.Entry<T, Object>> zzc() {
        if (this.zza.isEmpty()) {
            return Collections.emptyIterator();
        }
        return this.zzd ? new zzki(this.zza.zzc().iterator()) : this.zza.zzc().iterator();
    }

    public final Iterator<Map.Entry<T, Object>> zzd() {
        if (this.zza.isEmpty()) {
            return Collections.emptyIterator();
        }
        return this.zzd ? new zzki(this.zza.entrySet().iterator()) : this.zza.entrySet().iterator();
    }

    public final void zze() {
        if (this.zzc) {
            return;
        }
        int iZza = this.zza.zza();
        for (int i10 = 0; i10 < iZza; i10++) {
            Object value = this.zza.zza(i10).getValue();
            if (value instanceof zzjt) {
                ((zzjt) value).zzcl();
            }
        }
        Iterator it = this.zza.zzb().iterator();
        while (it.hasNext()) {
            Object value2 = ((Map.Entry) it.next()).getValue();
            if (value2 instanceof zzjt) {
                ((zzjt) value2).zzcl();
            }
        }
        this.zza.zzd();
        this.zzc = true;
    }

    public final boolean zzf() {
        return this.zzc;
    }

    public final boolean zzg() {
        int iZza = this.zza.zza();
        for (int i10 = 0; i10 < iZza; i10++) {
            if (!zzc(this.zza.zza(i10))) {
                return false;
            }
        }
        Iterator it = this.zza.zzb().iterator();
        while (it.hasNext()) {
            if (!zzc((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    private final void zzb(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        boolean z10 = value instanceof zzkg;
        if (key.zze()) {
            if (z10) {
                throw new IllegalStateException("Lazy fields can not be repeated");
            }
            Object objZza = zza((zzjo) key);
            List list = (List) value;
            int size = list.size();
            if (objZza == null) {
                objZza = new ArrayList(size);
            }
            List list2 = (List) objZza;
            for (int i10 = 0; i10 < size; i10++) {
                list2.add(zza(list.get(i10)));
            }
            this.zza.put(key, objZza);
            return;
        }
        if (key.zzc() != zzmz.MESSAGE) {
            if (z10) {
                throw new IllegalStateException("Lazy fields must be message-valued");
            }
            this.zza.put(key, zza(value));
            return;
        }
        Object objZza2 = zza((zzjo) key);
        if (objZza2 != null) {
            if (z10) {
                throw new NoSuchMethodError();
            }
            this.zza.put(key, objZza2 instanceof zzlh ? key.zza((zzlh) objZza2, (zzlh) value) : key.zza(((zzlc) objZza2).zzcj(), (zzlc) value).zzai());
        } else {
            this.zza.put(key, zza(value));
            if (z10) {
                this.zzd = true;
            }
        }
    }

    private zzjm(zzlv<T, Object> zzlvVar) {
        this.zza = zzlvVar;
        zze();
    }

    private static int zza(zzms zzmsVar, Object obj) {
        switch (zzjl.zzb[zzmsVar.ordinal()]) {
            case 1:
                return zzjc.zza(((Double) obj).doubleValue());
            case 2:
                return zzjc.zza(((Float) obj).floatValue());
            case 3:
                return zzjc.zzd(((Long) obj).longValue());
            case 4:
                return zzjc.zzg(((Long) obj).longValue());
            case 5:
                return zzjc.zzf(((Integer) obj).intValue());
            case 6:
                return zzjc.zzc(((Long) obj).longValue());
            case 7:
                return zzjc.zze(((Integer) obj).intValue());
            case 8:
                return zzjc.zza(((Boolean) obj).booleanValue());
            case 9:
                return zzjc.zzb((zzlc) obj);
            case 10:
                if (obj instanceof zzkg) {
                    return zzjc.zza((zzkg) obj);
                }
                return zzjc.zzc((zzlc) obj);
            case 11:
                if (obj instanceof zzik) {
                    return zzjc.zzb((zzik) obj);
                }
                return zzjc.zzb((String) obj);
            case 12:
                if (obj instanceof zzik) {
                    return zzjc.zzb((zzik) obj);
                }
                return zzjc.zza((byte[]) obj);
            case 13:
                return zzjc.zzj(((Integer) obj).intValue());
            case 14:
                return zzjc.zzg(((Integer) obj).intValue());
            case 15:
                return zzjc.zze(((Long) obj).longValue());
            case 16:
                return zzjc.zzh(((Integer) obj).intValue());
            case 17:
                return zzjc.zzf(((Long) obj).longValue());
            case 18:
                if (obj instanceof zzjy) {
                    return zzjc.zzd(((zzjy) obj).zza());
                }
                return zzjc.zzd(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0022  */
    private static void zzc(T t10, Object obj) {
        boolean z10;
        zzms zzmsVarZzb = t10.zzb();
        zzjv.zza(obj);
        switch (zzjl.zza[zzmsVarZzb.zzb().ordinal()]) {
            case 1:
                z10 = obj instanceof Integer;
                break;
            case 2:
                z10 = obj instanceof Long;
                break;
            case 3:
                z10 = obj instanceof Float;
                break;
            case 4:
                z10 = obj instanceof Double;
                break;
            case 5:
                z10 = obj instanceof Boolean;
                break;
            case 6:
                z10 = obj instanceof String;
                break;
            case 7:
                if ((obj instanceof zzik) || (obj instanceof byte[])) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                break;
            case 8:
                if ((obj instanceof Integer) || (obj instanceof zzjy)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                break;
            case 9:
                if ((obj instanceof zzlc) || (obj instanceof zzkg)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                break;
            default:
                z10 = false;
                break;
        }
        if (!z10) {
            throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t10.zza()), t10.zzb().zzb(), obj.getClass().getName()));
        }
    }

    private zzjm(boolean z10) {
        this(new zzly());
        zze();
    }

    private static <T extends zzjo<T>> boolean zzc(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzc() != zzmz.MESSAGE) {
            return true;
        }
        if (key.zze()) {
            List list = (List) entry.getValue();
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (!zzb(list.get(i10))) {
                    return false;
                }
            }
            return true;
        }
        return zzb(entry.getValue());
    }

    private final void zzb(T t10, Object obj) {
        if (t10.zze()) {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = list.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i10 = 0; i10 < size; i10++) {
                    Object obj2 = list.get(i10);
                    zzc(t10, obj2);
                    arrayList.add(obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            zzc(t10, obj);
        }
        if (obj instanceof zzkg) {
            this.zzd = true;
        }
        this.zza.put(t10, obj);
    }

    public static int zza(zzjo<?> zzjoVar, Object obj) {
        zzms zzmsVarZzb = zzjoVar.zzb();
        int iZza = zzjoVar.zza();
        if (zzjoVar.zze()) {
            List list = (List) obj;
            int size = list.size();
            int i10 = 0;
            if (!zzjoVar.zzd()) {
                int iZza2 = 0;
                while (i10 < size) {
                    iZza2 += zza(zzmsVarZzb, iZza, list.get(i10));
                    i10++;
                }
                return iZza2;
            }
            if (list.isEmpty()) {
                return 0;
            }
            int iZza3 = 0;
            while (i10 < size) {
                iZza3 += zza(zzmsVarZzb, list.get(i10));
                i10++;
            }
            return zzjc.zzi(iZza) + iZza3 + zzjc.zzj(iZza3);
        }
        return zza(zzmsVarZzb, iZza, obj);
    }

    private static boolean zzb(Object obj) {
        if (obj instanceof zzle) {
            return ((zzle) obj).zzcn();
        }
        if (obj instanceof zzkg) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    public final int zza() {
        int iZza = this.zza.zza();
        int iZza2 = 0;
        for (int i10 = 0; i10 < iZza; i10++) {
            iZza2 += zza((Map.Entry) this.zza.zza(i10));
        }
        Iterator it = this.zza.zzb().iterator();
        while (it.hasNext()) {
            iZza2 += zza((Map.Entry) it.next());
        }
        return iZza2;
    }

    private static int zza(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzc() == zzmz.MESSAGE && !key.zze() && !key.zzd()) {
            if (value instanceof zzkg) {
                return zzjc.zza(entry.getKey().zza(), (zzkg) value);
            }
            return zzjc.zzb(entry.getKey().zza(), (zzlc) value);
        }
        return zza((zzjo<?>) key, value);
    }

    private static Object zza(Object obj) {
        if (obj instanceof zzlh) {
            return ((zzlh) obj).clone();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private final Object zza(T t10) {
        Object obj = this.zza.get(t10);
        if (obj instanceof zzkg) {
            throw new NoSuchMethodError();
        }
        return obj;
    }

    public final void zza(zzjm<T> zzjmVar) {
        int iZza = zzjmVar.zza.zza();
        for (int i10 = 0; i10 < iZza; i10++) {
            zzb((Map.Entry) zzjmVar.zza.zza(i10));
        }
        Iterator it = zzjmVar.zza.zzb().iterator();
        while (it.hasNext()) {
            zzb((Map.Entry) it.next());
        }
    }

    static void zza(zzjc zzjcVar, zzms zzmsVar, int i10, Object obj) throws IOException {
        if (zzmsVar == zzms.zzj) {
            zzlc zzlcVar = (zzlc) obj;
            zzjv.zza(zzlcVar);
            zzjcVar.zzc(i10, 3);
            zzlcVar.zza(zzjcVar);
            zzjcVar.zzc(i10, 4);
        }
        zzjcVar.zzc(i10, zzmsVar.zza());
        switch (zzjl.zzb[zzmsVar.ordinal()]) {
            case 1:
                zzjcVar.zzb(((Double) obj).doubleValue());
                break;
            case 2:
                zzjcVar.zzb(((Float) obj).floatValue());
                break;
            case 3:
                zzjcVar.zzb(((Long) obj).longValue());
                break;
            case 4:
                zzjcVar.zzb(((Long) obj).longValue());
                break;
            case 5:
                zzjcVar.zzb(((Integer) obj).intValue());
                break;
            case 6:
                zzjcVar.zza(((Long) obj).longValue());
                break;
            case 7:
                zzjcVar.zza(((Integer) obj).intValue());
                break;
            case 8:
                zzjcVar.zzb(((Boolean) obj).booleanValue());
                break;
            case 9:
                ((zzlc) obj).zza(zzjcVar);
                break;
            case 10:
                zzjcVar.zza((zzlc) obj);
                break;
            case 11:
                if (obj instanceof zzik) {
                    zzjcVar.zza((zzik) obj);
                } else {
                    zzjcVar.zza((String) obj);
                }
                break;
            case 12:
                if (obj instanceof zzik) {
                    zzjcVar.zza((zzik) obj);
                } else {
                    byte[] bArr = (byte[]) obj;
                    zzjcVar.zzb(bArr, 0, bArr.length);
                }
                break;
            case 13:
                zzjcVar.zzc(((Integer) obj).intValue());
                break;
            case 14:
                zzjcVar.zza(((Integer) obj).intValue());
                break;
            case 15:
                zzjcVar.zza(((Long) obj).longValue());
                break;
            case 16:
                zzjcVar.zzk(((Integer) obj).intValue());
                break;
            case 17:
                zzjcVar.zzh(((Long) obj).longValue());
                break;
            case 18:
                if (obj instanceof zzjy) {
                    zzjcVar.zzb(((zzjy) obj).zza());
                } else {
                    zzjcVar.zzb(((Integer) obj).intValue());
                }
                break;
        }
    }
}
