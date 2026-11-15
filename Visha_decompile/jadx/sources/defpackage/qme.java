package defpackage;

import android.os.SystemClock;
import androidx.media3.common.C;
import com.google.android.gms.internal.ads.c;
import com.google.android.gms.internal.ads.d;
import com.google.android.gms.internal.ads.zzaor;
import com.google.android.gms.internal.ads.zzaow;
import com.google.android.gms.internal.ads.zzape;
import com.google.android.gms.internal.ads.zzapg;
import com.google.android.gms.internal.ads.zzapq;
import com.google.android.gms.internal.ads.zzapr;
import com.google.android.gms.internal.ads.zzaps;
import com.lzy.okgo.model.HttpHeaders;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

public class qme implements eme {
    public final pme a;
    public final d b;

    public qme(pme pmeVar) {
        d dVar = new d(4096);
        this.a = pmeVar;
        this.b = dVar;
    }

    @Override
    public fme zza(c cVar) throws Throwable {
        bne bneVarA;
        byte[] bArr;
        fne fneVar;
        Map mapEmptyMap;
        byte[] byteArray;
        byte[] bArrB;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            try {
                xle xleVarZzd = cVar.zzd();
                if (xleVarZzd == null) {
                    mapEmptyMap = Collections.emptyMap();
                } else {
                    HashMap map = new HashMap();
                    String str = xleVarZzd.b;
                    if (str != null) {
                        map.put(HttpHeaders.HEAD_KEY_IF_NONE_MATCH, str);
                    }
                    long j = xleVarZzd.d;
                    if (j > 0) {
                        map.put(HttpHeaders.HEAD_KEY_IF_MODIFIED_SINCE, ane.c(j));
                    }
                    mapEmptyMap = map;
                }
                bneVarA = this.a.a(cVar, mapEmptyMap);
                try {
                    int iB = bneVarA.b();
                    List listD = bneVarA.d();
                    if (iB == 304) {
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                        xle xleVarZzd2 = cVar.zzd();
                        if (xleVarZzd2 == null) {
                            return new fme(304, (byte[]) null, true, jElapsedRealtime2, listD);
                        }
                        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                        if (!listD.isEmpty()) {
                            Iterator it = listD.iterator();
                            while (it.hasNext()) {
                                treeSet.add(((dme) it.next()).a());
                            }
                        }
                        ArrayList arrayList = new ArrayList(listD);
                        List list = xleVarZzd2.h;
                        if (list != null) {
                            if (!list.isEmpty()) {
                                for (dme dmeVar : xleVarZzd2.h) {
                                    if (!treeSet.contains(dmeVar.a())) {
                                        arrayList.add(dmeVar);
                                    }
                                }
                            }
                        } else if (!xleVarZzd2.g.isEmpty()) {
                            for (Map.Entry entry : xleVarZzd2.g.entrySet()) {
                                if (!treeSet.contains(entry.getKey())) {
                                    arrayList.add(new dme((String) entry.getKey(), (String) entry.getValue()));
                                }
                            }
                        }
                        return new fme(304, xleVarZzd2.a, true, jElapsedRealtime2, (List) arrayList);
                    }
                    InputStream inputStreamC = bneVarA.c();
                    if (inputStreamC != null) {
                        int iA = bneVarA.a();
                        d dVar = this.b;
                        hne hneVar = new hne(dVar, iA);
                        try {
                            bArrB = dVar.b(1024);
                            while (true) {
                                try {
                                    int i = inputStreamC.read(bArrB);
                                    if (i == -1) {
                                        break;
                                    }
                                    hneVar.write(bArrB, 0, i);
                                } catch (Throwable th) {
                                    th = th;
                                    try {
                                        inputStreamC.close();
                                    } catch (IOException unused) {
                                        nme.d("Error occurred when closing InputStream", new Object[0]);
                                    }
                                    dVar.a(bArrB);
                                    hneVar.close();
                                    throw th;
                                }
                            }
                            byteArray = hneVar.toByteArray();
                            try {
                                inputStreamC.close();
                            } catch (IOException unused2) {
                                nme.d("Error occurred when closing InputStream", new Object[0]);
                            }
                            dVar.a(bArrB);
                            hneVar.close();
                        } catch (Throwable th2) {
                            th = th2;
                            bArrB = null;
                        }
                    } else {
                        byteArray = new byte[0];
                    }
                    byte[] bArr2 = byteArray;
                    try {
                        long jElapsedRealtime3 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                        if (nme.b || jElapsedRealtime3 > C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
                            nme.a("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", cVar, Long.valueOf(jElapsedRealtime3), bArr2 != null ? Integer.valueOf(bArr2.length) : "null", Integer.valueOf(iB), Integer.valueOf(cVar.zzy().a()));
                        }
                        if (iB < 200 || iB > 299) {
                            throw new IOException();
                        }
                        return new fme(iB, bArr2, false, SystemClock.elapsedRealtime() - jElapsedRealtime, listD);
                    } catch (IOException e) {
                        e = e;
                        bArr = bArr2;
                    }
                } catch (IOException e2) {
                    e = e2;
                    bArr = null;
                }
            } catch (IOException e3) {
                e = e3;
                bneVarA = null;
                bArr = null;
            }
            if (e instanceof SocketTimeoutException) {
                fneVar = new fne("socket", new zzapr(), null);
            } else {
                if (e instanceof MalformedURLException) {
                    throw new RuntimeException("Bad URL ".concat(String.valueOf(cVar.zzk())), e);
                }
                if (bneVarA == null) {
                    throw new zzapg(e);
                }
                int iB2 = bneVarA.b();
                nme.b("Unexpected response code %d for %s", Integer.valueOf(iB2), cVar.zzk());
                if (bArr != null) {
                    fme fmeVar = new fme(iB2, bArr, false, SystemClock.elapsedRealtime() - jElapsedRealtime, bneVarA.d());
                    if (iB2 != 401 && iB2 != 403) {
                        if (iB2 < 400 || iB2 > 499) {
                            throw new zzapq(fmeVar);
                        }
                        throw new zzaow(fmeVar);
                    }
                    fneVar = new fne("auth", new zzaor(fmeVar), null);
                } else {
                    fneVar = new fne("network", new zzape(), null);
                }
            }
            fne fneVar2 = fneVar;
            zle zleVarZzy = cVar.zzy();
            int iZzb = cVar.zzb();
            try {
                zleVarZzy.c(fneVar2.b);
                cVar.zzm(String.format("%s-retry [timeout=%s]", fneVar2.a, Integer.valueOf(iZzb)));
            } catch (zzaps e4) {
                cVar.zzm(String.format("%s-timeout-giveup [timeout=%s]", fneVar2.a, Integer.valueOf(iZzb)));
                throw e4;
            }
        }
    }
}
