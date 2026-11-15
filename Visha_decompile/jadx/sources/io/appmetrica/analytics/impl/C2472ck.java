package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.sqlite.SQLiteOpenHelper;
import io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceStorageProvider;
import java.io.File;

public final class C2472ck implements ServiceStorageProvider {
    public final Context a;
    public final Wk b;
    public final SQLiteOpenHelper c;

    public C2472ck(Context context, Wk wk, SQLiteOpenHelper sQLiteOpenHelper) {
        this.a = context;
        this.b = wk;
        this.c = sQLiteOpenHelper;
    }

    @Override
    public final File getAppDataStorage() {
        return FileUtils.getAppDataDir(this.a);
    }

    @Override
    public final File getAppFileStorage() {
        return FileUtils.getAppStorageDirectory(this.a);
    }

    @Override
    public final SQLiteOpenHelper getDbStorage() {
        return this.c;
    }

    @Override
    public final File getSdkDataStorage() {
        return FileUtils.sdkStorage(this.a);
    }

    @Override
    public final TempCacheStorage getTempCacheStorage() {
        Qm qm;
        C2559g7 c2559g7A = C2559g7.a(this.a);
        synchronized (c2559g7A) {
            try {
                if (c2559g7A.o == null) {
                    Context context = c2559g7A.e;
                    EnumC2922um enumC2922um = EnumC2922um.SERVICE;
                    if (c2559g7A.n == null) {
                        c2559g7A.n = new Pm(new Sk(c2559g7A.h()), "temp_cache");
                    }
                    c2559g7A.o = new Qm(context, enumC2922um, c2559g7A.n);
                }
                qm = c2559g7A.o;
            } catch (Throwable th) {
                throw th;
            }
        }
        return qm;
    }

    @Override
    public final ModulePreferences legacyModulePreferences() {
        return new Eb(this.b);
    }

    @Override
    public final ModulePreferences modulePreferences(String str) {
        return new C2465cd(str, this.b);
    }
}
