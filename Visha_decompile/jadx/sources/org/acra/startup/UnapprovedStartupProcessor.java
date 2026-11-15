package org.acra.startup;

import android.content.Context;
import defpackage.c81;
import defpackage.ubc;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.config.CoreConfiguration;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lorg/acra/startup/UnapprovedStartupProcessor;", "Lorg/acra/startup/StartupProcessor;", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "", "", "reports", "Lzfb;", "processReports", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/util/List;)V", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class UnapprovedStartupProcessor implements StartupProcessor {
    @Override
    public boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }

    @Override
    public void processReports(Context context, CoreConfiguration config, List<Object> reports) {
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reports, "reports");
        if (config.getDeleteUnapprovedReportsOnApplicationStart()) {
            ArrayList arrayList = new ArrayList();
            Iterator<Object> it = reports.iterator();
            if (it.hasNext()) {
                ubc.a(it.next());
                throw null;
            }
            if (arrayList.isEmpty()) {
                return;
            }
            if (arrayList.size() > 1) {
                c81.B(arrayList, new Comparator() {
                    @Override
                    public final int compare(T t, T t2) {
                        ubc.a(t);
                        throw null;
                    }
                });
            }
            if (arrayList.size() - 1 > 0) {
                ubc.a(arrayList.get(0));
                throw null;
            }
            ubc.a(arrayList.get(arrayList.size() - 1));
            throw null;
        }
    }
}
