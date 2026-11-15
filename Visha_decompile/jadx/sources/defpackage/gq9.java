package defpackage;

import android.app.Activity;
import android.util.Log;
import android.view.View;
import com.transsion.widgetslib.dialog.OSSnackbar;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public abstract class gq9 {
    public static void a(Activity activity, View.OnClickListener onClickListener, String str, String str2) {
        try {
            OSSnackbar oSSnackbarD = OSSnackbar.d(activity, str, 2000);
            oSSnackbarD.e(str2, onClickListener);
            oSSnackbarD.f();
        } catch (Exception e) {
            Log.e("SnackBarUtils", "showSnackBar " + activity + StringUtils.COMMA + e);
        }
    }
}
