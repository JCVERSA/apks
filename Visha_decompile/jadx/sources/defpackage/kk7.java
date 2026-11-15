package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

public abstract class kk7 {
    public SharedPreferences a;
    public SharedPreferences.Editor b;

    public kk7(Context context, String str) {
        this.a = context.getSharedPreferences(str, 0);
    }

    public void a() {
        if (this.b == null) {
            this.b = this.a.edit();
        }
    }

    public void b() {
        SharedPreferences.Editor editor = this.b;
        if (editor != null) {
            editor.apply();
        }
    }
}
