package defpackage;

import android.content.Context;
import android.content.res.Resources;
import com.transsion.xuanniao.account.R;

public abstract class sq7 {
    public static String a(Context context) {
        Resources resources = context.getResources();
        return resources != null ? resources.getString(R.string.xn_language) : "";
    }
}
