package defpackage;

import android.content.Context;

public final class bkg implements e0g {
    public final ejf b;

    public bkg(ejf ejfVar) {
        this.b = ejfVar;
    }

    @Override
    public final void b(Context context) {
        ejf ejfVar = this.b;
        if (ejfVar != null) {
            ejfVar.destroy();
        }
    }

    @Override
    public final void k(Context context) {
        ejf ejfVar = this.b;
        if (ejfVar != null) {
            ejfVar.onPause();
        }
    }

    @Override
    public final void n(Context context) {
        ejf ejfVar = this.b;
        if (ejfVar != null) {
            ejfVar.onResume();
        }
    }
}
