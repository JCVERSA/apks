package sm;

import java.text.DecimalFormat;
import kotlin.jvm.internal.Intrinsics;

public abstract class f {
    public static final String a(int i10) {
        String str = new DecimalFormat("00").format(Integer.valueOf(i10));
        Intrinsics.g(str, "format(...)");
        return str;
    }
}
