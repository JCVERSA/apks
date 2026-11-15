package defpackage;

import android.net.Uri;
import java.util.Map;

public interface uk3 {
    public static final uk3 a = new uk3() {
        @Override
        public final nk3[] createExtractors() {
            return uk3.lambda$static$0();
        }
    };

    static nk3[] lambda$static$0() {
        return new nk3[0];
    }

    nk3[] createExtractors();

    default nk3[] createExtractors(Uri uri, Map map) {
        return createExtractors();
    }
}
