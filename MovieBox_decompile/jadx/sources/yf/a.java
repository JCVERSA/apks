package yf;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;

public final class a implements j8.b {

    private ThreadLocal f76242a = new C0948a();

    public static final class C0948a extends ThreadLocal {
        C0948a() {
        }

        @Override
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat("yyyy-MM-dd", Locale.US);
        }
    }

    @Override
    public String a(int i10, long j10) {
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) this.f76242a.get();
        if (simpleDateFormat != null) {
            simpleDateFormat.setTimeZone(TimeZone.getDefault());
        }
        if (simpleDateFormat == null) {
            return UUID.randomUUID() + ".log";
        }
        return simpleDateFormat.format(new Date(j10)) + ".log";
    }

    @Override
    public boolean b() {
        return true;
    }
}
