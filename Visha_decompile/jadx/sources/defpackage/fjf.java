package defpackage;

import android.view.View;

public final class fjf implements View.OnAttachStateChangeListener {
    public final ddf b;
    public final ijf c;

    public fjf(ijf ijfVar, ddf ddfVar) {
        this.b = ddfVar;
        this.c = ijfVar;
    }

    @Override
    public final void onViewAttachedToWindow(View view) {
        this.c.z(view, this.b, 10);
    }

    @Override
    public final void onViewDetachedFromWindow(View view) {
    }
}
