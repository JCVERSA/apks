package defpackage;

public final class lej implements jej {
    public static final q1j a;
    public static final q1j b;
    public static final q1j c;

    static {
        y0j y0jVarA = new y0j(c0j.a("com.google.android.gms.measurement")).a();
        a = y0jVarA.f("measurement.client.sessions.check_on_reset_and_enable2", true);
        b = y0jVarA.f("measurement.client.sessions.check_on_startup", true);
        c = y0jVarA.f("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override
    public final boolean zza() {
        return true;
    }

    @Override
    public final boolean zzb() {
        return ((Boolean) a.b()).booleanValue();
    }
}
