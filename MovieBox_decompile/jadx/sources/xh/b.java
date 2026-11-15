package xh;

import android.text.TextUtils;
import kotlin.jvm.internal.Intrinsics;

public interface b {

    public static final class a {
        public static String a(b bVar) {
            String simpleName = bVar.getClass().getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            return simpleName;
        }

        public static void b(b bVar, int i10, String msg, String tag, boolean z10) {
            String str;
            Intrinsics.h(msg, "msg");
            Intrinsics.h(tag, "tag");
            if (TextUtils.isEmpty(bVar.getSceneId())) {
                str = bVar.getClassTag() + " --> " + msg;
            } else {
                str = bVar.getClassTag() + " --> sceneId = " + bVar.getSceneId() + " --> " + msg;
            }
            xh.a.f75336a.l(bVar.getLogTag(), str, i10, z10);
        }

        public static void c(b bVar, int i10, String str, String str2, boolean z10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onLog");
            }
            if ((i11 & 1) != 0) {
                i10 = 3;
            }
            if ((i11 & 4) != 0) {
                str2 = bVar.getLogTag();
            }
            if ((i11 & 8) != 0) {
                z10 = true;
            }
            bVar.onLog(i10, str, str2, z10);
        }
    }

    String getClassTag();

    String getLogTag();

    String getSceneId();

    void onLog(int i10, String str, String str2, boolean z10);
}
