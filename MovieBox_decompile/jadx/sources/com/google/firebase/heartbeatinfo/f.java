package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.os.Build;
import androidx.datastore.preferences.core.MutablePreferences;
import com.google.firebase.datastorage.JavaDataStorage;
import ic.o;
import ic.p;
import java.text.SimpleDateFormat;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public class f {

    private static final androidx.datastore.preferences.core.c.a f31047b = androidx.datastore.preferences.core.f.f("fire-global");

    private static final androidx.datastore.preferences.core.c.a f31048c = androidx.datastore.preferences.core.f.f("fire-count");

    private static final androidx.datastore.preferences.core.c.a f31049d = androidx.datastore.preferences.core.f.g("last-used-date");

    private final JavaDataStorage f31050a;

    public f(Context context, String str) {
        this.f31050a = new JavaDataStorage(context, "FirebaseHeartBeat" + str);
    }

    private synchronized long e(MutablePreferences mutablePreferences) {
        long j10;
        try {
            long jLongValue = ((Long) com.google.firebase.datastorage.c.a(mutablePreferences, f31048c, 0L)).longValue();
            String strA = "";
            Set hashSet = new HashSet();
            String str = null;
            for (Map.Entry entry : mutablePreferences.a().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    Set<String> set = (Set) entry.getValue();
                    for (String str2 : set) {
                        if (str == null || str.compareTo(str2) > 0) {
                            strA = ((androidx.datastore.preferences.core.c.a) entry.getKey()).a();
                            hashSet = set;
                            str = str2;
                        }
                    }
                }
            }
            HashSet hashSet2 = new HashSet(hashSet);
            hashSet2.remove(str);
            mutablePreferences.i(androidx.datastore.preferences.core.f.h(strA), hashSet2);
            j10 = jLongValue - 1;
            mutablePreferences.i(f31048c, Long.valueOf(j10));
        } catch (Throwable th2) {
            throw th2;
        }
        return j10;
    }

    private synchronized String h(long j10) {
        if (Build.VERSION.SDK_INT >= 26) {
            return new Date(j10).toInstant().atOffset(ZoneOffset.UTC).toLocalDateTime().format(DateTimeFormatter.ISO_LOCAL_DATE);
        }
        return new SimpleDateFormat("yyyy-MM-dd", Locale.UK).format(new Date(j10));
    }

    private synchronized androidx.datastore.preferences.core.c.a i(MutablePreferences mutablePreferences, String str) {
        for (Map.Entry entry : mutablePreferences.a().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (str.equals((String) it.next())) {
                        return androidx.datastore.preferences.core.f.h(((androidx.datastore.preferences.core.c.a) entry.getKey()).a());
                    }
                }
            }
        }
        return null;
    }

    public Unit k(MutablePreferences mutablePreferences) {
        long j10 = 0;
        for (Map.Entry entry : mutablePreferences.a().entrySet()) {
            if (entry.getValue() instanceof Set) {
                androidx.datastore.preferences.core.c.a aVar = (androidx.datastore.preferences.core.c.a) entry.getKey();
                Set set = (Set) entry.getValue();
                String strH = h(System.currentTimeMillis());
                if (set.contains(strH)) {
                    mutablePreferences.i(aVar, o.a(new Object[]{strH}));
                    j10++;
                } else {
                    mutablePreferences.h(aVar);
                }
            }
        }
        if (j10 == 0) {
            mutablePreferences.h(f31048c);
            return null;
        }
        mutablePreferences.i(f31048c, Long.valueOf(j10));
        return null;
    }

    public Unit l(String str, MutablePreferences mutablePreferences) {
        mutablePreferences.i(f31049d, str);
        p(mutablePreferences, str);
        return null;
    }

    public Unit m(String str, String str2, androidx.datastore.preferences.core.c.a aVar, MutablePreferences mutablePreferences) {
        androidx.datastore.preferences.core.c.a aVar2 = f31049d;
        if (((String) com.google.firebase.datastorage.c.a(mutablePreferences, aVar2, "")).equals(str)) {
            androidx.datastore.preferences.core.c.a aVarI = i(mutablePreferences, str);
            if (aVarI == null || aVarI.a().equals(str2)) {
                return null;
            }
            u(mutablePreferences, aVar, str);
            return null;
        }
        androidx.datastore.preferences.core.c.a aVar3 = f31048c;
        long jLongValue = ((Long) com.google.firebase.datastorage.c.a(mutablePreferences, aVar3, 0L)).longValue();
        if (jLongValue + 1 == 30) {
            jLongValue = e(mutablePreferences);
        }
        HashSet hashSet = new HashSet((Collection) com.google.firebase.datastorage.c.a(mutablePreferences, aVar, new HashSet()));
        hashSet.add(str);
        mutablePreferences.i(aVar, hashSet);
        mutablePreferences.i(aVar3, Long.valueOf(jLongValue + 1));
        mutablePreferences.i(aVar2, str);
        return null;
    }

    public static Unit n(long j10, MutablePreferences mutablePreferences) {
        mutablePreferences.i(f31047b, Long.valueOf(j10));
        return null;
    }

    private synchronized void p(MutablePreferences mutablePreferences, String str) {
        try {
            androidx.datastore.preferences.core.c.a aVarI = i(mutablePreferences, str);
            if (aVarI == null) {
                return;
            }
            HashSet hashSet = new HashSet((Collection) com.google.firebase.datastorage.c.a(mutablePreferences, aVarI, new HashSet()));
            hashSet.remove(str);
            if (hashSet.isEmpty()) {
                mutablePreferences.h(aVarI);
            } else {
                mutablePreferences.i(aVarI, hashSet);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized void u(MutablePreferences mutablePreferences, androidx.datastore.preferences.core.c.a aVar, String str) {
        p(mutablePreferences, str);
        HashSet hashSet = new HashSet((Collection) com.google.firebase.datastorage.c.a(mutablePreferences, aVar, new HashSet()));
        hashSet.add(str);
        mutablePreferences.i(aVar, hashSet);
    }

    synchronized void f() {
        this.f31050a.g(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f31044a.k((MutablePreferences) obj);
            }
        });
    }

    synchronized List g() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            String strH = h(System.currentTimeMillis());
            for (Map.Entry entry : this.f31050a.h().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    HashSet hashSet = new HashSet((Set) entry.getValue());
                    hashSet.remove(strH);
                    if (!hashSet.isEmpty()) {
                        arrayList.add(p.a(((androidx.datastore.preferences.core.c.a) entry.getKey()).a(), new ArrayList(hashSet)));
                    }
                }
            }
            t(System.currentTimeMillis());
        } catch (Throwable th2) {
            throw th2;
        }
        return arrayList;
    }

    synchronized boolean j(long j10, long j11) {
        return h(j10).equals(h(j11));
    }

    synchronized void o() {
        final String strH = h(System.currentTimeMillis());
        this.f31050a.g(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f31045a.l(strH, (MutablePreferences) obj);
            }
        });
    }

    synchronized boolean q(long j10) {
        return r(f31047b, j10);
    }

    synchronized boolean r(androidx.datastore.preferences.core.c.a aVar, long j10) {
        if (j(((Long) this.f31050a.j(aVar, -1L)).longValue(), j10)) {
            return false;
        }
        this.f31050a.k(aVar, Long.valueOf(j10));
        return true;
    }

    synchronized void s(long j10, final String str) {
        final String strH = h(j10);
        final androidx.datastore.preferences.core.c.a aVarH = androidx.datastore.preferences.core.f.h(str);
        this.f31050a.g(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f31040a.m(strH, str, aVarH, (MutablePreferences) obj);
            }
        });
    }

    synchronized void t(final long j10) {
        this.f31050a.g(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return f.n(j10, (MutablePreferences) obj);
            }
        });
    }
}
