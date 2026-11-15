package com.android.net.toolbox;

import android.os.SystemClock;
import androidx.media3.common.C;
import com.android.net.r;
import com.android.net.s;
import com.android.net.t;
import com.android.net.u;
import com.android.net.v;
import com.lzy.okgo.model.HttpHeaders;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

public final class c implements com.android.net.h {
    protected static final boolean a = v.b;

    @Deprecated
    protected final i b;
    protected final d c;
    private final b d;

    public c(b bVar) {
        this(bVar, new d());
    }

    @Override
    public final com.android.net.k a(com.android.net.n<?> nVar) throws u {
        u tVar;
        String str;
        com.android.net.k kVar;
        Map<String, String> mapEmptyMap;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            List listEmptyList = Collections.emptyList();
            h hVar = null;
            try {
                try {
                    com.android.net.b.a aVar = nVar.k;
                    if (aVar == null) {
                        mapEmptyMap = Collections.emptyMap();
                    } else {
                        HashMap map = new HashMap();
                        String str2 = aVar.b;
                        if (str2 != null) {
                            map.put(HttpHeaders.HEAD_KEY_IF_NONE_MATCH, str2);
                        }
                        long j = aVar.d;
                        if (j > 0) {
                            map.put(HttpHeaders.HEAD_KEY_IF_MODIFIED_SINCE, g.a().format(new Date(j)));
                        }
                        mapEmptyMap = map;
                    }
                    h hVarA = this.d.a(nVar, mapEmptyMap);
                    try {
                        int i = hVarA.a;
                        List listUnmodifiableList = Collections.unmodifiableList(hVarA.b);
                        if (i == 304) {
                            com.android.net.b.a aVar2 = nVar.k;
                            if (aVar2 == null) {
                                return new com.android.net.k(304, null, true, SystemClock.elapsedRealtime() - jElapsedRealtime, listUnmodifiableList);
                            }
                            return new com.android.net.k(304, aVar2.a, true, SystemClock.elapsedRealtime() - jElapsedRealtime, a((List<com.android.net.g>) listUnmodifiableList, aVar2));
                        }
                        InputStream inputStream = hVarA.d;
                        byte[] bArrA = inputStream != null ? a(inputStream, hVarA.c) : new byte[0];
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                        if (a || jElapsedRealtime2 > C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
                            v.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", nVar, Long.valueOf(jElapsedRealtime2), bArrA != null ? Integer.valueOf(bArrA.length) : "null", Integer.valueOf(i), Integer.valueOf(nVar.j.b()));
                        }
                        if (i < 200 || i > 299) {
                            throw new IOException();
                        }
                        return new com.android.net.k(i, bArrA, false, SystemClock.elapsedRealtime() - jElapsedRealtime, listUnmodifiableList);
                    } catch (IOException e) {
                        hVar = hVarA;
                        e = e;
                        if (hVar == null) {
                            throw new com.android.net.l(e);
                        }
                        int i2 = hVar.a;
                        v.c("Unexpected response code %d for %s", Integer.valueOf(i2), nVar.b);
                        if (hVar != 0) {
                            kVar = new com.android.net.k(i2, 0, false, SystemClock.elapsedRealtime() - jElapsedRealtime, listEmptyList);
                            if (i2 == 401 || i2 == 403) {
                                tVar = new com.android.net.a(kVar);
                                str = "auth";
                            } else {
                                if (i2 >= 400 && i2 <= 499) {
                                    throw new com.android.net.d(kVar);
                                }
                                if (i2 < 500 || i2 > 599) {
                                    throw new s(kVar);
                                }
                                if (!nVar.i) {
                                    throw new s(kVar);
                                }
                                tVar = new s(kVar);
                                str = "server";
                            }
                        } else {
                            tVar = new com.android.net.j();
                            str = "network";
                        }
                        a(str, nVar, tVar);
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (MalformedURLException e3) {
                throw new RuntimeException("Bad URL " + nVar.b, e3);
            } catch (SocketTimeoutException unused) {
                tVar = new t();
                str = "socket";
            }
            a(str, nVar, tVar);
        }
        throw new s(kVar);
    }

    private c(b bVar, d dVar) {
        this.d = bVar;
        this.b = bVar;
        this.c = dVar;
    }

    private static List<com.android.net.g> a(List<com.android.net.g> list, com.android.net.b.a aVar) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            Iterator<com.android.net.g> it = list.iterator();
            while (it.hasNext()) {
                treeSet.add(it.next().a);
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<com.android.net.g> list2 = aVar.h;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (com.android.net.g gVar : aVar.h) {
                    if (!treeSet.contains(gVar.a)) {
                        arrayList.add(gVar);
                    }
                }
            }
        } else if (!aVar.g.isEmpty()) {
            for (Map.Entry<String, String> entry : aVar.g.entrySet()) {
                if (!treeSet.contains(entry.getKey())) {
                    arrayList.add(new com.android.net.g(entry.getKey(), entry.getValue()));
                }
            }
        }
        return arrayList;
    }

    @Deprecated
    public c(i iVar) {
        this(iVar, new d());
    }

    private static void a(String str, com.android.net.n<?> nVar, u uVar) throws u {
        r rVar = nVar.j;
        int iJ = nVar.j();
        try {
            rVar.a(uVar);
            nVar.a(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(iJ)));
        } catch (u e) {
            nVar.a(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(iJ)));
            throw e;
        }
    }

    @Deprecated
    private c(i iVar, d dVar) {
        this.b = iVar;
        this.d = new a(iVar);
        this.c = dVar;
    }

    private byte[] a(InputStream inputStream, int i) throws IOException {
        n nVar = new n(this.c, i);
        try {
            if (inputStream == null) {
                throw new s();
            }
            byte[] bArrA = this.c.a(1024);
            while (true) {
                int i2 = inputStream.read(bArrA);
                if (i2 == -1) {
                    break;
                }
                nVar.write(bArrA, 0, i2);
            }
            byte[] byteArray = nVar.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused) {
                v.a("Error occurred when closing InputStream", new Object[0]);
            }
            this.c.a(bArrA);
            nVar.close();
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                    v.a("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.c.a((byte[]) null);
            nVar.close();
            throw th;
        }
    }
}
