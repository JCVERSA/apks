package io.appmetrica.analytics.profile;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.impl.C2936vb;
import io.appmetrica.analytics.impl.C3022ym;
import io.appmetrica.analytics.impl.D4;
import io.appmetrica.analytics.impl.Lb;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

public final class Attribute {
    @NonNull
    public static BirthDateAttribute birthDate() {
        return new BirthDateAttribute();
    }

    @NonNull
    public static BooleanAttribute customBoolean(@NonNull String str) {
        return new BooleanAttribute(str, new C2936vb(), new Lb(new D4(100)));
    }

    @NonNull
    public static CounterAttribute customCounter(@NonNull String str) {
        return new CounterAttribute(str, new C2936vb(), new Lb(new D4(100)));
    }

    @NonNull
    public static NumberAttribute customNumber(@NonNull String str) {
        return new NumberAttribute(str, new C2936vb(), new Lb(new D4(100)));
    }

    @NonNull
    public static StringAttribute customString(@NonNull String str) {
        return new StringAttribute(str, new C3022ym(200, "String attribute \"" + str + "\"", PublicLogger.getAnonymousInstance()), new C2936vb(), new Lb(new D4(100)));
    }

    @NonNull
    public static GenderAttribute gender() {
        return new GenderAttribute();
    }

    @NonNull
    public static NameAttribute name() {
        return new NameAttribute();
    }

    @NonNull
    public static NotificationsEnabledAttribute notificationsEnabled() {
        return new NotificationsEnabledAttribute();
    }
}
