package io.appmetrica.analytics.profile;

import androidx.annotation.NonNull;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import io.appmetrica.analytics.impl.A6;
import io.appmetrica.analytics.impl.Bk;
import io.appmetrica.analytics.impl.Bn;
import io.appmetrica.analytics.impl.C2423al;
import io.appmetrica.analytics.impl.C2535f8;
import io.appmetrica.analytics.impl.C2560g8;
import io.appmetrica.analytics.impl.C2843ri;
import io.appmetrica.analytics.impl.C3047zm;
import io.appmetrica.analytics.impl.J4;
import io.appmetrica.analytics.impl.U2;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;

public class BirthDateAttribute {
    private final A6 a = new A6("appmetrica_birth_date", new C2560g8(), new C2423al());

    public final UserProfileUpdate a(Calendar calendar, String str, U2 u2) {
        return new UserProfileUpdate(new C3047zm(this.a.c, new SimpleDateFormat(str).format(calendar.getTime()), new C2535f8(), new C2560g8(), u2));
    }

    public UserProfileUpdate<? extends Bn> withAge(int i) {
        int i2 = Calendar.getInstance(Locale.US).get(1) - i;
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i2);
        return a(gregorianCalendar, "yyyy", new J4(this.a.b));
    }

    public UserProfileUpdate<? extends Bn> withAgeIfUndefined(int i) {
        int i2 = Calendar.getInstance(Locale.US).get(1) - i;
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i2);
        return a(gregorianCalendar, "yyyy", new Bk(this.a.b));
    }

    public UserProfileUpdate<? extends Bn> withBirthDate(@NonNull Calendar calendar) {
        return a(calendar, OSDateTimePicker.FORMAT_Y_M_D, new J4(this.a.b));
    }

    public UserProfileUpdate<? extends Bn> withBirthDateIfUndefined(@NonNull Calendar calendar) {
        return a(calendar, OSDateTimePicker.FORMAT_Y_M_D, new Bk(this.a.b));
    }

    public UserProfileUpdate<? extends Bn> withValueReset() {
        return new UserProfileUpdate<>(new C2843ri(0, this.a.c, new C2560g8(), new C2423al()));
    }

    public UserProfileUpdate<? extends Bn> withBirthDate(int i) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i);
        return a(gregorianCalendar, "yyyy", new J4(this.a.b));
    }

    public UserProfileUpdate<? extends Bn> withBirthDateIfUndefined(int i) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i);
        return a(gregorianCalendar, "yyyy", new Bk(this.a.b));
    }

    public UserProfileUpdate<? extends Bn> withBirthDate(int i, int i2) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i);
        gregorianCalendar.set(2, i2 - 1);
        gregorianCalendar.set(5, 1);
        return a(gregorianCalendar, "yyyy-MM", new J4(this.a.b));
    }

    public UserProfileUpdate<? extends Bn> withBirthDateIfUndefined(int i, int i2) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i);
        gregorianCalendar.set(2, i2 - 1);
        gregorianCalendar.set(5, 1);
        return a(gregorianCalendar, "yyyy-MM", new Bk(this.a.b));
    }

    public UserProfileUpdate<? extends Bn> withBirthDate(int i, int i2, int i3) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i);
        gregorianCalendar.set(2, i2 - 1);
        gregorianCalendar.set(5, i3);
        return a(gregorianCalendar, OSDateTimePicker.FORMAT_Y_M_D, new J4(this.a.b));
    }

    public UserProfileUpdate<? extends Bn> withBirthDateIfUndefined(int i, int i2, int i3) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i);
        gregorianCalendar.set(2, i2 - 1);
        gregorianCalendar.set(5, i3);
        return a(gregorianCalendar, OSDateTimePicker.FORMAT_Y_M_D, new Bk(this.a.b));
    }
}
