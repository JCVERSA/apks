package defpackage;

import android.content.Context;
import android.content.Intent;
import androidx.core.content.FileProvider;
import java.io.File;

public abstract class c9d {
    public static void a(Context context, String str) {
        File file = new File(str);
        if (file.exists()) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setFlags(268435457);
                intent.setDataAndType(FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", file), "application/vnd.android.package-archive");
                context.startActivity(intent);
            } catch (Throwable unused) {
            }
        }
    }
}
