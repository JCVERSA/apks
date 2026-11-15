package org.acra.util;

import android.content.Context;
import android.os.DropBoxManager;
import defpackage.y45;
import kotlin.Metadata;

public final class SystemServices {
    public static final SystemServices a = new SystemServices();

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"Lorg/acra/util/SystemServices$ServiceNotReachedException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "message", "", "(Ljava/lang/String;)V", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class ServiceNotReachedException extends Exception {
        public ServiceNotReachedException(String str) {
            super(str);
        }
    }

    public static final DropBoxManager a(Context context) throws ServiceNotReachedException {
        y45.j(context, "context");
        Object objB = a.b(context, "dropbox");
        y45.h(objB, "null cannot be cast to non-null type android.os.DropBoxManager");
        return (DropBoxManager) objB;
    }

    public final Object b(Context context, String str) throws ServiceNotReachedException {
        Object systemService = context.getSystemService(str);
        if (systemService != null) {
            return systemService;
        }
        throw new ServiceNotReachedException("Unable to load SystemService " + str);
    }
}
