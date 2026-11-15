package org.acra.file;

import android.content.Context;
import defpackage.c;
import defpackage.hi;
import defpackage.y45;
import java.io.File;
import java.util.Comparator;
import java.util.List;
import kotlin.comparisons.a;

public final class BulkReportDeleter {
    public final ReportLocator a;

    public BulkReportDeleter(Context context) {
        y45.j(context, "context");
        this.a = new ReportLocator(context);
    }

    public final void a(boolean z, int i) {
        ReportLocator reportLocator = this.a;
        List listL0 = hi.L0(z ? reportLocator.b() : reportLocator.d(), new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t, T t2) {
                return a.d(Long.valueOf(((File) t).lastModified()), Long.valueOf(((File) t2).lastModified()));
            }
        });
        int size = listL0.size() - i;
        for (int i2 = 0; i2 < size; i2++) {
            if (!((File) listL0.get(i2)).delete()) {
                c.d.w(c.c, "Could not delete report : " + listL0.get(i2));
            }
        }
    }
}
