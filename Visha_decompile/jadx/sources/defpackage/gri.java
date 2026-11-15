package defpackage;

import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzhak;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

public abstract class gri implements qti {
    public static void h(Iterable iterable, List list) {
        if (iterable instanceof Collection) {
            int size = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size);
            } else if (list instanceof yti) {
                ((yti) list).f(list.size() + size);
            }
        }
        int size2 = list.size();
        if (!(iterable instanceof List) || !(iterable instanceof RandomAccess)) {
            for (Object obj : iterable) {
                if (obj == null) {
                    k(list, size2);
                }
                list.add(obj);
            }
            return;
        }
        List list2 = (List) iterable;
        int size3 = list2.size();
        for (int i = 0; i < size3; i++) {
            Object obj2 = list2.get(i);
            if (obj2 == null) {
                k(list, size2);
            }
            list.add(obj2);
        }
    }

    public static zzhak i(rti rtiVar) {
        return new zzhak(rtiVar);
    }

    public static void j(Iterable iterable, List list) {
        Charset charset = zsi.a;
        iterable.getClass();
        if (!(iterable instanceof bti)) {
            if (iterable instanceof wti) {
                list.addAll((Collection) iterable);
                return;
            } else {
                h(iterable, list);
                return;
            }
        }
        List listZza = ((bti) iterable).zza();
        bti btiVar = (bti) list;
        int size = list.size();
        for (Object obj : listZza) {
            if (obj == null) {
                String str = "Element at index " + (btiVar.size() - size) + " is null.";
                int size2 = btiVar.size();
                while (true) {
                    size2--;
                    if (size2 < size) {
                        throw new NullPointerException(str);
                    }
                    btiVar.remove(size2);
                }
            } else if (obj instanceof zzgwn) {
                btiVar.zzb();
            } else if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                zzgwn.zzv(bArr, 0, bArr.length);
                btiVar.zzb();
            } else {
                btiVar.add((String) obj);
            }
        }
    }

    public static void k(List list, int i) {
        String str = "Element at index " + (list.size() - i) + " is null.";
        int size = list.size();
        while (true) {
            size--;
            if (size < i) {
                throw new NullPointerException(str);
            }
            list.remove(size);
        }
    }

    public gri f(byte[] bArr, esi esiVar) {
        return g(bArr, 0, bArr.length, esiVar);
    }

    public abstract gri g(byte[] bArr, int i, int i2, esi esiVar);
}
