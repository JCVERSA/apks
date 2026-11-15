package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;

class j {

    private static final FilenameFilter f30364d = new FilenameFilter() {
        @Override
        public final boolean accept(File file, String str) {
            return j.d(file, str);
        }
    };

    private static final Comparator f30365e = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return j.e((File) obj, (File) obj2);
        }
    };

    private final xb.g f30366a;

    private String f30367b = null;

    private String f30368c = null;

    j(xb.g gVar) {
        this.f30366a = gVar;
    }

    public static boolean d(File file, String str) {
        return str.startsWith("aqs.");
    }

    public static int e(File file, File file2) {
        return Long.compare(file2.lastModified(), file.lastModified());
    }

    private static void f(xb.g gVar, String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        try {
            gVar.q(str, "aqs." + str2).createNewFile();
        } catch (IOException e10) {
            qb.g.f().l("Failed to persist App Quality Sessions session id.", e10);
        }
    }

    static String g(xb.g gVar, String str) {
        List listR = gVar.r(str, f30364d);
        if (!listR.isEmpty()) {
            return ((File) Collections.min(listR, f30365e)).getName().substring(4);
        }
        qb.g.f().k("Unable to read App Quality Sessions session id.");
        return null;
    }

    public synchronized String c(String str) {
        if (Objects.equals(this.f30367b, str)) {
            return this.f30368c;
        }
        return g(this.f30366a, str);
    }

    public synchronized void h(String str) {
        if (!Objects.equals(this.f30368c, str)) {
            f(this.f30366a, this.f30367b, str);
            this.f30368c = str;
        }
    }

    public synchronized void i(String str) {
        if (!Objects.equals(this.f30367b, str)) {
            f(this.f30366a, str, this.f30368c);
            this.f30367b = str;
        }
    }
}
