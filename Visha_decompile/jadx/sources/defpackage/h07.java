package defpackage;

import android.content.Context;
import android.view.LayoutInflater;

public abstract class h07 {
    public Context a;
    public LayoutInflater b;

    public h07(Context context) {
        this.a = context;
        this.b = LayoutInflater.from(context);
    }

    public void a() {
        this.a = null;
    }
}
