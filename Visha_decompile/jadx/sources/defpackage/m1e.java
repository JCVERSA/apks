package defpackage;

import android.content.Intent;

public final class m1e extends s1e {
    public final Intent b;
    public final vk5 c;

    public m1e(Intent intent, vk5 vk5Var, int i) {
        this.b = intent;
        this.c = vk5Var;
    }

    @Override
    public final void a() {
        Intent intent = this.b;
        if (intent != null) {
            this.c.startActivityForResult(intent, 2);
        }
    }
}
