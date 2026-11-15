package androidx.room.util;

import com.cloud.tmc.kernel.utils.UrlUtils;
import kotlin.jvm.internal.Intrinsics;

public abstract class l {

    public static final String[] f14459a = new String[0];

    public static final void a(StringBuilder builder, int i10) {
        Intrinsics.h(builder, "builder");
        for (int i11 = 0; i11 < i10; i11++) {
            builder.append(UrlUtils.QUESTION_MARK);
            if (i11 < i10 - 1) {
                builder.append(",");
            }
        }
    }

    public static final StringBuilder b() {
        return new StringBuilder();
    }
}
