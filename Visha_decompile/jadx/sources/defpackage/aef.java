package defpackage;

import android.content.SharedPreferences;

public final class aef implements SharedPreferences.OnSharedPreferenceChangeListener {
    public final String a;
    public final bef b;

    public aef(bef befVar, String str) {
        this.b = befVar;
        this.a = str;
    }

    @Override
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        bef befVar = this.b;
        synchronized (befVar) {
            try {
                for (udf udfVar : befVar.b) {
                    bef.b(udfVar.a, udfVar.b, sharedPreferences, this.a, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
