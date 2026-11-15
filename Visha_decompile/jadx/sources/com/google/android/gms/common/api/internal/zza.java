package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import defpackage.tk5;
import defpackage.vk5;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class zza extends Fragment implements vk5 {
    public static final WeakHashMap c = new WeakHashMap();
    public final u b = new u();

    public static zza a(Activity activity) {
        zza zzaVar;
        WeakHashMap weakHashMap = c;
        WeakReference weakReference = (WeakReference) weakHashMap.get(activity);
        if (weakReference != null && (zzaVar = (zza) weakReference.get()) != null) {
            return zzaVar;
        }
        try {
            zza zzaVar2 = (zza) activity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
            if (zzaVar2 == null || zzaVar2.isRemoving()) {
                zzaVar2 = new zza();
                activity.getFragmentManager().beginTransaction().add(zzaVar2, "LifecycleFragmentImpl").commitAllowingStateLoss();
            }
            weakHashMap.put(activity, new WeakReference(zzaVar2));
            return zzaVar2;
        } catch (ClassCastException e) {
            throw new IllegalStateException("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", e);
        }
    }

    @Override
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        this.b.j(str, fileDescriptor, printWriter, strArr);
    }

    @Override
    public final tk5 i(String str, Class cls) {
        return this.b.a(str, cls);
    }

    @Override
    public final Activity n() {
        return getActivity();
    }

    @Override
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.b.f(i, i2, intent);
    }

    @Override
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b.c(bundle);
    }

    @Override
    public final void onDestroy() {
        super.onDestroy();
        this.b.i();
    }

    @Override
    public final void onResume() {
        super.onResume();
        this.b.e();
    }

    @Override
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.b.g(bundle);
    }

    @Override
    public final void onStart() {
        super.onStart();
        this.b.d();
    }

    @Override
    public final void onStop() {
        super.onStop();
        this.b.h();
    }

    @Override
    public final void p(String str, tk5 tk5Var) {
        this.b.b(str, tk5Var);
    }
}
