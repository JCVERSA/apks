package org.proninyaroslav.libretorrent.core.system;

import android.content.Context;

public class SystemFacadeHelper {
    public static SystemFacade a;
    public static FileSystemFacade b;

    public static synchronized FileSystemFacade a(Context context) {
        try {
            if (b == null) {
                b = new FileSystemFacadeImpl(context, new FsModuleResolverImpl(context));
            }
        } catch (Throwable th) {
            throw th;
        }
        return b;
    }

    public static synchronized SystemFacade b(Context context) {
        try {
            if (a == null) {
                a = new SystemFacadeImpl(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return a;
    }
}
