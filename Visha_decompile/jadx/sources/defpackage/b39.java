package defpackage;

import android.content.Context;
import android.util.Log;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.a;

public abstract class b39 {
    public static BaseConstant.SCREEN_TYPE a(Context context) {
        if (!ydc.g() && !a.D(context)) {
            return BaseConstant.SCREEN_TYPE.FOLD;
        }
        if (context != null) {
            return context instanceof BaseActivity ? ((BaseActivity) context).getScreenType() : a.k(context);
        }
        Log.e("ScreenTypeUtils", "getScreeType ERROR");
        return BaseConstant.SCREEN_TYPE.FOLD;
    }

    public static boolean b(Context context) {
        return !(ydc.g() || a.D(context)) || a(context) == BaseConstant.SCREEN_TYPE.FOLD;
    }
}
