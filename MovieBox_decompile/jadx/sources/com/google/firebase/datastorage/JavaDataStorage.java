package com.google.firebase.datastorage;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.g;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.SharedPreferencesMigrationKt;
import androidx.datastore.preferences.core.d;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.j;

public final class JavaDataStorage {

    static final KProperty[] f30983f = {Reflection.j(new PropertyReference2Impl(JavaDataStorage.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

    private final Context f30984a;

    private final String f30985b;

    private final ThreadLocal f30986c;

    private final ReadOnlyProperty f30987d;

    private final g f30988e;

    public JavaDataStorage(Context context, String name) {
        Intrinsics.h(context, "context");
        Intrinsics.h(name, "name");
        this.f30984a = context;
        this.f30985b = name;
        this.f30986c = new ThreadLocal();
        this.f30987d = PreferenceDataStoreDelegateKt.b(name, new j1.b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return JavaDataStorage.e(this.f30989a, (CorruptionException) obj);
            }
        }), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return JavaDataStorage.f(this.f30990a, (Context) obj);
            }
        }, null, 8, null);
        this.f30988e = i(context);
    }

    public static final androidx.datastore.preferences.core.c e(JavaDataStorage javaDataStorage, CorruptionException ex2) {
        Intrinsics.h(ex2, "ex");
        Log.w(Reflection.b(JavaDataStorage.class).g(), "CorruptionException in " + javaDataStorage.f30985b + " DataStore running in process " + Process.myPid(), ex2);
        return d.a();
    }

    public static final List f(JavaDataStorage javaDataStorage, Context it) {
        Intrinsics.h(it, "it");
        return CollectionsKt.e(SharedPreferencesMigrationKt.b(it, javaDataStorage.f30985b, null, 4, null));
    }

    private final g i(Context context) {
        return (g) this.f30987d.a(context, f30983f[0]);
    }

    public final androidx.datastore.preferences.core.c g(Function1 transform) {
        Intrinsics.h(transform, "transform");
        return (androidx.datastore.preferences.core.c) j.b(null, new JavaDataStorage$editSync$1(this, transform, null), 1, null);
    }

    public final Map h() {
        return (Map) j.b(null, new JavaDataStorage$getAllSync$1(this, null), 1, null);
    }

    public final Object j(androidx.datastore.preferences.core.c.a key, Object obj) {
        Intrinsics.h(key, "key");
        return j.b(null, new JavaDataStorage$getSync$1(this, key, obj, null), 1, null);
    }

    public final androidx.datastore.preferences.core.c k(androidx.datastore.preferences.core.c.a key, Object obj) {
        Intrinsics.h(key, "key");
        return (androidx.datastore.preferences.core.c) j.b(null, new JavaDataStorage$putSync$1(this, key, obj, null), 1, null);
    }
}
