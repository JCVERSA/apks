package p0;

import android.os.Build;
import android.util.Log;
import java.io.File;
import ru.zdevs.zarchiver.archiver.C2JBridge;

public class a {

    public static final String[] f1321a = {"/data/data/ru.zdevs.zarchiver/lib/libcoreutils.so", "/system/lib/ru.zdevs.zarchiver/libcoreutils.so", "/system/lib/libcoreutils.so"};

    public static int f1322b;

    public static String a() {
        int i2 = f1322b;
        if (i2 >= 2) {
            return f1321a[i2 - 2];
        }
        StringBuilder sb = new StringBuilder();
        if (C2JBridge.f1614d == null) {
            C2JBridge.c(null);
        }
        sb.append(C2JBridge.f1614d);
        sb.append("/libcoreutils.so");
        return sb.toString();
    }

    public static boolean b() {
        String string;
        if (f1322b == 0) {
            f1322b = -1;
            try {
                if (Build.VERSION.SDK_INT >= 16) {
                    int i2 = -1;
                    while (true) {
                        String[] strArr = f1321a;
                        if (i2 >= 3) {
                            break;
                        }
                        if (i2 == -1) {
                            StringBuilder sb = new StringBuilder();
                            if (C2JBridge.f1614d == null) {
                                C2JBridge.c(null);
                            }
                            sb.append(C2JBridge.f1614d);
                            sb.append("/libcoreutils.so");
                            string = sb.toString();
                        } else {
                            string = strArr[i2];
                        }
                        File file = new File(string);
                        if (file.exists()) {
                            if (!file.canExecute()) {
                                o0.b bVar = new o0.b();
                                bVar.b("chmod 755 '" + string + "'");
                                bVar.close();
                                if (!new File(string).canExecute()) {
                                    break;
                                }
                                f1322b = i2 + 2;
                                break;
                            }
                            f1322b = i2 + 2;
                            break;
                        }
                        i2++;
                    }
                }
            } catch (Exception unused) {
            }
            if (f1322b == -1) {
                Log.w("coreutils", "Internal operation don't supported!");
            }
        }
        return f1322b != -1;
    }
}
