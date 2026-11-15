package androidx.compose.ui.text.platform;

import android.text.style.ClickableSpan;
import android.view.View;

final class h extends ClickableSpan {

    private final androidx.compose.ui.text.f f6014a;

    public h(androidx.compose.ui.text.f fVar) {
        this.f6014a = fVar;
    }

    @Override
    public void onClick(View view) {
        this.f6014a.a();
    }
}
