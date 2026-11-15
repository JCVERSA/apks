package com.gyf.immersionbar;

import android.app.Application;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import java.util.ArrayList;
import java.util.Iterator;

final class j extends ContentObserver {

    private ArrayList f32296a;

    private Application f32297b;

    private boolean f32298c;

    private static class b {

        private static final j f32299a = new j();
    }

    static j b() {
        return b.f32299a;
    }

    void a(n nVar) {
        if (nVar == null) {
            return;
        }
        if (this.f32296a == null) {
            this.f32296a = new ArrayList();
        }
        if (this.f32296a.contains(nVar)) {
            return;
        }
        this.f32296a.add(nVar);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:54:? A[RETURN, SYNTHETIC] */
    void c(Application application) {
        Uri uriFor;
        Uri uriFor2;
        this.f32297b = application;
        if (application == null || application.getContentResolver() == null || this.f32298c) {
            return;
        }
        Uri uriFor3 = null;
        if (!OSUtils.isHuaWei() && !OSUtils.isEMUI()) {
            if (OSUtils.isXiaoMi() || OSUtils.isMIUI()) {
                uriFor = Settings.Global.getUriFor("force_fsg_nav_bar");
                uriFor2 = null;
                uriFor3 = Settings.Global.getUriFor("hide_gesture_line");
            } else if (OSUtils.isVivo() || OSUtils.isFuntouchOrOriginOs()) {
                uriFor = Settings.Secure.getUriFor("navigation_gesture_on");
            } else if (OSUtils.isOppo() || OSUtils.isColorOs()) {
                uriFor = Settings.Secure.getUriFor("hide_navigationbar_enable");
            } else if (!OSUtils.isSamsung()) {
                uriFor = Settings.Secure.getUriFor("navigation_mode");
            } else if (Settings.Global.getInt(this.f32297b.getContentResolver(), "navigationbar_hide_bar_enabled", -1) == -1) {
                uriFor = Settings.Global.getUriFor("navigation_bar_gesture_while_hidden");
                uriFor3 = Settings.Global.getUriFor("navigation_bar_gesture_detail_type");
                uriFor2 = Settings.Global.getUriFor("navigation_bar_gesture_hint");
            } else {
                uriFor = Settings.Global.getUriFor("navigationbar_hide_bar_enabled");
            }
            if (uriFor != null) {
                this.f32297b.getContentResolver().registerContentObserver(uriFor, true, this);
                this.f32298c = true;
            }
            if (uriFor3 != null) {
                this.f32297b.getContentResolver().registerContentObserver(uriFor3, true, this);
            }
            if (uriFor2 != null) {
                this.f32297b.getContentResolver().registerContentObserver(uriFor2, true, this);
            }
        }
        uriFor = !OSUtils.isEMUI3_x() ? Settings.Global.getUriFor("navigationbar_is_min") : Settings.System.getUriFor("navigationbar_is_min");
        uriFor2 = null;
        if (uriFor != null) {
            this.f32297b.getContentResolver().registerContentObserver(uriFor, true, this);
            this.f32298c = true;
        }
        if (uriFor3 != null) {
            this.f32297b.getContentResolver().registerContentObserver(uriFor3, true, this);
        }
        if (uriFor2 != null) {
            this.f32297b.getContentResolver().registerContentObserver(uriFor2, true, this);
        }
    }

    void d(n nVar) {
        ArrayList arrayList;
        if (nVar == null || (arrayList = this.f32296a) == null) {
            return;
        }
        arrayList.remove(nVar);
    }

    @Override
    public void onChange(boolean z10) {
        super.onChange(z10);
        ArrayList arrayList = this.f32296a;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        g.a aVarA = g.a(this.f32297b);
        boolean z11 = true;
        if (aVarA.f32293a && (!aVarA.f32294b || com.gyf.immersionbar.a.f(this.f32297b) <= 0)) {
            z11 = false;
        }
        Iterator it = this.f32296a.iterator();
        while (it.hasNext()) {
            ((n) it.next()).onNavigationBarChange(z11, aVarA.f32295c);
        }
    }

    private j() {
        super(new Handler(Looper.getMainLooper()));
        this.f32298c = false;
    }
}
