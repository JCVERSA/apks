package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdRequest;
import com.hisavana.common.constant.ComConstants;
import defpackage.wd8;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public final class zzeg {
    public String g;
    public String i;
    public String j;
    public boolean l;
    public String m;
    public final HashSet a = new HashSet();
    public final Bundle b = new Bundle();
    public final HashMap c = new HashMap();
    public final HashSet d = new HashSet();
    public final Bundle e = new Bundle();
    public final HashSet f = new HashSet();
    public final List h = new ArrayList();
    public int k = -1;
    public int n = ComConstants.defScheduleTime;

    public final void zzA(String str) {
        this.i = str;
    }

    public final void zzB(String str) {
        this.j = str;
    }

    @Deprecated
    public final void zzC(boolean z) {
        this.k = z ? 1 : 0;
    }

    public final void zzn(String str) {
        this.f.add(str);
    }

    public final void zzo(Class cls, Bundle bundle) {
        Bundle bundle2 = this.b;
        if (bundle2.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
            bundle2.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
        }
        Bundle bundle3 = bundle2.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        wd8.l(bundle3);
        bundle3.putBundle(cls.getName(), bundle);
    }

    public final void zzp(String str, String str2) {
        this.e.putString(str, str2);
    }

    public final void zzq(String str) {
        this.a.add(str);
    }

    public final void zzr(Class cls, @Nullable Bundle bundle) {
        this.b.putBundle(cls.getName(), bundle);
    }

    public final void zzs(String str) {
        this.d.add(str);
    }

    public final void zzt(String str) {
        this.d.remove(AdRequest.DEVICE_ID_EMULATOR);
    }

    public final void zzu(String str) {
        this.m = str;
    }

    public final void zzv(String str) {
        this.g = str;
    }

    public final void zzw(int i) {
        this.n = i;
    }

    @Deprecated
    public final void zzx(boolean z) {
        this.l = z;
    }

    public final void zzy(List list) {
        List list2 = this.h;
        list2.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (TextUtils.isEmpty(str)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("neighboring content URL should not be null or empty");
            } else {
                list2.add(str);
            }
        }
    }

    public final void zzz(Bundle bundle) {
        this.b.putAll(bundle);
    }
}
