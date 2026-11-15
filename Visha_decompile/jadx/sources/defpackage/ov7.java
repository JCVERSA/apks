package defpackage;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.U0;

public abstract class ov7 {
    public static int a(int i, String str, String str2) {
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return 0;
        }
        boolean z = U0.z(ul4.a(), str, str2);
        if (i == 2 && z) {
            ikd.b().d(ja1.LOAD_TAG, "app is exist,not fill");
            return 1;
        }
        if (i != 3 || z) {
            return 0;
        }
        ikd.b().d(ja1.LOAD_TAG, "app is not exist,not fill");
        return 2;
    }
}
