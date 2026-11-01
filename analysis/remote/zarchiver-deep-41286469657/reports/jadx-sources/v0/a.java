package v0;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Build;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

public final class a {
    public static void a(Context context, String str, String str2) {
        if (context == null) {
            return;
        }
        if (str == null) {
            str = "ZA";
        }
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        if (clipboardManager == null) {
            return;
        }
        try {
            clipboardManager.setPrimaryClip(ClipData.newPlainText(str, str2));
            if (Build.VERSION.SDK_INT < 33) {
                ZApp.i(R.string.MES_COPIED);
            }
        } catch (SecurityException unused) {
            ZApp.j("SecurityException");
        }
    }
}
