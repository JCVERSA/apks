package org.proninyaroslav.libretorrent.core.system;

import android.content.Context;
import android.content.pm.PackageManager;

public class SystemFacadeImpl implements SystemFacade {
    public Context a;

    public SystemFacadeImpl(Context context) {
        this.a = context;
    }

    @Override
    public String a() {
        try {
            return this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }
}
