package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.media.MediaRouter2;
import android.os.Build;
import com.hisavana.common.tracking.TrackingKey;
import java.util.Iterator;

public abstract class gt {
    public static boolean a(Context context) {
        ApplicationInfo applicationInfo;
        try {
            Intent intentPutExtra = new Intent().addFlags(268435456).setAction("com.android.settings.panel.action.MEDIA_OUTPUT").putExtra("com.android.settings.panel.extra.PACKAGE_NAME", context.getPackageName());
            Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(intentPutExtra, 0).iterator();
            while (it.hasNext()) {
                ActivityInfo activityInfo = it.next().activityInfo;
                if (activityInfo != null && (applicationInfo = activityInfo.applicationInfo) != null && (applicationInfo.flags & 129) != 0) {
                    context.startActivity(intentPutExtra);
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static void b(Context context) {
        p06.o0("vd_audio_output_show", "device", "MYPHONE");
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            MediaRouter2.getInstance(context).showSystemOutputSwitcher();
            return;
        }
        if (i < 31) {
            a(context);
            return;
        }
        Intent intent = new Intent("com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_DIALOG");
        intent.putExtra(TrackingKey.PACKAGE_NAME, context.getPackageName());
        intent.setPackage("com.android.systemui");
        context.sendBroadcast(intent);
    }
}
