package defpackage;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

public final class g15 {
    public static final g15 a = new g15();

    public static final synchronized String a(Context context) {
        String strD;
        try {
            y45.j(context, "context");
            File file = new File(context.getFilesDir(), "ACRA-INSTALLATION");
            try {
                if (!file.exists()) {
                    String string = UUID.randomUUID().toString();
                    y45.i(string, "randomUUID().toString()");
                    dv3.g(file, string, null, 2, null);
                }
                strD = dv3.d(file, null, 1, null);
            } catch (IOException e) {
                c.d.w(c.c, "Couldn't retrieve InstallationId for " + context.getPackageName(), e);
                strD = "Couldn't retrieve InstallationId";
            } catch (RuntimeException e2) {
                c.d.w(c.c, "Couldn't retrieve InstallationId for " + context.getPackageName(), e2);
                strD = "Couldn't retrieve InstallationId";
            }
        } catch (Throwable th) {
            throw th;
        }
        return strD;
    }
}
