package defpackage;

import android.content.Intent;
import android.net.Uri;
import com.blankj.utilcode.util.Utils;
import com.transsion.playercommon.activities.BasePermissionActivity;

public abstract class z35 {
    public static Intent a(Intent intent, boolean z) {
        return z ? intent.addFlags(268435456) : intent;
    }

    public static Intent b(String str, boolean z) {
        Intent intent = new Intent(BasePermissionActivity.PERMISSION_ACTION_OTHER);
        intent.setData(Uri.parse("package:" + str));
        return a(intent, z);
    }

    public static boolean c(Intent intent) {
        return Utils.a().getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }
}
