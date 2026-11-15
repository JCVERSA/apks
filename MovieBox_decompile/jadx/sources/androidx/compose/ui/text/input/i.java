package androidx.compose.ui.text.input;

import android.view.inputmethod.CursorAnchorInfo;
import kotlin.jvm.JvmStatic;

final class i {

    public static final i f5923a = new i();

    private i() {
    }

    @JvmStatic
    public static final CursorAnchorInfo.Builder a(CursorAnchorInfo.Builder builder, androidx.compose.ui.text.z zVar, y.i iVar) {
        int iQ;
        int iQ2;
        if (!iVar.n() && (iQ = zVar.q(iVar.i())) <= (iQ2 = zVar.q(iVar.c()))) {
            while (true) {
                builder.addVisibleLineBounds(zVar.r(iQ), zVar.u(iQ), zVar.s(iQ), zVar.l(iQ));
                if (iQ == iQ2) {
                    break;
                }
                iQ++;
            }
        }
        return builder;
    }
}
