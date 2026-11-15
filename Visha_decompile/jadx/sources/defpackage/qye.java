package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public final class qye {
    public final List a = new LinkedList();
    public final Map b;
    public final Object c;

    public qye(boolean z, String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.b = linkedHashMap;
        this.c = new Object();
        linkedHashMap.put("action", "make_wv");
        linkedHashMap.put("ad_format", str2);
    }

    public static final nye f() {
        return new nye(zzv.zzC().elapsedRealtime(), null, null);
    }

    public final pye a() {
        pye pyeVar;
        boolean zBooleanValue = ((Boolean) zzbd.zzc().b(cye.c2)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap map = new HashMap();
        synchronized (this.c) {
            try {
                List<nye> list = this.a;
                for (nye nyeVar : list) {
                    long jA = nyeVar.a();
                    String strC = nyeVar.c();
                    nye nyeVarB = nyeVar.b();
                    if (nyeVarB != null && jA > 0) {
                        long jA2 = jA - nyeVarB.a();
                        sb.append(strC);
                        sb.append('.');
                        sb.append(jA2);
                        sb.append(',');
                        if (zBooleanValue) {
                            if (map.containsKey(Long.valueOf(nyeVarB.a()))) {
                                StringBuilder sb2 = (StringBuilder) map.get(Long.valueOf(nyeVarB.a()));
                                sb2.append('+');
                                sb2.append(strC);
                            } else {
                                map.put(Long.valueOf(nyeVarB.a()), new StringBuilder(strC));
                            }
                        }
                    }
                }
                list.clear();
                String string = null;
                if (!TextUtils.isEmpty(null)) {
                    sb.append((String) null);
                } else if (sb.length() > 0) {
                    sb.setLength(sb.length() - 1);
                }
                StringBuilder sb3 = new StringBuilder();
                if (zBooleanValue) {
                    for (Map.Entry entry : map.entrySet()) {
                        sb3.append((CharSequence) entry.getValue());
                        sb3.append('.');
                        sb3.append(zzv.zzC().currentTimeMillis() + (((Long) entry.getKey()).longValue() - zzv.zzC().elapsedRealtime()));
                        sb3.append(',');
                    }
                    if (sb3.length() > 0) {
                        sb3.setLength(sb3.length() - 1);
                    }
                    string = sb3.toString();
                }
                pyeVar = new pye(sb.toString(), string);
            } catch (Throwable th) {
                throw th;
            }
        }
        return pyeVar;
    }

    public final Map b() {
        Map map;
        synchronized (this.c) {
            zzv.zzp().h();
            map = this.b;
        }
        return map;
    }

    public final void c(qye qyeVar) {
        synchronized (this.c) {
        }
    }

    public final void d(String str, String str2) {
        gye gyeVarH;
        if (TextUtils.isEmpty(str2) || (gyeVarH = zzv.zzp().h()) == null) {
            return;
        }
        synchronized (this.c) {
            mye myeVarA = gyeVarH.a(str);
            Map map = this.b;
            map.put(str, myeVarA.a((String) map.get(str), str2));
        }
    }

    public final boolean e(nye nyeVar, long j, String... strArr) {
        synchronized (this.c) {
            this.a.add(new nye(j, strArr[0], nyeVar));
        }
        return true;
    }
}
