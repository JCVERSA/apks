package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.acra.config.CoreConfiguration;

public final class og9 {
    public static final a c = new a(null);
    public final Context a;
    public final CoreConfiguration b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public og9(Context context, CoreConfiguration coreConfiguration) {
        y45.j(context, "context");
        y45.j(coreConfiguration, "config");
        this.a = context;
        this.b = coreConfiguration;
    }

    public final SharedPreferences a() {
        if (this.b.getSharedPreferencesName() != null) {
            SharedPreferences sharedPreferences = this.a.getSharedPreferences(this.b.getSharedPreferencesName(), 0);
            y45.i(sharedPreferences, "{\n            context.ge…t.MODE_PRIVATE)\n        }");
            return sharedPreferences;
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.a);
        y45.i(defaultSharedPreferences, "{\n            @Suppress(…rences(context)\n        }");
        return defaultSharedPreferences;
    }
}
