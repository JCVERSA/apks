package defpackage;

public final class dfj implements bfj {
    public static final q1j a;
    public static final q1j b;
    public static final q1j c;
    public static final q1j d;

    static {
        y0j y0jVarA = new y0j(c0j.a("com.google.android.gms.measurement")).a();
        a = y0jVarA.d("measurement.id.lifecycle.app_in_background_parameter", 0L);
        b = y0jVarA.f("measurement.lifecycle.app_backgrounded_tracking", true);
        c = y0jVarA.f("measurement.lifecycle.app_in_background_parameter", false);
        d = y0jVarA.d("measurement.id.lifecycle.app_backgrounded_tracking", 0L);
    }

    @Override
    public final boolean zza() {
        return ((Boolean) c.b()).booleanValue();
    }
}
