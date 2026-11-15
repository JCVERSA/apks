package defpackage;

import com.tencent.mmkv.MMKV;
import java.util.List;

public interface du4 {

    public static final class a {
        public static List a(du4 du4Var, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAudioMVList");
            }
            if ((i & 1) != 0) {
                str = null;
            }
            return du4Var.b(str);
        }

        public static List b(du4 du4Var, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAudioPlayRecordList");
            }
            if ((i & 1) != 0) {
                str = null;
            }
            return du4Var.a(str);
        }

        public static boolean c(du4 du4Var) {
            return pp3.y && MMKV.p().e("music_video", true);
        }
    }

    List a(String str);

    List b(String str);
}
