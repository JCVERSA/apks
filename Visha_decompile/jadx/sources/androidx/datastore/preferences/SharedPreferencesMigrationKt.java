package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.migrations.SharedPreferencesMigration;
import androidx.datastore.migrations.SharedPreferencesView;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import defpackage.c74;
import defpackage.mk0;
import defpackage.nt1;
import defpackage.s74;
import defpackage.u74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\u001a3\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00002\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0007¢\u0006\u0004\b\b\u0010\t\u001a5\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0007¢\u0006\u0004\b\b\u0010\r\u001a1\u0010\u0012\u001a$\b\u0001\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000eH\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u001a9\u0010\u0016\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00142\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002¢\u0006\u0004\b\u0016\u0010\u0017\" \u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lkotlin/Function0;", "Landroid/content/SharedPreferences;", "produceSharedPreferences", "", "", "keysToMigrate", "Landroidx/datastore/migrations/SharedPreferencesMigration;", "Landroidx/datastore/preferences/core/Preferences;", "SharedPreferencesMigration", "(Lc74;Ljava/util/Set;)Landroidx/datastore/migrations/SharedPreferencesMigration;", "Landroid/content/Context;", "context", "sharedPreferencesName", "(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Landroidx/datastore/migrations/SharedPreferencesMigration;", "Lkotlin/Function3;", "Landroidx/datastore/migrations/SharedPreferencesView;", "Lwh1;", "", "getMigrationFunction", "()Lu74;", "Lkotlin/Function2;", "", "getShouldRunMigration", "(Ljava/util/Set;)Ls74;", "MIGRATE_ALL_KEYS", "Ljava/util/Set;", "getMIGRATE_ALL_KEYS", "()Ljava/util/Set;", "datastore-preferences_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class SharedPreferencesMigrationKt {
    private static final Set<String> MIGRATE_ALL_KEYS = new LinkedHashSet();

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "Landroidx/datastore/preferences/core/Preferences;", "sharedPrefs", "Landroidx/datastore/migrations/SharedPreferencesView;", "currentData"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.preferences.SharedPreferencesMigrationKt$getMigrationFunction$1", f = "SharedPreferencesMigration.android.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements u74 {
        Object L$0;
        Object L$1;
        int label;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(3, wh1Var);
        }

        @Override
        public final Object invoke(SharedPreferencesView sharedPreferencesView, Preferences preferences, wh1<? super Preferences> wh1Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(wh1Var);
            anonymousClass1.L$0 = sharedPreferencesView;
            anonymousClass1.L$1 = preferences;
            return anonymousClass1.invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            SharedPreferencesView sharedPreferencesView = (SharedPreferencesView) this.L$0;
            Preferences preferences = (Preferences) this.L$1;
            Set<Preferences.Key<?>> setKeySet = preferences.asMap().keySet();
            ArrayList arrayList = new ArrayList(z71.v(setKeySet, 10));
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                arrayList.add(((Preferences.Key) it.next()).getName());
            }
            Map<String, Object> all = sharedPreferencesView.getAll();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, Object> entry : all.entrySet()) {
                if (!arrayList.contains(entry.getKey())) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            MutablePreferences mutablePreferences = preferences.toMutablePreferences();
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String str = (String) entry2.getKey();
                Object value = entry2.getValue();
                if (value instanceof Boolean) {
                    mutablePreferences.set(PreferencesKeys.booleanKey(str), value);
                } else if (value instanceof Float) {
                    mutablePreferences.set(PreferencesKeys.floatKey(str), value);
                } else if (value instanceof Integer) {
                    mutablePreferences.set(PreferencesKeys.intKey(str), value);
                } else if (value instanceof Long) {
                    mutablePreferences.set(PreferencesKeys.longKey(str), value);
                } else if (value instanceof String) {
                    mutablePreferences.set(PreferencesKeys.stringKey(str), value);
                } else if (value instanceof Set) {
                    Preferences.Key<Set<String>> keyStringSetKey = PreferencesKeys.stringSetKey(str);
                    y45.h(value, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
                    mutablePreferences.set(keyStringSetKey, (Set) value);
                }
            }
            return mutablePreferences.toPreferences();
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "prefs", "Landroidx/datastore/preferences/core/Preferences;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.preferences.SharedPreferencesMigrationKt$getShouldRunMigration$1", f = "SharedPreferencesMigration.android.kt", l = {}, m = "invokeSuspend")
    public static final class C04981 extends SuspendLambda implements s74 {
        final Set<String> $keysToMigrate;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04981(Set<String> set, wh1<? super C04981> wh1Var) {
            super(2, wh1Var);
            this.$keysToMigrate = set;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            C04981 c04981 = new C04981(this.$keysToMigrate, wh1Var);
            c04981.L$0 = obj;
            return c04981;
        }

        @Override
        public final Object invoke(Preferences preferences, wh1<? super Boolean> wh1Var) {
            return ((C04981) create(preferences, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            Set<Preferences.Key<?>> setKeySet = ((Preferences) this.L$0).asMap().keySet();
            ArrayList arrayList = new ArrayList(z71.v(setKeySet, 10));
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                arrayList.add(((Preferences.Key) it.next()).getName());
            }
            boolean z = true;
            if (this.$keysToMigrate != SharedPreferencesMigrationKt.getMIGRATE_ALL_KEYS()) {
                Set<String> set = this.$keysToMigrate;
                if ((set instanceof Collection) && set.isEmpty()) {
                    z = false;
                } else {
                    Iterator<T> it2 = set.iterator();
                    while (it2.hasNext()) {
                        if (!arrayList.contains((String) it2.next())) {
                        }
                    }
                    z = false;
                }
            }
            return mk0.a(z);
        }
    }

    public static final SharedPreferencesMigration<Preferences> SharedPreferencesMigration(c74 c74Var) {
        y45.j(c74Var, "produceSharedPreferences");
        return SharedPreferencesMigration$default(c74Var, null, 2, null);
    }

    public static SharedPreferencesMigration SharedPreferencesMigration$default(c74 c74Var, Set set, int i, Object obj) {
        if ((i & 2) != 0) {
            set = MIGRATE_ALL_KEYS;
        }
        return SharedPreferencesMigration(c74Var, (Set<String>) set);
    }

    public static final Set<String> getMIGRATE_ALL_KEYS() {
        return MIGRATE_ALL_KEYS;
    }

    private static final u74 getMigrationFunction() {
        return new AnonymousClass1(null);
    }

    private static final s74 getShouldRunMigration(Set<String> set) {
        return new C04981(set, null);
    }

    public static final SharedPreferencesMigration<Preferences> SharedPreferencesMigration(Context context, String str) {
        y45.j(context, "context");
        y45.j(str, "sharedPreferencesName");
        return SharedPreferencesMigration$default(context, str, null, 4, null);
    }

    public static final SharedPreferencesMigration<Preferences> SharedPreferencesMigration(c74 c74Var, Set<String> set) {
        y45.j(c74Var, "produceSharedPreferences");
        y45.j(set, "keysToMigrate");
        if (set == MIGRATE_ALL_KEYS) {
            return new SharedPreferencesMigration<>(c74Var, (Set) null, getShouldRunMigration(set), getMigrationFunction(), 2, (DefaultConstructorMarker) null);
        }
        return new SharedPreferencesMigration<>(c74Var, set, getShouldRunMigration(set), getMigrationFunction());
    }

    public static SharedPreferencesMigration SharedPreferencesMigration$default(Context context, String str, Set set, int i, Object obj) {
        if ((i & 4) != 0) {
            set = MIGRATE_ALL_KEYS;
        }
        return SharedPreferencesMigration(context, str, set);
    }

    public static final SharedPreferencesMigration<Preferences> SharedPreferencesMigration(Context context, String str, Set<String> set) {
        y45.j(context, "context");
        y45.j(str, "sharedPreferencesName");
        y45.j(set, "keysToMigrate");
        if (set == MIGRATE_ALL_KEYS) {
            return new SharedPreferencesMigration<>(context, str, null, getShouldRunMigration(set), getMigrationFunction(), 4, null);
        }
        return new SharedPreferencesMigration<>(context, str, set, getShouldRunMigration(set), getMigrationFunction());
    }
}
