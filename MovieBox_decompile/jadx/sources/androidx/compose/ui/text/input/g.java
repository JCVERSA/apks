package androidx.compose.ui.text.input;

import android.view.inputmethod.CursorAnchorInfo;
import androidx.compose.ui.graphics.u4;
import kotlin.jvm.JvmStatic;

final class g {

    public static final g f5921a = new g();

    private g() {
    }

    @JvmStatic
    public static final CursorAnchorInfo.Builder a(CursorAnchorInfo.Builder builder, y.i iVar) {
        return builder.setEditorBoundsInfo(b.a().setEditorBounds(u4.c(iVar)).setHandwritingBounds(u4.c(iVar)).build());
    }
}
