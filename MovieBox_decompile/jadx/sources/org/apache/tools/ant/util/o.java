package org.apache.tools.ant.util;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import org.apache.tools.ant.types.t;

public class o {

    private static final d f68440a = d.k();

    private static final nz.c f68441b = new nz.b(new nz.a());

    private static int a(t tVar, t tVar2) throws Throwable {
        BufferedInputStream bufferedInputStream;
        int i10;
        int i11;
        int i12;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            BufferedInputStream bufferedInputStream3 = new BufferedInputStream(tVar.e());
            try {
                bufferedInputStream = new BufferedInputStream(tVar2.e());
                do {
                    try {
                        i10 = bufferedInputStream3.read();
                        if (i10 == -1) {
                            i11 = bufferedInputStream.read() == -1 ? 0 : -1;
                            d.b(bufferedInputStream3);
                            d.b(bufferedInputStream);
                            return i11;
                        }
                        i12 = bufferedInputStream.read();
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedInputStream2 = bufferedInputStream3;
                        d.b(bufferedInputStream2);
                        d.b(bufferedInputStream);
                        throw th;
                    }
                } while (i10 == i12);
                i11 = i10 > i12 ? 1 : -1;
                d.b(bufferedInputStream3);
                d.b(bufferedInputStream);
                return i11;
            } catch (Throwable th3) {
                th = th3;
                bufferedInputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedInputStream = null;
        }
    }

    public static int b(t tVar, t tVar2, boolean z10) {
        if (tVar.equals(tVar2)) {
            return 0;
        }
        boolean zK = tVar.k();
        boolean zK2 = tVar2.k();
        if (!zK && !zK2) {
            return 0;
        }
        if (zK != zK2) {
            return zK ? 1 : -1;
        }
        boolean zJ = tVar.j();
        boolean zJ2 = tVar2.j();
        if (zJ && zJ2) {
            return 0;
        }
        if (zJ || zJ2) {
            return zJ ? -1 : 1;
        }
        return z10 ? c(tVar, tVar2) : a(tVar, tVar2);
    }

    private static int c(t tVar, t tVar2) throws Throwable {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            BufferedReader bufferedReader3 = new BufferedReader(new InputStreamReader(tVar.e()));
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(tVar2.e()));
                try {
                    for (String line = bufferedReader3.readLine(); line != null; line = bufferedReader3.readLine()) {
                        String line2 = bufferedReader.readLine();
                        if (!line.equals(line2)) {
                            int iCompareTo = line.compareTo(line2);
                            d.d(bufferedReader3);
                            d.d(bufferedReader);
                            return iCompareTo;
                        }
                    }
                    int i10 = bufferedReader.readLine() == null ? 0 : -1;
                    d.d(bufferedReader3);
                    d.d(bufferedReader);
                    return i10;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader2 = bufferedReader3;
                    d.d(bufferedReader2);
                    d.d(bufferedReader);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedReader = null;
        }
    }
}
