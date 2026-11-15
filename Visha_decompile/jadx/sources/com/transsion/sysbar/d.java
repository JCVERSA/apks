package com.transsion.sysbar;

import android.app.Application;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import defpackage.ff7;
import defpackage.sb7;
import java.util.ArrayList;
import java.util.Iterator;

public final class d extends ContentObserver {
    public ArrayList a;
    public Application b;
    public boolean c;

    public static class a {
        public static final d a = new d();
    }

    public static d a() {
        return a.a;
    }

    public void addOnNavigationBarListener(ff7 ff7Var) {
        if (ff7Var == null) {
            return;
        }
        if (this.a == null) {
            this.a = new ArrayList();
        }
        if (this.a.contains(ff7Var)) {
            return;
        }
        this.a.add(ff7Var);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:54:? A[RETURN, SYNTHETIC] */
    public void b(Application application) {
        Uri uriFor;
        Uri uriFor2;
        this.b = application;
        if (application == null || application.getContentResolver() == null || this.c) {
            return;
        }
        Uri uriFor3 = null;
        if (!sb7.n() && !sb7.g()) {
            if (sb7.v() || sb7.p()) {
                uriFor = Settings.Global.getUriFor("force_fsg_nav_bar");
                uriFor2 = null;
                uriFor3 = Settings.Global.getUriFor("hide_gesture_line");
            } else if (sb7.u() || sb7.m()) {
                uriFor = Settings.Secure.getUriFor("navigation_gesture_on");
            } else if (sb7.s() || sb7.f()) {
                uriFor = Settings.Secure.getUriFor("hide_navigationbar_enable");
            } else if (!sb7.t()) {
                uriFor = Settings.Secure.getUriFor("navigation_mode");
            } else if (Settings.Global.getInt(this.b.getContentResolver(), "navigationbar_hide_bar_enabled", -1) == -1) {
                uriFor = Settings.Global.getUriFor("navigation_bar_gesture_while_hidden");
                uriFor3 = Settings.Global.getUriFor("navigation_bar_gesture_detail_type");
                uriFor2 = Settings.Global.getUriFor("navigation_bar_gesture_hint");
            } else {
                uriFor = Settings.Global.getUriFor("navigationbar_hide_bar_enabled");
            }
            if (uriFor != null) {
                this.b.getContentResolver().registerContentObserver(uriFor, true, this);
                this.c = true;
            }
            if (uriFor3 != null) {
                this.b.getContentResolver().registerContentObserver(uriFor3, true, this);
            }
            if (uriFor2 != null) {
                this.b.getContentResolver().registerContentObserver(uriFor2, true, this);
            }
        }
        uriFor = !sb7.j() ? Settings.Global.getUriFor("navigationbar_is_min") : Settings.System.getUriFor("navigationbar_is_min");
        uriFor2 = null;
        if (uriFor != null) {
            this.b.getContentResolver().registerContentObserver(uriFor, true, this);
            this.c = true;
        }
        if (uriFor3 != null) {
            this.b.getContentResolver().registerContentObserver(uriFor3, true, this);
        }
        if (uriFor2 != null) {
            this.b.getContentResolver().registerContentObserver(uriFor2, true, this);
        }
    }

    @Override
    public void onChange(boolean z) {
        super.onChange(z);
        ArrayList arrayList = this.a;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        c.a aVarA = c.a(this.b);
        boolean z2 = true;
        if (aVarA.a && (!aVarA.b || com.transsion.sysbar.a.f(this.b) <= 0)) {
            z2 = false;
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((ff7) it.next()).onNavigationBarChange(z2, aVarA.c);
        }
    }

    public void removeOnNavigationBarListener(ff7 ff7Var) {
        ArrayList arrayList;
        if (ff7Var == null || (arrayList = this.a) == null) {
            return;
        }
        arrayList.remove(ff7Var);
    }

    public d() {
        super(new Handler(Looper.getMainLooper()));
        this.c = false;
    }
}
