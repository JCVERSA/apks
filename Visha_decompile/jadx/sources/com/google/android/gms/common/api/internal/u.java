package com.google.android.gms.common.api.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.collection.ArrayMap;
import defpackage.t6i;
import defpackage.tk5;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

public final class u {
    public final Map a = Collections.synchronizedMap(new ArrayMap());
    public int b = 0;
    public Bundle c;

    public final tk5 a(String str, Class cls) {
        return (tk5) cls.cast(this.a.get(str));
    }

    public final void b(String str, tk5 tk5Var) {
        Map map = this.a;
        if (map.containsKey(str)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
            sb.append("LifecycleCallback with tag ");
            sb.append(str);
            sb.append(" already added to this fragment.");
            throw new IllegalArgumentException(sb.toString());
        }
        map.put(str, tk5Var);
        if (this.b > 0) {
            new t6i(Looper.getMainLooper()).post(new zzb(this, tk5Var, str));
        }
    }

    public final void c(Bundle bundle) {
        this.b = 1;
        this.c = bundle;
        for (Map.Entry entry : this.a.entrySet()) {
            ((tk5) entry.getValue()).f(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    public final void d() {
        this.b = 2;
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            ((tk5) it.next()).j();
        }
    }

    public final void e() {
        this.b = 3;
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            ((tk5) it.next()).h();
        }
    }

    public final void f(int i, int i2, Intent intent) {
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            ((tk5) it.next()).e(i, i2, intent);
        }
    }

    public final void g(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        for (Map.Entry entry : this.a.entrySet()) {
            Bundle bundle2 = new Bundle();
            ((tk5) entry.getValue()).i(bundle2);
            bundle.putBundle((String) entry.getKey(), bundle2);
        }
    }

    public final void h() {
        this.b = 4;
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            ((tk5) it.next()).k();
        }
    }

    public final void i() {
        this.b = 5;
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            ((tk5) it.next()).g();
        }
    }

    public final void j(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            ((tk5) it.next()).a(str, fileDescriptor, printWriter, strArr);
        }
    }

    public final int k() {
        return this.b;
    }

    public final Bundle l() {
        return this.c;
    }
}
