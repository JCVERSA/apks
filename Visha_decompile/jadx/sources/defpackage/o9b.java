package defpackage;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Process;
import android.util.Log;
import java.util.List;
import net.grandcentrix.tray.R;
import net.grandcentrix.tray.core.TrayRuntimeException;
import net.grandcentrix.tray.provider.TrayContentProvider;

public abstract class o9b {
    public static String a;

    public static void a(Context context) {
        if ("legacyTrayAuthority".equals(context.getString(R.string.tray__authority))) {
            return;
        }
        Log.e("Tray", "Deprecated way of defining the Tray authority detected\n#########################################\n#########################################\n#########################################\nDon't set the authority with `tray__authority` in your build.gradle.\nTo change the default authority override it inside the AndroidManifest\nSee https://github.com/grandcentrix/tray/wiki/Custom-Authority for instructions\n#########################################\n#########################################\n#########################################\n");
    }

    public static Uri b(Context context) {
        return c(context, "preferences");
    }

    public static Uri c(Context context, String str) {
        return Uri.withAppendedPath(Uri.parse("content://" + e(context)), str);
    }

    public static Uri d(Context context) {
        return c(context, "internal_preferences");
    }

    public static synchronized String e(Context context) {
        String str = a;
        if (str != null) {
            return str;
        }
        a(context);
        List<ProviderInfo> listQueryContentProviders = context.getPackageManager().queryContentProviders(context.getPackageName(), Process.myUid(), 0);
        if (listQueryContentProviders != null) {
            for (ProviderInfo providerInfo : listQueryContentProviders) {
                if (providerInfo.name.equals(TrayContentProvider.class.getName())) {
                    a = providerInfo.authority;
                    r9b.b("found authority: " + a);
                    return a;
                }
            }
        }
        throw new TrayRuntimeException("Internal tray error. Could not find the provider authority. Please fill an issue at https://github.com/grandcentrix/tray/issues");
    }
}
