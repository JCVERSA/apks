package defpackage;

import android.os.Environment;
import java.io.File;

public abstract class qy2 {
    public static final String a;
    public static File b;
    public static File c;

    static {
        String str = "VishaPlayer" + File.separator + "Visha";
        a = str;
        b = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        c = new File(b, str);
    }
}
