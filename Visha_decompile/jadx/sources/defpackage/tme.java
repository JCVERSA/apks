package defpackage;

import com.google.android.gms.measurement.internal.e;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public final class tme extends boi {
    public long c;
    public String d;

    public tme(e eVar) {
        super(eVar);
    }

    @Override
    public final boolean i() {
        Calendar calendar = Calendar.getInstance();
        this.c = TimeUnit.MINUTES.convert(calendar.get(15) + calendar.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        this.d = language.toLowerCase(locale2) + "-" + locale.getCountry().toLowerCase(locale2);
        return false;
    }
}
