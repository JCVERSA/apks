package hr;

import com.blankj.utilcode.util.Utils;
import com.transsion.shorttv.utils.h;

public final class g {

    public static final g f61486a = new g();

    private g() {
    }

    public final boolean a() {
        return !h.f51644a.e().getBoolean("dark_mode_follow_sys", false) || (Utils.a().getResources().getConfiguration().uiMode & 48) == 32;
    }
}
