package com.wandoujia.download.rpc;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.mobiuspace.youtube.ump.UmpException;
import com.mobiuspace.youtube.ump.proto.FormatId;
import com.mobiuspace.youtube.ump.proto.FormatInitializationMetadata;
import com.snaptube.util.ProductionEnv;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import o.bg8;
import o.h58;
import o.ko4;
import o.sm3;
import o.xe3;
import o.yj2;

public class l implements Callable {
    public static final ExecutorService v = Executors.newSingleThreadExecutor();
    public final String a;
    public final ExecutorService b;
    public final String c;
    public final FormatId d;
    public final FormatId e;
    public final FormatId f;
    public c g;
    public Future h;
    public e i;
    public e j;
    public long k;
    public final String l;
    public final String m;
    public final int n;
    public final long q;
    public final String t;
    public String u;

    public volatile boolean f500o = false;
    public m p = null;
    public long r = 0;
    public long s = 0;

    public class a implements m.b {
        public a() {
        }

        @Override
        public void a(FormatInitializationMetadata formatInitializationMetadata) {
            if (l.c(l.this).equals(formatInitializationMetadata.format_id) && l.d(l.this) == 0) {
                l.e(l.this, formatInitializationMetadata.end_time_ms.intValue());
                l.f(l.this, formatInitializationMetadata.video_id);
            }
        }

        @Override
        public void b(List list) throws UmpException {
            try {
                l.h(l.this, list);
            } catch (IOException e) {
                throw new UmpException(-3, "transferData fail", e);
            }
        }

        @Override
        public void onFinish() {
            l.g(l.this);
        }
    }

    public class b implements Runnable {
        public final long a;
        public final long b;
        public final long c;

        public b(long j, long j2, long j3) {
            this.a = j;
            this.b = j2;
            this.c = j3;
        }

        @Override
        public void run() {
            if (l.b(l.this) || l.a(l.this) == null) {
                return;
            }
            l.a(l.this).e(this.a, -1L, this.b, this.c);
        }
    }

    public interface c {
        void a(boolean z);

        void b(UmpException umpException);

        void e(long j, long j2, long j3, long j4);

        void onStart();
    }

    public static class d implements e {
        public final FileOutputStream a;
        public final long b;

        public d(FileOutputStream fileOutputStream, long j) {
            this.a = fileOutputStream;
            this.b = j;
        }

        @Override
        public long N() {
            return this.b;
        }

        @Override
        public void close() throws IOException {
            this.a.close();
        }

        @Override
        public void seek(long j) {
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.a.write(bArr);
        }
    }

    public interface e extends Closeable {
        long N();

        void seek(long j);

        void write(byte[] bArr);
    }

    public static class f implements e {
        public final RandomAccessFile a;
        public final long b;

        public f(RandomAccessFile randomAccessFile, long j) {
            this.a = randomAccessFile;
            this.b = j;
        }

        @Override
        public long N() {
            return this.b;
        }

        @Override
        public void close() throws IOException {
            this.a.close();
        }

        @Override
        public void seek(long j) throws IOException {
            this.a.seek(j);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.a.write(bArr);
        }
    }

    public l(String str, String str2, String str3, String str4, FormatId formatId, FormatId formatId2, String str5, long j, int i, ExecutorService executorService) {
        this.a = str;
        this.l = str2;
        this.m = str3;
        this.b = executorService;
        this.c = str4;
        this.d = formatId;
        this.e = formatId2;
        this.n = i;
        this.q = j;
        this.f = formatId == null ? formatId2 : formatId;
        this.t = str5;
    }

    public static c a(l lVar) {
        return lVar.g;
    }

    public static boolean b(l lVar) {
        return lVar.f500o;
    }

    public static FormatId c(l lVar) {
        return lVar.f;
    }

    public static long d(l lVar) {
        return lVar.k;
    }

    public static void e(l lVar, long j) {
        lVar.k = j;
    }

    public static void f(l lVar, String str) {
        lVar.u = str;
    }

    public static void g(l lVar) {
        lVar.m();
    }

    public static void h(l lVar, List list) throws IOException {
        lVar.x(list);
    }

    @Override
    public Object call() {
        if (this.f500o) {
            return "";
        }
        r();
        try {
            try {
                m mVar = new m(this.a, this.c, this.d, this.e, this.t, this.n);
                this.p = mVar;
                mVar.I(this.q);
                this.p.n(new a());
            } catch (Exception e2) {
                n(e2);
                p(e2);
            }
            return null;
        } finally {
            xe3.b(this.i);
            xe3.b(this.j);
        }
    }

    public final void i() {
        yj2.s(this.m);
        yj2.s(this.l);
    }

