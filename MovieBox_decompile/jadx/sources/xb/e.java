package xb;

import androidx.core.app.NotificationCompat;
import com.google.firebase.crashlytics.internal.common.a0;
import com.google.firebase.crashlytics.internal.common.k;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicInteger;
import tb.o;
import vb.j;

public class e {

    private static final Charset f75241e = Charset.forName("UTF-8");

    private static final int f75242f = 15;

    private static final j f75243g = new j();

    private static final Comparator f75244h = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return e.u((File) obj, (File) obj2);
        }
    };

    private static final FilenameFilter f75245i = new FilenameFilter() {
        @Override
        public final boolean accept(File file, String str) {
            return e.v(file, str);
        }
    };

    private final AtomicInteger f75246a = new AtomicInteger(0);

    private final g f75247b;

    private final yb.b f75248c;

    private final k f75249d;

    public e(g gVar, yb.b bVar, k kVar) {
        this.f75247b = gVar;
        this.f75248c = bVar;
        this.f75249d = kVar;
    }

    private static String A(File file) throws IOException {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int i10 = fileInputStream.read(bArr);
                if (i10 <= 0) {
                    String str = new String(byteArrayOutputStream.toByteArray(), f75241e);
                    fileInputStream.close();
                    return str;
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private void B(File file, CrashlyticsReport.d dVar, String str, CrashlyticsReport.a aVar) {
        String strD = this.f75249d.d(str);
        try {
            j jVar = f75243g;
            F(this.f75247b.i(str), jVar.M(jVar.L(A(file)).u(dVar).q(aVar).p(strD)));
        } catch (IOException e10) {
            qb.g.f().l("Could not synthesize final native report file for " + file, e10);
        }
    }

    private void C(String str, long j10) {
        boolean z10;
        List listR = this.f75247b.r(str, f75245i);
        if (listR.isEmpty()) {
            qb.g.f().i("Session " + str + " has no events.");
            return;
        }
        Collections.sort(listR);
        ArrayList arrayList = new ArrayList();
        Iterator it = listR.iterator();
        loop0: while (true) {
            z10 = false;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                File file = (File) it.next();
                try {
                    arrayList.add(f75243g.j(A(file)));
                    if (z10 || s(file.getName())) {
                        z10 = true;
                    }
                } catch (IOException e10) {
                    qb.g.f().l("Could not add event to report for " + file, e10);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            D(this.f75247b.q(str, "report"), arrayList, j10, z10, o.n(str, this.f75247b), this.f75249d.d(str));
        } else {
            qb.g.f().k("Could not parse event files for session " + str);
        }
    }

    private void D(File file, List list, long j10, boolean z10, String str, String str2) {
        try {
            j jVar = f75243g;
            CrashlyticsReport crashlyticsReportR = jVar.L(A(file)).v(j10, z10, str).p(str2).r(list);
            CrashlyticsReport.e eVarN = crashlyticsReportR.n();
            if (eVarN == null) {
                return;
            }
            qb.g.f().b("appQualitySessionId: " + str2);
            F(z10 ? this.f75247b.l(eVarN.i()) : this.f75247b.n(eVarN.i()), jVar.M(crashlyticsReportR));
        } catch (IOException e10) {
            qb.g.f().l("Could not synthesize final report file for " + file, e10);
        }
    }

    private int E(String str, int i10) {
        List listR = this.f75247b.r(str, new FilenameFilter() {
            @Override
            public final boolean accept(File file, String str2) {
                return e.t(file, str2);
            }
        });
        Collections.sort(listR, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return e.x((File) obj, (File) obj2);
            }
        });
        return f(listR, i10);
    }

    private static void F(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f75241e);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th2) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static void G(File file, String str, long j10) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f75241e);
        try {
            outputStreamWriter.write(str);
            file.setLastModified(h(j10));
            outputStreamWriter.close();
        } catch (Throwable th2) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private SortedSet e(String str) {
        this.f75247b.d();
        SortedSet sortedSetP = p();
        if (str != null) {
            sortedSetP.remove(str);
        }
        if (sortedSetP.size() <= 8) {
            return sortedSetP;
        }
        while (sortedSetP.size() > 8) {
            String str2 = (String) sortedSetP.last();
            qb.g.f().b("Removing session over cap: " + str2);
            this.f75247b.e(str2);
            sortedSetP.remove(str2);
        }
        return sortedSetP;
    }

    private static int f(List list, int i10) {
        int size = list.size();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            if (size <= i10) {
                return size;
            }
            g.v(file);
            size--;
        }
        return size;
    }

    private void g() {
        int i10 = this.f75248c.b().f30912a.f30924b;
        List listN = n();
        int size = listN.size();
        if (size <= i10) {
            return;
        }
        Iterator it = listN.subList(i10, size).iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    private static long h(long j10) {
        return j10 * 1000;
    }

    private void j(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    private static String m(int i10, boolean z10) {
        return NotificationCompat.CATEGORY_EVENT + String.format(Locale.US, "%010d", Integer.valueOf(i10)) + (z10 ? "_" : "");
    }

    private List n() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f75247b.m());
        arrayList.addAll(this.f75247b.j());
        Comparator comparator = f75244h;
        Collections.sort(arrayList, comparator);
        List listO = this.f75247b.o();
        Collections.sort(listO, comparator);
        arrayList.addAll(listO);
        return arrayList;
    }

    private static String o(String str) {
        return str.substring(0, f75242f);
    }

    private static boolean s(String str) {
        return str.startsWith(NotificationCompat.CATEGORY_EVENT) && str.endsWith("_");
    }

    public static boolean t(File file, String str) {
        return str.startsWith(NotificationCompat.CATEGORY_EVENT) && !str.endsWith("_");
    }

    public static int u(File file, File file2) {
        return file2.getName().compareTo(file.getName());
    }

    public static boolean v(File file, String str) {
        return str.startsWith(NotificationCompat.CATEGORY_EVENT);
    }

    public static int x(File file, File file2) {
        return o(file.getName()).compareTo(o(file2.getName()));
    }

    public void i() {
        j(this.f75247b.o());
        j(this.f75247b.m());
        j(this.f75247b.j());
    }

    public void k(String str, long j10) {
        for (String str2 : e(str)) {
            qb.g.f().i("Finalizing report for session " + str2);
            C(str2, j10);
            this.f75247b.e(str2);
        }
        g();
    }

    public void l(String str, CrashlyticsReport.d dVar, CrashlyticsReport.a aVar) {
        File fileQ = this.f75247b.q(str, "report");
        qb.g.f().b("Writing native session report for " + str + " to file: " + fileQ);
        B(fileQ, dVar, str, aVar);
    }

    public SortedSet p() {
        return new TreeSet(this.f75247b.f()).descendingSet();
    }

    public long q(String str) {
        return this.f75247b.q(str, "start-time").lastModified();
    }

    public boolean r() {
        return (this.f75247b.o().isEmpty() && this.f75247b.m().isEmpty() && this.f75247b.j().isEmpty()) ? false : true;
    }

    public List w() {
        List<File> listN = n();
        ArrayList arrayList = new ArrayList();
        for (File file : listN) {
            try {
                arrayList.add(a0.a(f75243g.L(A(file)), file.getName(), file));
            } catch (IOException e10) {
                qb.g.f().l("Could not load report file " + file + "; deleting", e10);
                file.delete();
            }
        }
        return arrayList;
    }

    public void y(CrashlyticsReport.e.d dVar, String str, boolean z10) {
        int i10 = this.f75248c.b().f30912a.f30923a;
        try {
            F(this.f75247b.q(str, m(this.f75246a.getAndIncrement(), z10)), f75243g.k(dVar));
        } catch (IOException e10) {
            qb.g.f().l("Could not persist event for session " + str, e10);
        }
        E(str, i10);
    }

    public void z(CrashlyticsReport crashlyticsReport) {
        CrashlyticsReport.e eVarN = crashlyticsReport.n();
        if (eVarN == null) {
            qb.g.f().b("Could not get session for report");
            return;
        }
        String strI = eVarN.i();
        try {
            F(this.f75247b.q(strI, "report"), f75243g.M(crashlyticsReport));
            G(this.f75247b.q(strI, "start-time"), "", eVarN.l());
        } catch (IOException e10) {
            qb.g.f().c("Could not persist report for session " + strI, e10);
        }
    }
}
