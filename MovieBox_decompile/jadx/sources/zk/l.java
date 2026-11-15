package zk;

import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.transsion.home.bean.LayoutStyle;

public final class l {

    public static final l f76824a = new l();

    private l() {
    }

    public final k a(int i10, LayoutStyle layoutStyle, String str) {
        int iA = a0.a(((i10 - 1) * 8.0f) + 24.0f);
        int iE = (y.e() - iA) / i10;
        return new k(iE, (int) (iE * ((a0.a(92.0f) * 1.0f) / a0.a(164.0f))));
    }
}
