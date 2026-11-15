package ls;

import com.blankj.utilcode.util.Utils;
import com.transsion.shorttv_pugc.utils.h;

public final class f {

    public static final f f66113a = new f();

    private f() {
    }

    public final boolean a() {
        return !h.f52436a.g().getBoolean("dark_mode_follow_sys", false) || (Utils.a().getResources().getConfiguration().uiMode & 48) == 32;
    }
}
