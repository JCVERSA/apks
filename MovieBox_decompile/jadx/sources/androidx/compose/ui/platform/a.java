package androidx.compose.ui.platform;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import kotlin.jvm.internal.Intrinsics;

public abstract class a implements f {

    protected String f5418a;

    private final int[] f5419b = new int[2];

    protected final int[] c(int i10, int i11) {
        if (i10 < 0 || i11 < 0 || i10 == i11) {
            return null;
        }
        int[] iArr = this.f5419b;
        iArr[0] = i10;
        iArr[1] = i11;
        return iArr;
    }

    protected final String d() {
        String str = this.f5418a;
        if (str != null) {
            return str;
        }
        Intrinsics.y(MimeTypes.BASE_TYPE_TEXT);
        return null;
    }

    public void e(String str) {
        f(str);
    }

    protected final void f(String str) {
        this.f5418a = str;
    }
}
