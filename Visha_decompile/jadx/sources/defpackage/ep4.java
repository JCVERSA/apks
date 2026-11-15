package defpackage;

import android.content.Context;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import com.google.firebase.datastorage.JavaDataStorage;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ep4 {
    public static final Preferences.Key b = PreferencesKeys.longKey("fire-global");
    public static final Preferences.Key c = PreferencesKeys.longKey("fire-count");
    public static final Preferences.Key d = PreferencesKeys.stringKey("last-used-date");
    public final JavaDataStorage a;

    public ep4(Context context, String str) {
        this.a = new JavaDataStorage(context, "FirebaseHeartBeat" + str);
    }

    public static zfb n(long j, MutablePreferences mutablePreferences) {
        mutablePreferences.set(b, Long.valueOf(j));
        return null;
    }

    public final synchronized long e(MutablePreferences mutablePreferences) {
        long j;
        try {
            long jLongValue = ((Long) f75.a(mutablePreferences, c, 0L)).longValue();
            String name = "";
            Set hashSet = new HashSet();
            String str = null;
            for (Map.Entry<Preferences.Key<?>, Object> entry : mutablePreferences.asMap().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    Set<String> set = (Set) entry.getValue();
                    for (String str2 : set) {
                        if (str == null || str.compareTo(str2) > 0) {
                            name = entry.getKey().getName();
                            hashSet = set;
                            str = str2;
                        }
                    }
                }
            }
            HashSet hashSet2 = new HashSet(hashSet);
            hashSet2.remove(str);
            mutablePreferences.set(PreferencesKeys.stringSetKey(name), hashSet2);
            j = jLongValue - 1;
            mutablePreferences.set(c, Long.valueOf(j));
        } catch (Throwable th) {
            throw th;
        }
        return j;
    }

    public synchronized void f() {
        this.a.g(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return this.b.k((MutablePreferences) obj);
            }
        });
    }

    public synchronized List g() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            String strH = h(System.currentTimeMillis());
            for (Map.Entry entry : this.a.h().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    HashSet hashSet = new HashSet((Set) entry.getValue());
                    hashSet.remove(strH);
                    if (!hashSet.isEmpty()) {
                        arrayList.add(fp4.a(((Preferences.Key) entry.getKey()).getName(), new ArrayList(hashSet)));
                    }
                }
            }
            t(System.currentTimeMillis());
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public final synchronized String h(long j) {
        return new Date(j).toInstant().atOffset(ZoneOffset.UTC).toLocalDateTime().format(DateTimeFormatter.ISO_LOCAL_DATE);
    }

    public final synchronized Preferences.Key i(MutablePreferences mutablePreferences, String str) {
        for (Map.Entry<Preferences.Key<?>, Object> entry : mutablePreferences.asMap().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (str.equals((String) it.next())) {
                        return PreferencesKeys.stringSetKey(entry.getKey().getName());
                    }
                }
            }
        }
        return null;
    }

    public synchronized boolean j(long j, long j2) {
        return h(j).equals(h(j2));
    }

    public final zfb k(MutablePreferences mutablePreferences) {
        long j = 0;
        for (Map.Entry<Preferences.Key<?>, Object> entry : mutablePreferences.asMap().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Preferences.Key<?> key = entry.getKey();
                Set set = (Set) entry.getValue();
                String strH = h(System.currentTimeMillis());
                if (set.contains(strH)) {
                    mutablePreferences.set(key, zo4.a(new Object[]{strH}));
                    j++;
                } else {
                    mutablePreferences.remove(key);
                }
            }
        }
        if (j == 0) {
            mutablePreferences.remove(c);
            return null;
        }
        mutablePreferences.set(c, Long.valueOf(j));
        return null;
    }

    public final zfb l(String str, MutablePreferences mutablePreferences) {
        mutablePreferences.set(d, str);
        p(mutablePreferences, str);
        return null;
    }

    public final zfb m(String str, String str2, Preferences.Key key, MutablePreferences mutablePreferences) {
        Preferences.Key key2 = d;
        if (((String) f75.a(mutablePreferences, key2, "")).equals(str)) {
            Preferences.Key keyI = i(mutablePreferences, str);
            if (keyI == null || keyI.getName().equals(str2)) {
                return null;
            }
            u(mutablePreferences, key, str);
            return null;
        }
        Preferences.Key key3 = c;
        long jLongValue = ((Long) f75.a(mutablePreferences, key3, 0L)).longValue();
        if (jLongValue + 1 == 30) {
            jLongValue = e(mutablePreferences);
        }
        HashSet hashSet = new HashSet((Collection) f75.a(mutablePreferences, key, new HashSet()));
        hashSet.add(str);
        mutablePreferences.set(key, hashSet);
        mutablePreferences.set(key3, Long.valueOf(jLongValue + 1));
        mutablePreferences.set(key2, str);
        return null;
    }

    public synchronized void o() {
        final String strH = h(System.currentTimeMillis());
        this.a.g(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return this.b.l(strH, (MutablePreferences) obj);
            }
        });
    }

    public final synchronized void p(MutablePreferences mutablePreferences, String str) {
        try {
            Preferences.Key keyI = i(mutablePreferences, str);
            if (keyI == null) {
                return;
            }
            HashSet hashSet = new HashSet((Collection) f75.a(mutablePreferences, keyI, new HashSet()));
            hashSet.remove(str);
            if (hashSet.isEmpty()) {
                mutablePreferences.remove(keyI);
            } else {
                mutablePreferences.set(keyI, hashSet);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean q(long j) {
        return r(b, j);
    }

    public synchronized boolean r(Preferences.Key key, long j) {
        if (j(((Long) this.a.j(key, -1L)).longValue(), j)) {
            return false;
        }
        this.a.k(key, Long.valueOf(j));
        return true;
    }

    public synchronized void s(long j, final String str) {
        final String strH = h(j);
        final Preferences.Key<Set<String>> keyStringSetKey = PreferencesKeys.stringSetKey(str);
        this.a.g(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return this.b.m(strH, str, keyStringSetKey, (MutablePreferences) obj);
            }
        });
    }

    public synchronized void t(final long j) {
        this.a.g(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return ep4.n(j, (MutablePreferences) obj);
            }
        });
    }

    public final synchronized void u(MutablePreferences mutablePreferences, Preferences.Key key, String str) {
        p(mutablePreferences, str);
        HashSet hashSet = new HashSet((Collection) f75.a(mutablePreferences, key, new HashSet()));
        hashSet.add(str);
        mutablePreferences.set(key, hashSet);
    }
}
