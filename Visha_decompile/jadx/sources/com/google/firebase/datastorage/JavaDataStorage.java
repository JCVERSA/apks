package com.google.firebase.datastorage;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.SharedPreferencesMigrationKt;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesFactory;
import com.google.firebase.datastorage.JavaDataStorage;
import defpackage.af5;
import defpackage.dl0;
import defpackage.e74;
import defpackage.eo8;
import defpackage.x71;
import defpackage.xq8;
import defpackage.y45;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.PropertyReference2Impl;

public final class JavaDataStorage {
    public static final af5[] f = {xq8.k(new PropertyReference2Impl(JavaDataStorage.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};
    public final Context a;
    public final String b;
    public final ThreadLocal c;
    public final eo8 d;
    public final DataStore e;

    public JavaDataStorage(Context context, String str) {
        y45.j(context, "context");
        y45.j(str, "name");
        this.a = context;
        this.b = str;
        this.c = new ThreadLocal();
        this.d = PreferenceDataStoreDelegateKt.preferencesDataStore$default(str, new ReplaceFileCorruptionHandler(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return JavaDataStorage.e(this.b, (CorruptionException) obj);
            }
        }), new e74() {
            @Override
            public final Object invoke(Object obj) {
                return JavaDataStorage.f(this.b, (Context) obj);
            }
        }, null, 8, null);
        this.e = i(context);
    }

    public static final Preferences e(JavaDataStorage javaDataStorage, CorruptionException corruptionException) {
        y45.j(corruptionException, "ex");
        Log.w(xq8.b(JavaDataStorage.class).o(), "CorruptionException in " + javaDataStorage.b + " DataStore running in process " + Process.myPid(), corruptionException);
        return PreferencesFactory.createEmpty();
    }

    public static final List f(JavaDataStorage javaDataStorage, Context context) {
        y45.j(context, "it");
        return x71.e(SharedPreferencesMigrationKt.SharedPreferencesMigration$default(context, javaDataStorage.b, null, 4, null));
    }

    public final Preferences g(e74 e74Var) {
        y45.j(e74Var, "transform");
        return (Preferences) dl0.b(null, new JavaDataStorage$editSync$1(this, e74Var, null), 1, null);
    }

    public final Map h() {
        return (Map) dl0.b(null, new JavaDataStorage$getAllSync$1(this, null), 1, null);
    }

    public final DataStore i(Context context) {
        return (DataStore) this.d.getValue(context, f[0]);
    }

    public final Object j(Preferences.Key key, Object obj) {
        y45.j(key, "key");
        return dl0.b(null, new JavaDataStorage$getSync$1(this, key, obj, null), 1, null);
    }

    public final Preferences k(Preferences.Key key, Object obj) {
        y45.j(key, "key");
        return (Preferences) dl0.b(null, new JavaDataStorage$putSync$1(this, key, obj, null), 1, null);
    }
}
