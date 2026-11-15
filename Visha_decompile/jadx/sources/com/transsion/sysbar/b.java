package com.transsion.sysbar;

import android.app.Application;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import java.util.ArrayList;
import java.util.Iterator;

public final class b extends ContentObserver {
    public ArrayList a;
    public Application b;
    public Boolean c;

    public static class a {
        public static final b a = new b();
    }

    public static b b() {
        return a.a;
    }

    public void a(ImmersionCallback immersionCallback) {
        if (immersionCallback == null) {
            return;
        }
        if (this.a == null) {
            this.a = new ArrayList();
        }
        if (this.a.contains(immersionCallback)) {
            return;
        }
        this.a.add(immersionCallback);
    }

    public void c(Application application) {
        Uri uriFor;
        this.b = application;
        if (application == null || application.getContentResolver() == null || this.c.booleanValue() || (uriFor = Settings.System.getUriFor("navigationbar_is_min")) == null) {
            return;
        }
        this.b.getContentResolver().registerContentObserver(uriFor, true, this);
        this.c = Boolean.TRUE;
    }

    public void d(ImmersionCallback immersionCallback) {
        ArrayList arrayList;
        if (immersionCallback == null || (arrayList = this.a) == null) {
            return;
        }
        arrayList.remove(immersionCallback);
    }

    @Override
    public void onChange(boolean z) {
        ArrayList arrayList;
        super.onChange(z);
        Application application = this.b;
        if (application == null || application.getContentResolver() == null || (arrayList = this.a) == null || arrayList.isEmpty()) {
            return;
        }
        int i = Settings.System.getInt(this.b.getContentResolver(), "navigationbar_is_min", 0);
        NavigationBarType navigationBarType = NavigationBarType.CLASSIC;
        if (i == 1) {
            navigationBarType = NavigationBarType.GESTURES;
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((ImmersionCallback) it.next()).onNavigationBarChange(i == 0, navigationBarType);
        }
    }

    public b() {
        super(new Handler(Looper.getMainLooper()));
        this.c = Boolean.FALSE;
    }
}
