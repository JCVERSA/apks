package defpackage;

import android.app.Activity;
import android.content.Intent;

public final class z0e extends s1e {
    public final Intent b;
    public final Activity c;
    public final int d;

    public z0e(Intent intent, Activity activity, int i) {
        this.b = intent;
        this.c = activity;
        this.d = i;
    }

    @Override
    public final void a() {
        Intent intent = this.b;
        if (intent != null) {
            this.c.startActivityForResult(intent, this.d);
        }
    }
}
