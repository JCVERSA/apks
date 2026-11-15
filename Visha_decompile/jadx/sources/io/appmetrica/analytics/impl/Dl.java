package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import defpackage.j1a;
import io.appmetrica.analytics.BuildConfig;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

public final class Dl extends Y5 {
    public List d;
    public List e;
    public String f;
    public String g;
    public Map h;
    public L3 i;
    public List j;
    public boolean k;
    public boolean l;
    public String m;
    public long n;
    public final C2418ag o;
    public final N7 p;

    public Dl() {
        this(C2910ua.j().t(), new N7());
    }

    public final long a(long j) {
        if (this.n == 0) {
            this.n = j;
        }
        return this.n;
    }

    @NonNull
    public final L3 c() {
        return this.i;
    }

    @Nullable
    public final Map<String, String> d() {
        return this.h;
    }

    public final String e() {
        return this.m;
    }

    @Nullable
    public final String f() {
        return this.f;
    }

    public final long g() {
        return this.n;
    }

    @Nullable
    public final String h() {
        return this.g;
    }

    @Nullable
    public final List<String> i() {
        return this.j;
    }

    @NonNull
    public final C2418ag j() {
        return this.o;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0055  */
    /* JADX WARN: Code duplicated, block: B:29:0x005f  */
    /* JADX WARN: Code duplicated, block: B:34:0x006a  */
    /* JADX WARN: Code duplicated, block: B:36:0x006d  */
    /* JADX WARN: Code duplicated, block: B:45:0x0070 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:27:0x0055, please report this as an issue */
    public final List<String> k() {
        String[] strArr;
        ArrayList arrayList;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (!In.a((Collection) this.d)) {
            linkedHashSet.addAll(this.d);
        }
        if (!In.a((Collection) this.e)) {
            linkedHashSet.addAll(this.e);
        }
        String[] strArr2 = (String[]) this.p.a.a();
        if (strArr2 != null) {
            arrayList = new ArrayList();
            for (String str : strArr2) {
                if (str == null || j1a.o0(str)) {
                    str = null;
                }
                if (str != null) {
                    arrayList.add(str);
                }
            }
            if (arrayList.isEmpty()) {
                arrayList = null;
            }
            if (arrayList == null) {
                strArr = BuildConfig.DEFAULT_HOSTS;
                arrayList = new ArrayList();
                for (String str2 : strArr) {
                    if (str2 != null || j1a.o0(str2)) {
                        str2 = null;
                    }
                    if (str2 != null) {
                        arrayList.add(str2);
                    }
                }
            }
        } else {
            strArr = BuildConfig.DEFAULT_HOSTS;
            arrayList = new ArrayList();
            while (i < r4) {
                if (str2 != null) {
                    str2 = null;
                } else {
                    str2 = null;
                }
                if (str2 != null) {
                    arrayList.add(str2);
                }
            }
        }
        linkedHashSet.addAll(arrayList);
        return new ArrayList(linkedHashSet);
    }

    public final List<String> l() {
        return this.e;
    }

    public final List<String> m() {
        return this.d;
    }

    @Nullable
    public final boolean n() {
        return this.k;
    }

    public final boolean o() {
        return this.l;
    }

    @Override
    public final String toString() {
        return "StartupRequestConfig{mStartupHostsFromStartup=" + this.d + ", mStartupHostsFromClient=" + this.e + ", mDistributionReferrer='" + this.f + "', mInstallReferrerSource='" + this.g + "', mClidsFromClient=" + this.h + ", mNewCustomHosts=" + this.j + ", mHasNewCustomHosts=" + this.k + ", mSuccessfulStartup=" + this.l + ", mCountryInit='" + this.m + "', mFirstStartupTime=" + this.n + "} " + super.toString();
    }

    public Dl(C2418ag c2418ag, N7 n7) {
        this.i = new L3(null, X7.c);
        this.n = 0L;
        this.o = c2418ag;
        this.p = n7;
    }

    public final void a(@Nullable List<String> list) {
        this.j = list;
    }

    public final void a(boolean z) {
        this.k = z;
    }

    public final void a(String str) {
        this.m = str;
    }
}
