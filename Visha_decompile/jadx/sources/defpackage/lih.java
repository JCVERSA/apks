package defpackage;

import android.content.SharedPreferences;

public final class lih {
    public final String a;
    public final boolean b;
    public boolean c;
    public boolean d;
    public final roh e;

    public lih(roh rohVar, String str, boolean z) {
        this.e = rohVar;
        wd8.f(str);
        this.a = str;
        this.b = z;
    }

    public final void a(boolean z) {
        SharedPreferences.Editor editorEdit = this.e.n().edit();
        editorEdit.putBoolean(this.a, z);
        editorEdit.apply();
        this.d = z;
    }

    public final boolean b() {
        if (!this.c) {
            this.c = true;
            this.d = this.e.n().getBoolean(this.a, this.b);
        }
        return this.d;
    }
}
