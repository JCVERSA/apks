package io.appmetrica.analytics.profile;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.impl.A6;
import io.appmetrica.analytics.impl.Bk;
import io.appmetrica.analytics.impl.Bn;
import io.appmetrica.analytics.impl.C2423al;
import io.appmetrica.analytics.impl.C2535f8;
import io.appmetrica.analytics.impl.C2560g8;
import io.appmetrica.analytics.impl.C2843ri;
import io.appmetrica.analytics.impl.C3047zm;
import io.appmetrica.analytics.impl.J4;

public class GenderAttribute {
    private final A6 a = new A6("appmetrica_gender", new C2560g8(), new C2423al());

    public enum Gender {
        MALE("M"),
        FEMALE("F"),
        OTHER("O");

        private final String a;

        Gender(String str) {
            this.a = str;
        }

        public String getStringValue() {
            return this.a;
        }
    }

    @NonNull
    public UserProfileUpdate<? extends Bn> withValue(@NonNull Gender gender) {
        String str = this.a.c;
        String stringValue = gender.getStringValue();
        C2535f8 c2535f8 = new C2535f8();
        A6 a6 = this.a;
        return new UserProfileUpdate<>(new C3047zm(str, stringValue, c2535f8, a6.a, new J4(a6.b)));
    }

    @NonNull
    public UserProfileUpdate<? extends Bn> withValueIfUndefined(@NonNull Gender gender) {
        String str = this.a.c;
        String stringValue = gender.getStringValue();
        C2535f8 c2535f8 = new C2535f8();
        A6 a6 = this.a;
        return new UserProfileUpdate<>(new C3047zm(str, stringValue, c2535f8, a6.a, new Bk(a6.b)));
    }

    @NonNull
    public UserProfileUpdate<? extends Bn> withValueReset() {
        A6 a6 = this.a;
        return new UserProfileUpdate<>(new C2843ri(0, a6.c, a6.a, a6.b));
    }
}
