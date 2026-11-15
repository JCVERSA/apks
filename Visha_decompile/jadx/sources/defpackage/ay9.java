package defpackage;

import android.content.Context;
import android.os.Environment;
import java.io.File;

public abstract class ay9 {
    public static File a = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
    public static String b;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(a.getAbsolutePath());
        String str = File.separator;
        sb.append(str);
        sb.append("VishaPlayer");
        sb.append(str);
        sb.append("Video");
        sb.append(str);
        b = sb.toString();
    }

    public static File a(Context context) {
        return new File(context.getExternalFilesDir("Subtitle"), String.valueOf(System.currentTimeMillis()));
    }

    public static File b(Context context, String str) {
        return new File(context.getExternalFilesDir("Subtitle"), str);
    }
}
