package defpackage;

import android.content.Context;
import android.text.format.Formatter;

public abstract class kz6 {
    public static String a(Context context, long j) {
        return String.format("%s/s", Formatter.formatFileSize(context, j).replace("kB", "Kb").replace("MB", "Mb"));
    }
}
