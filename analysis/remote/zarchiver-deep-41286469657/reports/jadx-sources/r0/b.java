package r0;

import android.os.Build;
import android.os.CancellationSignal;
import android.os.FileUtils;
import android.os.OperationCanceledException;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import h0.f;
import h0.h;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.Executor;
import l0.d;
import n0.e;
import s0.g;

public final class b {

    public class a implements FileUtils.ProgressListener {

        public long f1424a = 0;

        public final s0.a f1425b;

        public final CancellationSignal f1426c;

        public a(s0.a aVar, CancellationSignal cancellationSignal) {
            this.f1425b = aVar;
            this.f1426c = cancellationSignal;
        }

        @Override
        public final void onProgress(long j2) {
            if (((g) this.f1425b).isCancelled()) {
                this.f1426c.cancel();
            }
            this.f1425b.c(j2 - this.f1424a);
            this.f1424a = j2;
        }
    }

    public static final class ExecutorC0026b implements Executor {
        @Override
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    }

    public static int a(s0.a aVar, f fVar, h hVar, int i2, int i3, int i4) {
        String strH;
        boolean z2;
        int i5;
        f fVarU = f.u(hVar);
        boolean z3 = true;
        if (fVar.l()) {
            aVar.a(fVar.g().substring(i3));
            aVar.c(0L);
            String strI = fVar.i();
            f fVarU2 = null;
            if (!fVarU.f(strI)) {
                i5 = i2;
                z3 = false;
            } else if (fVar.j().equals(hVar)) {
                strI = h(strI, false, "Copy", fVarU);
                i5 = i2;
                z3 = false;
            } else {
                f fVarU3 = f.u(new h(strI, hVar));
                int i6 = i2 == 0 ? ((g) aVar).i(fVar, fVarU3) : i2;
                i5 = !a0.c.K(i6, 16) ? 0 : i6;
                if (a0.c.K(i6, 8)) {
                    return -2;
                }
                if (a0.c.K(i6, 2)) {
                    return i5;
                }
                if (a0.c.K(i6, 4)) {
                    strI = h(strI, false, null, fVarU);
                    z3 = false;
                } else {
                    fVarU2 = fVarU3;
                }
            }
            if (fVarU2 == null) {
                fVarU2 = f.u(new h(strI, hVar));
            }
            if (b(aVar, fVar, fVarU2, z3)) {
                return i5;
            }
            return -1;
        }
        if (!fVar.k() || fVar.m()) {
            return i2;
        }
        f[] fVarArrP = fVar.p();
        String strI2 = fVar.i();
        boolean zF = fVarU.f(strI2);
        if (zF && fVar.j().equals(hVar)) {
            strH = h(strI2, true, "Copy", fVarU);
            z2 = false;
        } else {
            strH = strI2;
            z2 = zF;
        }
        if (!z2) {
            try {
                fVarU.r(strH);
            } catch (Exception e2) {
                k(aVar, fVar.i(), e2);
                return -1;
            }
        }
        int iA = i2;
        for (f fVar2 : fVarArrP) {
            if (i4 < 50) {
                iA = a(aVar, fVar2, new h(strH, hVar), iA, i3, i4 + 1);
            }
            if (((g) aVar).isCancelled()) {
                return -2;
            }
            if (iA < 0) {
                return iA;
            }
        }
        return iA;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:60:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:63:0x00d1  */
    public static boolean b(s0.a aVar, f fVar, f fVar2, boolean z2) throws Throwable {
        OutputStream outputStreamX;
        boolean zIsCancelled;
        long jN;
        try {
            try {
                outputStreamX = fVar2.x(fVar.o());
                try {
                    if (outputStreamX == null) {
                        throw new Exception("Failed to open");
                    }
                    InputStream inputStreamW = fVar.w();
                    long jO = fVar.o();
                    if (jO < 0) {
                        jO = inputStreamW.available();
                    }
                    long j2 = jO;
                    boolean z3 = z2 && j2 < fVar2.o();
                    if (Build.VERSION.SDK_INT < 29) {
                        boolean zC = c(aVar, inputStreamW, j2, outputStreamX, z3);
                        boolean zIsCancelled2 = ((g) aVar).isCancelled();
                        e.d(inputStreamW);
                        if (!zIsCancelled2) {
                            long jN2 = fVar.n();
                            if (jN2 > 0) {
                                fVar2.z(jN2, outputStreamX);
                            }
                        }
                        e.d(outputStreamX);
                        if (zIsCancelled2) {
                            f(fVar2);
                        }
                        return zC;
                    }
                    boolean zD = d(aVar, inputStreamW, j2, outputStreamX, z3);
                    boolean zIsCancelled3 = ((g) aVar).isCancelled();
                    e.d(inputStreamW);
                    if (!zIsCancelled3) {
                        long jN3 = fVar.n();
                        if (jN3 > 0) {
                            fVar2.z(jN3, outputStreamX);
                        }
                    }
                    e.d(outputStreamX);
                    if (zIsCancelled3) {
                        f(fVar2);
                    }
                    return zD;
                } catch (Exception e2) {
                    e = e2;
                    k(aVar, fVar.i(), e);
                    boolean zIsCancelled4 = ((g) aVar).isCancelled();
                    e.d(null);
                    if (!zIsCancelled4) {
                        long jN4 = fVar.n();
                        if (jN4 > 0) {
                            fVar2.z(jN4, outputStreamX);
                        }
                    }
                    e.d(outputStreamX);
                    if (zIsCancelled4) {
                        f(fVar2);
                    }
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                zIsCancelled = ((g) aVar).isCancelled();
                e.d(null);
                if (!zIsCancelled) {
                    jN = fVar.n();
                    if (jN > 0) {
                        fVar2.z(jN, null);
                    }
                }
                e.d(null);
                if (zIsCancelled) {
                    f(fVar2);
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            outputStreamX = null;
        } catch (Throwable th2) {
            th = th2;
            zIsCancelled = ((g) aVar).isCancelled();
            e.d(null);
            if (!zIsCancelled) {
                jN = fVar.n();
                if (jN > 0) {
                    fVar2.z(jN, null);
                }
            }
            e.d(null);
            if (zIsCancelled) {
                f(fVar2);
            }
            throw th;
        }
    }

    public static boolean c(s0.a aVar, InputStream inputStream, long j2, OutputStream outputStream, boolean z2) throws IOException {
        long j3 = j2 / 100;
        if (j3 < 262144) {
            j3 = 262144;
        }
        byte[] bArr = new byte[8192];
        long j4 = 0;
        long j5 = 0;
        while (true) {
            int i2 = inputStream.read(bArr, 0, 8192);
            if (i2 == -1) {
                aVar.c(j4);
                long j6 = j5 + j4;
                outputStream.flush();
                if (((g) aVar).isCancelled() || j6 < j2) {
                    return false;
                }
                if (!z2 || Build.VERSION.SDK_INT < 21 || !(outputStream instanceof FileOutputStream)) {
                    return true;
                }
                e.p((FileOutputStream) outputStream, j2);
                return true;
            }
            outputStream.write(bArr, 0, i2);
            j4 += (long) i2;
            if (j4 >= j3) {
                aVar.c(j4);
                j5 += j4;
                if (((g) aVar).isCancelled()) {
                    return false;
                }
                j4 = 0;
            }
        }
    }

    public static boolean d(s0.a aVar, InputStream inputStream, long j2, OutputStream outputStream, boolean z2) throws Exception {
        String strG;
        boolean z3;
        try {
            if (!a0.c.K(((g) aVar).f2022e, 1) && j2 > 4096 && (outputStream instanceof FileOutputStream)) {
                StorageManager storageManager = (StorageManager) ((g) aVar).f2018a.getSystemService(StorageManager.class);
                try {
                    FileDescriptor fd = ((FileOutputStream) outputStream).getFD();
                    if (storageManager.isAllocationSupported(fd)) {
                        storageManager.allocateBytes(fd, j2);
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                } catch (IOException unused) {
                }
                if (!z3) {
                    ((g) aVar).f2022e |= 1;
                }
            }
            CancellationSignal cancellationSignal = new CancellationSignal();
            long jCopy = FileUtils.copy(inputStream, outputStream, cancellationSignal, new ExecutorC0026b(), new a(aVar, cancellationSignal));
            outputStream.flush();
            if (((g) aVar).isCancelled() || jCopy < j2) {
                return false;
            }
            if (z2 && (outputStream instanceof FileOutputStream)) {
                e.p((FileOutputStream) outputStream, j2);
            }
            return true;
        } catch (Exception e2) {
            if (e2 instanceof IOException) {
                if (outputStream instanceof l0.e) {
                    strG = l0.c.g(((l0.e) outputStream).f1204c);
                } else {
                    strG = inputStream instanceof d ? l0.c.g(((d) inputStream).f1199c) : null;
                }
                if (strG != null) {
                    throw new IOException(strG);
                }
            }
            if (e2 instanceof OperationCanceledException) {
                return false;
            }
            throw e2;
        }
    }

    public static void e(s0.a aVar, f fVar, int i2) {
        if (fVar == null) {
            return;
        }
        if (fVar.k()) {
            for (f fVar2 : fVar.p()) {
                e(aVar, fVar2, i2);
            }
        }
        aVar.a(fVar.g().substring(i2));
        try {
            fVar.c();
        } catch (Exception e2) {
            k(aVar, fVar.i(), e2);
        }
    }

    public static boolean f(f fVar) {
        try {
            return fVar.c();
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0032  */
    public static void g(s0.a aVar, f fVar, h[] hVarArr) {
        boolean z2;
        if (fVar == null) {
            return;
        }
        if (fVar.k()) {
            for (f fVar2 : fVar.p()) {
                if (hVarArr == null || fVar2.k()) {
                    g(aVar, fVar2, hVarArr);
                } else {
                    int length = hVarArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            z2 = true;
                            break;
                        }
                        if (fVar2.f1097a.equals(hVarArr[i2])) {
                            z2 = false;
                            break;
                        }
                        i2++;
                    }
                    if (z2) {
                        g(aVar, fVar2, hVarArr);
                    }
                }
            }
        }
        try {
            fVar.c();
        } catch (Exception e2) {
            k(aVar, fVar.i(), e2);
        }
    }

    public static String h(String str, boolean z2, String str2, f fVar) {
        String strSubstring;
        String string;
        int iLastIndexOf;
        if (!z2 && (iLastIndexOf = str.lastIndexOf(46)) >= 0 && iLastIndexOf + 1 < str.length()) {
            String strSubstring2 = str.substring(0, iLastIndexOf);
            strSubstring = str.substring(iLastIndexOf);
            str = strSubstring2;
        } else {
            strSubstring = "";
        }
        int i2 = 1;
        do {
            if (i2 != 1 || str2 == null) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append("(");
                sb.append(str2 == null ? "" : str2.concat(" "));
                sb.append(i2);
                sb.append(")");
                sb.append(strSubstring);
                string = sb.toString();
            } else {
                string = str + "(" + str2 + ")" + strSubstring;
            }
            i2++;
        } while (fVar.f(string));
        return string;
    }

    public static int i(s0.a aVar, f fVar, f fVar2, int i2, int i3, int i4) {
        boolean z2;
        f[] fVarArrP;
        int i5;
        char c2;
        boolean z3;
        int i6;
        f fVarU;
        h hVar = fVar2.f1097a;
        if (i4 == 0 && !fVar2.d() && fVar.t(hVar)) {
            return i2;
        }
        if (!fVar.l()) {
            if (!fVar.k()) {
                return -1;
            }
            if (fVar2.f(fVar.i())) {
                fVarArrP = fVar.p();
            } else {
                try {
                    z2 = fVar.t(hVar);
                } catch (Exception unused) {
                }
                if (z2) {
                    return i2;
                }
                fVarArrP = fVar.p();
                try {
                    fVar2.r(fVar.i());
                } catch (Exception e2) {
                    k(aVar, fVar.i(), e2);
                    return -1;
                }
            }
            f fVarU2 = f.u(new h(fVar.i(), hVar));
            int i7 = i2;
            for (f fVar3 : fVarArrP) {
                if (i4 < 50) {
                    i7 = i(aVar, fVar3, fVarU2, i7, i3, i4 + 1);
                }
                if (((g) aVar).isCancelled()) {
                    return -2;
                }
                if (i7 < 0) {
                    return i7;
                }
            }
            try {
                fVar.c();
            } catch (Exception unused2) {
            }
            return i7;
        }
        aVar.a(fVar.g().substring(i3));
        aVar.c(0L);
        String strI = fVar.i();
        f fVarU3 = null;
        if (!fVar2.f(strI)) {
            i5 = i2;
            c2 = 0;
        } else {
            if (fVar.j().equals(hVar)) {
                return i2;
            }
            if (i2 == 0) {
                fVarU = f.u(new h(strI, hVar));
                i6 = ((g) aVar).i(fVar, fVarU);
            } else {
                i6 = i2;
                fVarU = null;
            }
            i5 = !a0.c.K(i6, 16) ? 0 : i6;
            if (a0.c.K(i6, 8)) {
                return -2;
            }
            c2 = 2;
            if (a0.c.K(i6, 2)) {
                return i5;
            }
            if (a0.c.K(i6, 4)) {
                strI = h(strI, false, null, fVar2);
            } else {
                fVarU3 = fVarU;
                c2 = 1;
            }
        }
        if (c2 == 0) {
            try {
                z3 = fVar.t(hVar);
            } catch (Exception unused3) {
            }
            if (z3) {
                return i5;
            }
        }
        if (fVarU3 == null) {
            fVarU3 = f.u(new h(strI, hVar));
        }
        if (!b(aVar, fVar, fVarU3, c2 == 1)) {
            return -1;
        }
        try {
            fVar.c();
            return i5;
        } catch (Exception unused4) {
            return i5;
        }
    }

    public static int j(s0.a aVar, h hVar, h hVar2, int i2, int i3) {
        if (hVar2 == null) {
            return -1;
        }
        return i(aVar, f.u(hVar), f.u(hVar2), i2, i3, 0);
    }

    public static void k(s0.a aVar, String str, Exception exc) {
        String localizedMessage = exc.getLocalizedMessage();
        if (TextUtils.isEmpty(localizedMessage)) {
            localizedMessage = exc.getMessage();
        }
        if (TextUtils.isEmpty(localizedMessage)) {
            localizedMessage = exc.getClass().getName();
        }
        ((g) aVar).m(str, localizedMessage);
    }
}
