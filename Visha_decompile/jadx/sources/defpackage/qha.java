package defpackage;

import android.content.Context;
import android.util.Log;
import com.transsion.dbdata.beans.ThemeData;
import com.transsion.playercommon.R;

public abstract class qha {
    public static boolean a(String str) {
        return c() && se.a().getResources().getString(R.string.local_skin_model).equals(str);
    }

    public static boolean b(Context context) {
        if (context == null) {
            Log.e("ThemeUtils", "showAdTipMenu error");
            return false;
        }
        ThemeData themeData = (ThemeData) w6c.f(context, "skin_theme");
        if (themeData == null) {
            return false;
        }
        return themeData.name.equals(context.getResources().getString(com.transsion.common.R.string.local_skin_model));
    }

    public static boolean c() {
        return false;
    }
}
