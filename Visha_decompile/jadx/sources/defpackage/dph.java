package defpackage;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.client.zzx;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

public final class dph implements cph {
    public final Object[] a;

    public dph(zzm zzmVar, String str, int i, String str2, zzx zzxVar) {
        HashSet hashSet = new HashSet(Arrays.asList(str2.split(StringUtils.COMMA)));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(zzmVar.zzb));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(a(zzmVar.zzc));
        } else if (hashSet.contains("npa")) {
            arrayList.add(zzmVar.zzc.getString("npa"));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(zzmVar.zzd));
        }
        if (hashSet.contains(TranSearchIndexablesContract.TranRawData.COLUMN_KEYWORDS)) {
            List list = zzmVar.zze;
            if (list != null) {
                arrayList.add(list.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(zzmVar.zzf));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(zzmVar.zzg));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(zzmVar.zzh));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(zzmVar.zzi);
        }
        if (hashSet.contains("location")) {
            Location location = zzmVar.zzk;
            if (location != null) {
                arrayList.add(location.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(zzmVar.zzl);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(a(zzmVar.zzm));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(a(zzmVar.zzn));
        }
        if (hashSet.contains("categoryExclusions")) {
            List list2 = zzmVar.zzo;
            if (list2 != null) {
                arrayList.add(list2.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(zzmVar.zzp);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(zzmVar.zzq);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(zzmVar.zzr));
        }
        if (hashSet.contains("tagForUnderAgeOfConsent")) {
            arrayList.add(Integer.valueOf(zzmVar.zzt));
        }
        if (hashSet.contains("maxAdContentRating")) {
            arrayList.add(zzmVar.zzu);
        }
        if (hashSet.contains("orientation")) {
            if (zzxVar != null) {
                arrayList.add(Integer.valueOf(zzxVar.zza));
            } else {
                arrayList.add(null);
            }
        }
        this.a = arrayList.toArray();
    }

    public static String a(Bundle bundle) {
        String strA;
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            if (obj == null) {
                strA = "null";
            } else {
                strA = obj instanceof Bundle ? a((Bundle) obj) : obj.toString();
            }
            sb.append(strA);
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof dph) {
            return Arrays.equals(this.a, ((dph) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.a);
    }

    public final String toString() {
        Object[] objArr = this.a;
        return "[PoolKey#" + Arrays.hashCode(objArr) + " " + Arrays.toString(objArr) + "]";
    }
}
