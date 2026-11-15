package com.mbridge.msdk.foundation.same.directory;

import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.r0;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class e {

    private static volatile e f34562c;

    private final b f34563a;

    private final ArrayList<a> f34564b = new ArrayList<>();

    private static final class a {

        public File f34565a;

        public c f34566b;

        public a(c cVar, File file) {
            this.f34566b = cVar;
            this.f34565a = file;
        }
    }

    private e(b bVar) {
        this.f34563a = bVar;
    }

    public static File a(c cVar) {
        try {
            if (b() == null || b().f34564b == null || b().f34564b.isEmpty()) {
                return null;
            }
            for (a aVar : b().f34564b) {
                if (aVar.f34566b.equals(cVar)) {
                    return aVar.f34565a;
                }
            }
            return null;
        } catch (Throwable th2) {
            o0.b("MBridgeDirManager", th2.getMessage(), th2);
            return null;
        }
    }

    public static String b(c cVar) {
        File fileA = a(cVar);
        if (fileA != null) {
            return fileA.getAbsolutePath();
        }
        return null;
    }

    public static synchronized e b() {
        try {
            if (f34562c == null && com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                r0.a(com.mbridge.msdk.foundation.controller.c.m().d());
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f34562c;
    }

    public static synchronized void a(b bVar) {
        if (f34562c == null) {
            f34562c = new e(bVar);
        }
    }

    public boolean a() {
        return a(this.f34563a.a());
    }

    private boolean a(com.mbridge.msdk.foundation.same.directory.a aVar) {
        String strB;
        com.mbridge.msdk.foundation.same.directory.a aVarC = aVar.c();
        if (aVarC == null) {
            strB = aVar.b();
        } else {
            File fileA = a(aVarC.d());
            if (fileA == null) {
                return false;
            }
            strB = fileA.getAbsolutePath() + File.separator + aVar.b();
        }
        File file = new File(strB);
        if (!(!file.exists() ? file.mkdirs() : true)) {
            return false;
        }
        this.f34564b.add(new a(aVar.d(), file));
        List<com.mbridge.msdk.foundation.same.directory.a> listA = aVar.a();
        if (listA != null) {
            Iterator<com.mbridge.msdk.foundation.same.directory.a> it = listA.iterator();
            while (it.hasNext()) {
                if (!a(it.next())) {
                    return false;
                }
            }
        }
        return true;
    }
}
