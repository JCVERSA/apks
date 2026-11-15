package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.migrations.SharedPreferencesMigration;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

public abstract class SharedPreferencesMigrationKt {

    private static final Set f8336a = new LinkedHashSet();

    public static final SharedPreferencesMigration a(Context context, String sharedPreferencesName, Set keysToMigrate) {
        Intrinsics.h(context, "context");
        Intrinsics.h(sharedPreferencesName, "sharedPreferencesName");
        Intrinsics.h(keysToMigrate, "keysToMigrate");
        return keysToMigrate == f8336a ? new SharedPreferencesMigration(context, sharedPreferencesName, null, e(keysToMigrate), d(), 4, null) : new SharedPreferencesMigration(context, sharedPreferencesName, keysToMigrate, e(keysToMigrate), d());
    }

    public static SharedPreferencesMigration b(Context context, String str, Set set, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            set = f8336a;
        }
        return a(context, str, set);
    }

    public static final Set c() {
        return f8336a;
    }

    private static final Function3 d() {
        return new SharedPreferencesMigrationKt$getMigrationFunction$1(null);
    }

    private static final Function2 e(Set set) {
        return new SharedPreferencesMigrationKt$getShouldRunMigration$1(set, null);
    }
}
