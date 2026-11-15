package org.acra.file;

import android.content.Context;
import defpackage.hi;
import defpackage.y45;
import java.io.File;
import java.util.Comparator;
import java.util.List;
import kotlin.comparisons.a;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class ReportLocator {
    public static final a b = new a(null);
    public final Context a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public ReportLocator(Context context) {
        y45.j(context, "context");
        this.a = context;
    }

    public final File a() {
        File dir = this.a.getDir("ACRA-approved", 0);
        y45.i(dir, "context.getDir(APPROVED_…ME, Context.MODE_PRIVATE)");
        return dir;
    }

    public final File[] b() {
        List listL0;
        File[] fileArr;
        File[] fileArrListFiles = a().listFiles();
        return (fileArrListFiles == null || (listL0 = hi.L0(fileArrListFiles, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t, T t2) {
                return a.d(Long.valueOf(((File) t).lastModified()), Long.valueOf(((File) t2).lastModified()));
            }
        })) == null || (fileArr = (File[]) listL0.toArray(new File[0])) == null) ? new File[0] : fileArr;
    }

    public final File c() {
        File dir = this.a.getDir("ACRA-unapproved", 0);
        y45.i(dir, "context.getDir(UNAPPROVE…ME, Context.MODE_PRIVATE)");
        return dir;
    }

    public final File[] d() {
        File[] fileArrListFiles = c().listFiles();
        return fileArrListFiles == null ? new File[0] : fileArrListFiles;
    }
}
