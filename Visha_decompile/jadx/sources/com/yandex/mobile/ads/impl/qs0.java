package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import com.lzy.okgo.model.Progress;
import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Lambda;

@SuppressLint({"ApplySharedPref"})
public final class qs0 implements ps0, SharedPreferences.OnSharedPreferenceChangeListener {
    private final String a;
    private final by1 b;
    private final Context c;
    private final yi5 d;
    private final LinkedHashSet e;

    public static final class a extends Lambda implements c74 {
        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            return by1.a(qs0.this.b, qs0.this.c, qs0.this.a);
        }
    }

    public qs0(Context context, String str, by1 by1Var) {
        y45.j(context, "context");
        y45.j(str, Progress.FILE_NAME);
        y45.j(by1Var, "preferencesFactory");
        this.a = str;
        this.b = by1Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.c = applicationContext;
        this.d = kotlin.b.a(new a());
        this.e = new LinkedHashSet();
    }

    @Override
    public final void clear() {
        ((SharedPreferences) this.d.getValue()).edit().clear().apply();
    }

    @Override
    public final String d(String str) {
        y45.j(str, "key");
        return ((SharedPreferences) this.d.getValue()).getString(str, null);
    }

    @Override
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (str != null) {
            Iterator it = this.e.iterator();
            while (it.hasNext()) {
                ps0.a aVar = (ps0.a) ((WeakReference) it.next()).get();
                if (aVar != null) {
                    aVar.a(this, str);
                }
            }
        }
    }

    @Override
    public final Map<String, ?> a() {
        Map<String, ?> all = ((SharedPreferences) this.d.getValue()).getAll();
        y45.i(all, "getAll(...)");
        return all;
    }

    @Override
    public final int b(int i, String str) {
        y45.j(str, "key");
        ((SharedPreferences) this.d.getValue()).contains(str);
        return ((SharedPreferences) this.d.getValue()).getInt(str, i);
    }

    @Override
    public final boolean c(String str) {
        y45.j(str, "key");
        return ((SharedPreferences) this.d.getValue()).contains(str);
    }

    @Override
    public final boolean a(String str, boolean z) {
        y45.j(str, "key");
        return ((SharedPreferences) this.d.getValue()).getBoolean(str, z);
    }

    @Override
    public final Set<String> a(String str, Set<String> set) {
        y45.j(str, "key");
        return ((SharedPreferences) this.d.getValue()).getStringSet(str, set);
    }

    @Override
    public final long b(String str) {
        y45.j(str, "key");
        return ((SharedPreferences) this.d.getValue()).getLong(str, 0L);
    }

    @Override
    public final void a(int i, String str) {
        y45.j(str, "key");
        ((SharedPreferences) this.d.getValue()).edit().putInt(str, i).apply();
    }

    @Override
    public final void b(String str, boolean z) {
        y45.j(str, "key");
        ((SharedPreferences) this.d.getValue()).edit().putBoolean(str, z).apply();
    }

    @Override
    public final void a(String str, long j) {
        y45.j(str, "key");
        ((SharedPreferences) this.d.getValue()).edit().putLong(str, j).apply();
    }

    @Override
    public final void a(String str, String str2) {
        y45.j(str, "key");
        ((SharedPreferences) this.d.getValue()).edit().putString(str, str2).apply();
    }

    @Override
    public final void a(String str, HashSet hashSet) {
        y45.j(str, "key");
        ((SharedPreferences) this.d.getValue()).edit().putStringSet(str, hashSet).apply();
    }

    @Override
    public final void a(ps0.a aVar) {
        y45.j(aVar, "listener");
        if (this.e.isEmpty()) {
            ((SharedPreferences) this.d.getValue()).registerOnSharedPreferenceChangeListener(this);
        }
        this.e.add(new WeakReference(aVar));
    }

    @Override
    public final void a(String str) {
        y45.j(str, "key");
        ((SharedPreferences) this.d.getValue()).edit().remove(str).apply();
    }
}
