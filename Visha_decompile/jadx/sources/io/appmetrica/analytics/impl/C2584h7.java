package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.y71;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class C2584h7 {
    public final P6 a;
    public final List b;
    public final boolean c;

    public C2584h7(P6 p6, ArrayList arrayList, boolean z) {
        this.a = p6;
        this.b = arrayList;
        this.c = z;
    }

    public final String a(Context context, InterfaceC2509e7 interfaceC2509e7) {
        File parentFile;
        try {
            File fileA = this.a.a(context, interfaceC2509e7.b());
            if (!fileA.exists() && (parentFile = fileA.getParentFile()) != null && (parentFile.exists() || parentFile.mkdirs())) {
                a(context, interfaceC2509e7.a(), fileA);
            }
            return fileA.getPath();
        } catch (Throwable unused) {
            return interfaceC2509e7.b();
        }
    }

    public final void a(Context context, String str, File file) {
        List list = this.b;
        if ((list instanceof Collection) && list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File fileA = ((P6) it.next()).a(context, str);
            if (fileA.exists()) {
                try {
                    if (this.c) {
                        FileUtils.copyToNullable(fileA, file);
                    } else {
                        FileUtils.move(fileA, file);
                    }
                    String path = fileA.getPath();
                    String path2 = file.getPath();
                    for (String str2 : y71.n("-journal", "-shm", "-wal")) {
                        File file2 = new File(path + str2);
                        File file3 = new File(path2 + str2);
                        if (this.c) {
                            FileUtils.copyToNullable(file2, file3);
                        } else {
                            FileUtils.move(file2, file3);
                        }
                    }
                    return;
                } catch (Throwable unused) {
                    continue;
                }
            }
        }
    }
}
