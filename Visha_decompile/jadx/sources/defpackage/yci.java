package defpackage;

import com.google.android.gms.internal.play_billing.s;
import com.google.android.gms.internal.play_billing.zzfp;
import com.google.android.gms.internal.play_billing.zzjg;
import com.google.android.gms.internal.play_billing.zzjh;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class yci {
    public static final yci d = new yci(true);
    public final o2j a = new a2j();
    public boolean b;
    public boolean c;

    public yci() {
    }

    public static int a(zzjg zzjgVar, int i, Object obj) {
        int iW = o4i.w(i << 3);
        if (zzjgVar == zzjg.zzj) {
            iW += iW;
        }
        return iW + b(zzjgVar, obj);
    }

    public static int b(zzjg zzjgVar, Object obj) {
        int iB;
        int iW;
        zzjg zzjgVar2 = zzjg.zza;
        zzjh zzjhVar = zzjh.INT;
        switch (zzjgVar.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                return 8;
            case 1:
                ((Float) obj).floatValue();
                return 4;
            case 2:
                return o4i.x(((Long) obj).longValue());
            case 3:
                return o4i.x(((Long) obj).longValue());
            case 4:
                return o4i.x(((Integer) obj).intValue());
            case 5:
                ((Long) obj).longValue();
                return 8;
            case 6:
                ((Integer) obj).intValue();
                return 4;
            case 7:
                ((Boolean) obj).booleanValue();
                return 1;
            case 8:
                if (!(obj instanceof zzfp)) {
                    int i = l4j.a;
                    iB = s.b((String) obj);
                    iW = o4i.w(iB);
                } else {
                    iB = ((zzfp) obj).zzd();
                    iW = o4i.w(iB);
                }
                break;
            case 9:
                return ((g0j) obj).zzn();
            case 10:
                if (!(obj instanceof jti)) {
                    return o4i.v((g0j) obj);
                }
                iB = ((jti) obj).a();
                iW = o4i.w(iB);
                break;
                break;
            case 11:
                if (!(obj instanceof zzfp)) {
                    iB = ((byte[]) obj).length;
                    iW = o4i.w(iB);
                } else {
                    iB = ((zzfp) obj).zzd();
                    iW = o4i.w(iB);
                }
                break;
            case 12:
                return o4i.w(((Integer) obj).intValue());
            case 13:
                return obj instanceof hni ? o4i.x(((hni) obj).zza()) : o4i.x(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                return 4;
            case 15:
                ((Long) obj).longValue();
                return 8;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                return o4i.w((iIntValue >> 31) ^ (iIntValue + iIntValue));
            case 17:
                long jLongValue = ((Long) obj).longValue();
                return o4i.x((jLongValue >> 63) ^ (jLongValue + jLongValue));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return iW + iB;
    }

    public static void e(o4i o4iVar, zzjg zzjgVar, int i, Object obj) {
        if (zzjgVar == zzjg.zzj) {
            o4iVar.q(i, 3);
            ((g0j) obj).a(o4iVar);
            o4iVar.q(i, 4);
            return;
        }
        o4iVar.q(i, zzjgVar.zza());
        zzjh zzjhVar = zzjh.INT;
        switch (zzjgVar.ordinal()) {
            case 0:
                o4iVar.k(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 1:
                o4iVar.i(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 2:
                o4iVar.u(((Long) obj).longValue());
                break;
            case 3:
                o4iVar.u(((Long) obj).longValue());
                break;
            case 4:
                o4iVar.m(((Integer) obj).intValue());
                break;
            case 5:
                o4iVar.k(((Long) obj).longValue());
                break;
            case 6:
                o4iVar.i(((Integer) obj).intValue());
                break;
            case 7:
                o4iVar.c(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 8:
                if (!(obj instanceof zzfp)) {
                    o4iVar.p((String) obj);
                } else {
                    o4iVar.g((zzfp) obj);
                }
                break;
            case 9:
                ((g0j) obj).a(o4iVar);
                break;
            case 10:
                o4iVar.n((g0j) obj);
                break;
            case 11:
                if (!(obj instanceof zzfp)) {
                    byte[] bArr = (byte[]) obj;
                    o4iVar.e(bArr, 0, bArr.length);
                } else {
                    o4iVar.g((zzfp) obj);
                }
                break;
            case 12:
                o4iVar.s(((Integer) obj).intValue());
                break;
            case 13:
                if (!(obj instanceof hni)) {
                    o4iVar.m(((Integer) obj).intValue());
                } else {
                    o4iVar.m(((hni) obj).zza());
                }
                break;
            case 14:
                o4iVar.i(((Integer) obj).intValue());
                break;
            case 15:
                o4iVar.k(((Long) obj).longValue());
                break;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                o4iVar.s((iIntValue >> 31) ^ (iIntValue + iIntValue));
                break;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                o4iVar.u((jLongValue >> 63) ^ (jLongValue + jLongValue));
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    public static final void f(xbi xbiVar, Object obj) {
        boolean z;
        xbiVar.zzb();
        obj.getClass();
        zzjg zzjgVar = zzjg.zza;
        zzjh zzjhVar = zzjh.INT;
        switch (r0.zzb()) {
            case INT:
                z = obj instanceof Integer;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(xbiVar.zza()), xbiVar.zzb().zzb(), obj.getClass().getName()));
            case LONG:
                z = obj instanceof Long;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(xbiVar.zza()), xbiVar.zzb().zzb(), obj.getClass().getName()));
            case FLOAT:
                z = obj instanceof Float;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(xbiVar.zza()), xbiVar.zzb().zzb(), obj.getClass().getName()));
            case DOUBLE:
                z = obj instanceof Double;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(xbiVar.zza()), xbiVar.zzb().zzb(), obj.getClass().getName()));
            case BOOLEAN:
                z = obj instanceof Boolean;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(xbiVar.zza()), xbiVar.zzb().zzb(), obj.getClass().getName()));
            case STRING:
                z = obj instanceof String;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(xbiVar.zza()), xbiVar.zzb().zzb(), obj.getClass().getName()));
            case BYTE_STRING:
                if ((obj instanceof zzfp) || (obj instanceof byte[])) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(xbiVar.zza()), xbiVar.zzb().zzb(), obj.getClass().getName()));
            case ENUM:
                if ((obj instanceof Integer) || (obj instanceof hni)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(xbiVar.zza()), xbiVar.zzb().zzb(), obj.getClass().getName()));
            case MESSAGE:
                if ((obj instanceof g0j) || (obj instanceof jti)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(xbiVar.zza()), xbiVar.zzb().zzb(), obj.getClass().getName()));
            default:
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(xbiVar.zza()), xbiVar.zzb().zzb(), obj.getClass().getName()));
        }
    }

    public final void c() {
        if (this.b) {
            return;
        }
        o2j o2jVar = this.a;
        int iC = o2jVar.c();
        for (int i = 0; i < iC; i++) {
            Object value = o2jVar.g(i).getValue();
            if (value instanceof kli) {
                ((kli) value).x();
            }
        }
        Iterator it = o2jVar.d().iterator();
        while (it.hasNext()) {
            Object value2 = ((Map.Entry) it.next()).getValue();
            if (value2 instanceof kli) {
                ((kli) value2).x();
            }
        }
        o2jVar.a();
        this.b = true;
    }

    public final Object clone() {
        yci yciVar = new yci();
        o2j o2jVar = this.a;
        int iC = o2jVar.c();
        for (int i = 0; i < iC; i++) {
            Map.Entry entryG = o2jVar.g(i);
            ((d2j) entryG).a();
            yciVar.d(null, entryG.getValue());
        }
        for (Map.Entry entry : o2jVar.d()) {
            ubc.a(entry.getKey());
            yciVar.d(null, entry.getValue());
        }
        yciVar.c = this.c;
        return yciVar;
    }

    public final void d(xbi xbiVar, Object obj) {
        if (!xbiVar.zze()) {
            f(xbiVar, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            List list = (List) obj;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                Object obj2 = list.get(i);
                f(xbiVar, obj2);
                arrayList.add(obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof jti) {
            this.c = true;
        }
        this.a.f(xbiVar, obj);
    }

    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yci)) {
            return false;
        }
        o2j o2jVar = this.a;
        o2j o2jVar2 = ((yci) obj).a;
        if (o2jVar.size() == o2jVar2.size() && o2jVar.keySet().equals(o2jVar2.keySet())) {
            for (Map.Entry entry : o2jVar.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                Object obj2 = o2jVar2.get(key);
                if (value == obj2) {
                    zEquals = true;
                } else if (value == null || obj2 == null) {
                    zEquals = false;
                } else if (value instanceof jti) {
                    zEquals = value.equals(obj2);
                } else {
                    zEquals = obj2 instanceof jti ? obj2.equals(value) : value.equals(obj2);
                }
                if (!zEquals) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public yci(boolean z) {
        c();
        c();
    }
}
