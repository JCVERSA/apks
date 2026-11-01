package ru.zdevs.zarchiver.archiver.content;

import a0.c;
import f0.b;
import f0.d;
import h0.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import v0.h;

public class ContentNative implements d {

    public static long f1639j;

    public static ArrayList<d0.d> f1640k;

    public static e.b f1641l;

    public String f1642a;

    public long f1643b;

    public long f1644c;

    public int f1645d;

    public int f1646e;

    public String f1647f;

    public String f1648g;

    public String f1649h;

    public int f1650i;

    public ContentNative() {
        clear();
    }

    private static native void cClear();

    private static native void cGetInfo(String str);

    private static native int cGetItemCount(String str);

    private static native void cGetList(String str);

    private static native boolean cIsArchive(String str);

    private static native void cListStart(String str);

    public static void jAdd(String str, int i2, long j2, int i3, int i4) {
        long j3;
        long j4;
        ArrayList<d0.d> arrayList = f1640k;
        if (arrayList != null) {
            String string = i2 >= 0 ? Integer.toString(i2) : null;
            byte b2 = (i4 & 1) != 0 ? (byte) 4 : (byte) -1;
            byte b3 = (i4 & 2) != 0 ? (byte) 28 : (byte) 0;
            long j5 = ((long) i3) * 1000;
            if ((i4 & 4) == 0) {
                if (j2 == -1) {
                    j4 = f1639j;
                } else {
                    j3 = j2;
                }
                arrayList.add(new d0.d(str, string, b2, b3, j5, j3));
            }
            j4 = -2;
            j3 = j4;
            arrayList.add(new d0.d(str, string, b2, b3, j5, j3));
        }
    }

    public static void jSetFileInfo(long j2, int i2, int i3, int i4) {
        e.b bVar = f1641l;
        if (bVar != null) {
            if (j2 == -1) {
                j2 = f1639j;
            }
            bVar.f1090c = j2;
            bVar.f1091d = i2;
            bVar.f1089b = ((long) i3) * 1000;
            bVar.f1088a = (i4 & 1) == 0;
            bVar.f1092e = (i4 & 4) != 0;
        }
    }

    @Override
    public final void a(long j2, String str) {
        clear();
        this.f1642a = str;
        this.f1643b = j2;
        if (c.s(str).startsWith("0")) {
            this.f1646e = 32;
        } else {
            this.f1646e = 0;
        }
        cListStart(this.f1642a);
    }

    @Override
    public final float b() {
        if (h.e(this.f1642a)) {
            return -1.0f;
        }
        long j2 = this.f1644c;
        if (j2 == 0) {
            return 1.0f;
        }
        return this.f1643b / j2;
    }

    @Override
    public final synchronized void c(String str, long j2, int i2, int i3) {
    }

    @Override
    public final void clear() {
        this.f1642a = null;
        this.f1643b = 0L;
        f1640k = null;
        this.f1644c = 0L;
        this.f1645d = 0;
        this.f1647f = null;
        this.f1648g = null;
        this.f1650i = 0;
        cClear();
    }

    @Override
    public final List<b> d(String str, Pattern pattern, boolean z2, v0.d dVar) {
        return null;
    }

    @Override
    public final int e() {
        return this.f1645d;
    }

    @Override
    public final long f() {
        return this.f1644c;
    }

    @Override
    public final int g() {
        return this.f1650i;
    }

    @Override
    public final int h() {
        return this.f1646e;
    }

    @Override
    public final void i() {
    }

    @Override
    public final int j(String str) {
        return cGetItemCount(str);
    }

    @Override
    public final e.b k(ArrayList arrayList, v0.d dVar) {
        e.b bVar = new e.b();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (dVar != null && dVar.isCancelled()) {
                return null;
            }
            e.b bVarO = o(str, dVar);
            bVar.f1090c += bVarO.f1090c;
            bVar.f1091d += bVarO.f1091d;
        }
        return bVar;
    }

    @Override
    public final String l() {
        return this.f1642a;
    }

    @Override
    public final boolean m(String str) {
        String str2 = this.f1642a;
        return str2 != null && str != null && str2.endsWith(str) && cIsArchive(this.f1642a);
    }

    @Override
    public final void n(int i2) {
        if (this.f1650i != 13) {
            this.f1650i = i2;
        }
    }

    @Override
    public final e.b o(String str, v0.d dVar) {
        f1639j = this.f1643b;
        e.b bVar = new e.b();
        f1641l = bVar;
        cGetInfo(str);
        f1641l = null;
        return bVar;
    }

    @Override
    public final String p() {
        return this.f1648g;
    }

    @Override
    public final boolean q() {
        return !h.e(this.f1647f);
    }

    @Override
    public final void r(String str, ArrayList<d0.d> arrayList) {
        f1639j = this.f1643b;
        f1640k = arrayList;
        cGetList(str);
        f1640k = null;
    }

    @Override
    public final void s(String str, String str2, int i2, long j2, int i3) {
        this.f1648g = str;
        this.f1649h = str2;
        this.f1645d = i2;
        this.f1644c = j2;
        this.f1646e = (this.f1646e & 32) | i3;
    }

    @Override
    public final String t() {
        String str = this.f1647f;
        return str == null ? "" : str;
    }

    @Override
    public final String u() {
        return this.f1649h;
    }

    @Override
    public final long v() {
        return this.f1643b;
    }

    @Override
    public final void w(String str) {
        this.f1647f = str;
    }
}
