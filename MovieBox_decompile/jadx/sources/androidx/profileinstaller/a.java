package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import java.io.File;

abstract class a {

    private static class C0104a {
        static File a(Context context) {
            return context.getCodeCacheDir();
        }
    }

    private static class b {
        static Context a(Context context) {
            return context.createDeviceProtectedStorageContext();
        }
    }

    static boolean a(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return true;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        boolean z10 = true;
        for (File file2 : fileArrListFiles) {
            z10 = a(file2) && z10;
        }
        return z10;
    }

    static void b(Context context, ProfileInstallReceiver.a aVar) {
        File fileA;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 34) {
            fileA = b.a(context).getCacheDir();
        } else if (i10 >= 24) {
            fileA = C0104a.a(b.a(context));
        } else {
            fileA = i10 == 23 ? C0104a.a(context) : context.getCacheDir();
        }
        if (a(fileA)) {
            aVar.a(14, null);
        } else {
            aVar.a(15, null);
        }
    }
}