    public final e j(String str) throws UmpException {
        File file = new File(str);
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            return file.length() > 0 ? new f(new RandomAccessFile(file, "rw"), file.length()) : new d(new FileOutputStream(file), 0L);
        } catch (FileNotFoundException e2) {
            throw new UmpException(-3, e2);
        }
    }

    public final e k(sm3 sm3Var) {
        return sm3Var.b() ? t() : s();
    }

    public String l() {
        return this.u;
    }

    public final void m() {
        boolean z;
        boolean z2;
        File file = new File(this.m);
        File file2 = new File(this.l);
        e eVar = this.j;
        boolean z3 = false;
        if (eVar != null) {
            xe3.b(eVar);
            this.j = null;
            z = file.length() == this.s + 1;
            bg8.h("download audio complete " + file.length() + " " + this.m);
        } else {
            z = true;
        }
        e eVar2 = this.i;
        if (eVar2 != null) {
            xe3.b(eVar2);
            this.i = null;
            z2 = file2.length() == this.r + 1;
            bg8.h("download video complete " + file2.length() + " " + this.l);
        } else {
            z2 = true;
        }
        if (z && z2) {
            z3 = true;
        }
        c cVar = this.g;
        if (cVar != null) {
            cVar.a(z3);
        }
    }

    public final void n(Exception exc) {
        if (o(exc)) {
            return;
        }
        i();
    }

    public final boolean o(Exception exc) {
        Throwable thA = h58.a(exc);
        if (thA instanceof InterruptedIOException) {
            return true;
        }
        return (thA instanceof UmpException) && ((UmpException) thA).getErrorCode() == -7;
    }

    public final void p(Exception exc) {
        ProductionEnv.errorLog("ump-download", exc);
        c cVar = this.g;
        if (cVar != null) {
            if (exc instanceof UmpException) {
                cVar.b((UmpException) exc);
            } else {
                cVar.b(new UmpException(-100, exc));
            }
        }
    }

    public final void q(long j, long j2, long j3) {
        v.execute(new b(j, j2, j3));
    }

    public final void r() {
        c cVar = this.g;
        if (cVar != null) {
            cVar.onStart();
        }
    }

    public final e s() {
        if (this.j == null) {
            this.j = j(this.m);
        }
        return this.j;
    }

    public final e t() {
        if (this.i == null) {
            this.i = j(this.l);
        }
        return this.i;
    }

    public void u(c cVar) {
        this.g = cVar;
    }

    public void v() {
        if (this.h == null) {
            this.h = this.b.submit(this);
        }
    }

    public void w() {
        if (this.f500o) {
            return;
        }
        Future future = this.h;
        if (future != null) {
            future.cancel(true);
        }
        m mVar = this.p;
        if (mVar != null) {
            mVar.k();
        }
        this.f500o = true;
    }

    public final void x(List list) throws IOException {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            sm3 sm3Var = (sm3) it2.next();
            e eVarK = k(sm3Var);
            boolean zB = sm3Var.b();
            List<ko4> listA = sm3Var.a();
            if (!listA.isEmpty()) {
                for (ko4 ko4Var : listA) {
                    List<ByteBuffer> listC = ko4Var.c();
                    if (listC.isEmpty()) {
                        bg8.h("seq " + ko4Var.f + " is empty");
                    } else {
                        long jD = ko4Var.d();
                        long j = ko4Var.h;
                        if (jD != j) {
                            throw new IOException(ko4Var.f + " data length is invalid, expect is " + ko4Var.h + ", but actual is " + jD);
                        }
                        long j2 = (((long) ko4Var.g) + j) - 1;
                        long jN = eVarK.N();
                        if (j2 < jN) {
                            bg8.h("skip downloaded");
                        } else {
                            String str = sm3Var.b() ? "video" : MimeTypes.BASE_TYPE_AUDIO;
                            StringBuilder sb = new StringBuilder();
                            sb.append("write ");
                            sb.append(str);
                            sb.append(" seq ");
                            Iterator it3 = it2;
                            sm3 sm3Var2 = sm3Var;
                            sb.append(ko4Var.f);
                            sb.append(", [");
                            sb.append(ko4Var.g);
                            sb.append(", ");
                            sb.append(j2);
                            sb.append("]");
                            bg8.h(sb.toString());
                            if (jN > 0 && ko4Var.g <= jN) {
                                bg8.h("resume download [" + ko4Var.g + ", " + j2 + "]");
                                eVarK.seek((long) ko4Var.g);
                            }
                            long j3 = ko4Var.g;
                            for (ByteBuffer byteBuffer : listC) {
                                eVarK.write(byteBuffer.array());
                                if (this.f500o) {
                                    break;
                                }
                                long jCapacity = j3 + ((long) byteBuffer.capacity());
                                sm3 sm3Var3 = sm3Var2;
                                q((zB ? this.s : this.r) + jCapacity, sm3Var3.g, sm3Var3.b);
                                sm3Var2 = sm3Var3;
                                j3 = jCapacity;
                            }
                            sm3Var = sm3Var2;
                            if (zB) {
                                this.r = j2;
                            } else {
                                this.s = j2;
                            }
                            it2 = it3;
                        }
                    }
                }
            }
        }
    }
}
