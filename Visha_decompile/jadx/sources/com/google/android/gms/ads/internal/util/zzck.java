package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import defpackage.mff;

public final class zzck {
    public final View a;
    public Activity b;
    public boolean c;
    public boolean d;
    public boolean e;
    public final ViewTreeObserver.OnGlobalLayoutListener f;

    public zzck(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.b = activity;
        this.a = view;
        this.f = onGlobalLayoutListener;
    }

    public static ViewTreeObserver a(Activity activity) {
        View decorView;
        Window window = activity.getWindow();
        if (window == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }

    public final void b() {
        if (this.c) {
            return;
        }
        Activity activity = this.b;
        if (activity != null) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f;
            ViewTreeObserver viewTreeObserverA = a(activity);
            if (viewTreeObserverA != null) {
                viewTreeObserverA.addOnGlobalLayoutListener(onGlobalLayoutListener);
            }
        }
        View view = this.a;
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener2 = this.f;
        com.google.android.gms.ads.internal.zzv.zzy();
        mff.a(view, onGlobalLayoutListener2);
        this.c = true;
    }

    public final void c() {
        Activity activity = this.b;
        if (activity != null && this.c) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f;
            ViewTreeObserver viewTreeObserverA = a(activity);
            if (viewTreeObserverA != null) {
                viewTreeObserverA.removeOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            this.c = false;
        }
    }

    public final void zza() {
        this.e = false;
        c();
    }

    public final void zzb() {
        this.e = true;
        if (this.d) {
            b();
        }
    }

    public final void zzc() {
        this.d = true;
        if (this.e) {
            b();
        }
    }

    public final void zzd() {
        this.d = false;
        c();
    }

    public final void zze(Activity activity) {
        this.b = activity;
    }
}
