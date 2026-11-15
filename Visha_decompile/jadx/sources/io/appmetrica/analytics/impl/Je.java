package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.y45;

public final class Je implements Wc {
    public final Context a;
    public final String b;
    public final String c;

    public Je(Context context, String str, String str2) {
        this.a = context;
        this.b = str;
        this.c = str2;
    }

    public final Je a(Context context, String str, String str2) {
        return new Je(context, str, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Je)) {
            return false;
        }
        Je je = (Je) obj;
        return y45.e(this.a, je.a) && y45.e(this.b, je.b) && y45.e(this.c, je.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "PreferencesBasedModuleEntryPoint(context=" + this.a + ", prefName=" + this.b + ", prefValueName=" + this.c + ')';
    }

    public static Je a(Je je, Context context, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            context = je.a;
        }
        if ((i & 2) != 0) {
            str = je.b;
        }
        if ((i & 4) != 0) {
            str2 = je.c;
        }
        je.getClass();
        return new Je(context, str, str2);
    }

    @Override
    public final String a() {
        String string = this.a.getSharedPreferences(this.b, 0).getString(this.c, "");
        return string == null ? "" : string;
    }
}
