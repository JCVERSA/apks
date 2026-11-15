package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import defpackage.tk5;
import defpackage.vk5;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class zzd extends Fragment implements vk5 {
    public static final WeakHashMap m = new WeakHashMap();
    public final u l = new u();

    public static zzd u(FragmentActivity fragmentActivity) {
        zzd zzdVar;
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        WeakHashMap weakHashMap = m;
        WeakReference weakReference = (WeakReference) weakHashMap.get(fragmentActivity);
        if (weakReference == null || (zzdVar = (zzd) weakReference.get()) == null) {
            try {
                zzdVar = (zzd) supportFragmentManager.findFragmentByTag("SLifecycleFragmentImpl");
                if (zzdVar == null || zzdVar.isRemoving()) {
                    zzdVar = new zzd();
                    supportFragmentManager.beginTransaction().add(zzdVar, "SLifecycleFragmentImpl").commitAllowingStateLoss();
                }
                weakHashMap.put(fragmentActivity, new WeakReference(zzdVar));
            } catch (ClassCastException e) {
                throw new IllegalStateException("Fragment with tag SLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e);
            }
        }
        return zzdVar;
    }

    @Override
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        this.l.j(str, fileDescriptor, printWriter, strArr);
    }

    @Override
    public final tk5 i(String str, Class cls) {
        return this.l.a(str, cls);
    }

    @Override
    public final Activity n() {
        return getActivity();
    }

    @Override
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.l.f(i, i2, intent);
    }

    @Override
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.l.c(bundle);
    }

    @Override
    public final void onDestroy() {
        super.onDestroy();
        this.l.i();
    }

    @Override
    public final void onResume() {
        super.onResume();
        this.l.e();
    }

    @Override
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.l.g(bundle);
    }

    @Override
    public final void onStart() {
        super.onStart();
        this.l.d();
    }

    @Override
    public final void onStop() {
        super.onStop();
        this.l.h();
    }

    @Override
    public final void p(String str, tk5 tk5Var) {
        this.l.b(str, tk5Var);
    }
}
