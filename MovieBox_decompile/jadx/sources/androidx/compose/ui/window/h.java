package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.View;

class h implements f {
    @Override
    public void a(View view, Rect rect) {
        view.getWindowVisibleDisplayFrame(rect);
    }
}
