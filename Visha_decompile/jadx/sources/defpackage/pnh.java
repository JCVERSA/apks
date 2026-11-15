package defpackage;

import android.content.SharedPreferences;

public final class pnh {
    public final String a;
    public boolean b;
    public String c;
    public final roh d;

    public pnh(roh rohVar, String str, String str2) {
        this.d = rohVar;
        wd8.f(str);
        this.a = str;
    }

    public final String a() {
        if (!this.b) {
            this.b = true;
            this.c = this.d.n().getString(this.a, null);
        }
        return this.c;
    }

    public final void b(String str) {
        SharedPreferences.Editor editorEdit = this.d.n().edit();
        editorEdit.putString(this.a, str);
        editorEdit.apply();
        this.c = str;
    }
}
