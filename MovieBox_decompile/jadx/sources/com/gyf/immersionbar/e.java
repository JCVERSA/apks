package com.gyf.immersionbar;

import android.app.Application;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import java.util.ArrayList;
import java.util.Iterator;

final class e extends ContentObserver {

    private ArrayList f32278a;

    private Application f32279b;

    private Boolean f32280c;

    private static class b {

        private static final e f32281a = new e();
    }

    static e b() {
        return b.f32281a;
    }

    void a(ImmersionCallback immersionCallback) {
        if (immersionCallback == null) {
            return;
        }
        if (this.f32278a == null) {
            this.f32278a = new ArrayList();
        }
        if (this.f32278a.contains(immersionCallback)) {
            return;
        }
        this.f32278a.add(immersionCallback);
    }

    void c(Application application) {
        Uri uriFor;
        this.f32279b = application;
        if (application == null || application.getContentResolver() == null || this.f32280c.booleanValue() || (uriFor = Settings.System.getUriFor("navigationbar_is_min")) == null) {
            return;
        }
        this.f32279b.getContentResolver().registerContentObserver(uriFor, true, this);
        this.f32280c = Boolean.TRUE;
    }

    void d(ImmersionCallback immersionCallback) {
        ArrayList arrayList;
        if (immersionCallback == null || (arrayList = this.f32278a) == null) {
            return;
        }
        arrayList.remove(immersionCallback);
    }

    @Override
    public void onChange(boolean z10) {
        ArrayList arrayList;
        super.onChange(z10);
        Application application = this.f32279b;
        if (application == null || application.getContentResolver() == null || (arrayList = this.f32278a) == null || arrayList.isEmpty()) {
            return;
        }
        int i10 = Settings.System.getInt(this.f32279b.getContentResolver(), "navigationbar_is_min", 0);
        NavigationBarType navigationBarType = NavigationBarType.CLASSIC;
        if (i10 == 1) {
            navigationBarType = NavigationBarType.GESTURES;
        }
        Iterator it = this.f32278a.iterator();
        while (it.hasNext()) {
            ((ImmersionCallback) it.next()).onNavigationBarChange(i10 == 0, navigationBarType);
        }
    }

    private e() {
        super(new Handler(Looper.getMainLooper()));
        this.f32280c = Boolean.FALSE;
    }
}
