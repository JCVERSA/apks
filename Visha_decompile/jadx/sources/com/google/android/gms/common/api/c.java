package com.google.android.gms.common.api;

import android.os.Looper;
import androidx.annotation.NonNull;
import defpackage.bf1;
import defpackage.e1e;
import defpackage.qe7;
import defpackage.ui9;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

public abstract class c {
    public static final Set a = Collections.newSetFromMap(new WeakHashMap());

    public interface a extends bf1 {
    }

    public interface b extends qe7 {
    }

    public static Set b() {
        Set set = a;
        synchronized (set) {
        }
        return set;
    }

    public abstract com.google.android.gms.common.api.internal.b a(com.google.android.gms.common.api.internal.b bVar);

    public abstract Looper c();

    public boolean d(ui9 ui9Var) {
        throw new UnsupportedOperationException();
    }

    public void e() {
        throw new UnsupportedOperationException();
    }

    public abstract void f(e1e e1eVar);

    public abstract void registerConnectionFailedListener(@NonNull b bVar);

    public abstract void unregisterConnectionFailedListener(@NonNull b bVar);
}
