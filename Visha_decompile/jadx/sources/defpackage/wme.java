package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class wme {
    public long a;
    public final String b;
    public final String c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final List h;

    /* JADX WARN: Illegal instructions before constructor call */
    public wme(String str, xle xleVar) {
        String str2 = xleVar.b;
        long j = xleVar.c;
        long j2 = xleVar.d;
        long j3 = xleVar.e;
        long j4 = xleVar.f;
        List arrayList = xleVar.h;
        if (arrayList == null) {
            Map map = xleVar.g;
            arrayList = new ArrayList(map.size());
            for (Map.Entry entry : map.entrySet()) {
                arrayList.add(new dme((String) entry.getKey(), (String) entry.getValue()));
            }
        }
        this(str, str2, j, j2, j3, j4, arrayList);
    }

    public static wme a(xme xmeVar) throws IOException {
        if (zme.c(xmeVar) != 538247942) {
            throw new IOException();
        }
        String strF = zme.f(xmeVar);
        String strF2 = zme.f(xmeVar);
        long jD = zme.d(xmeVar);
        long jD2 = zme.d(xmeVar);
        long jD3 = zme.d(xmeVar);
        long jD4 = zme.d(xmeVar);
        int iC = zme.c(xmeVar);
        if (iC < 0) {
            throw new IOException("readHeaderList size=" + iC);
        }
        List listEmptyList = iC == 0 ? Collections.emptyList() : new ArrayList();
        for (int i = 0; i < iC; i++) {
            listEmptyList.add(new dme(zme.f(xmeVar).intern(), zme.f(xmeVar).intern()));
        }
        return new wme(strF, strF2, jD, jD2, jD3, jD4, listEmptyList);
    }

    public wme(String str, String str2, long j, long j2, long j3, long j4, List list) {
        this.b = str;
        this.c = true == "".equals(str2) ? null : str2;
        this.d = j;
        this.e = j2;
        this.f = j3;
        this.g = j4;
        this.h = list;
    }
}
