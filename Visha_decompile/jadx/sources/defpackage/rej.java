package defpackage;

public final class rej implements pej {
    public static final q1j a;
    public static final q1j b;
    public static final q1j c;
    public static final q1j d;
    public static final q1j e;

    static {
        y0j y0jVarA = new y0j(c0j.a("com.google.android.gms.measurement")).b().a();
        a = y0jVarA.f("measurement.client.global_params", true);
        b = y0jVarA.f("measurement.service.global_params_in_payload", true);
        c = y0jVarA.f("measurement.service.clear_global_params_on_uninstall", true);
        d = y0jVarA.f("measurement.service.global_params", true);
        e = y0jVarA.d("measurement.id.service.global_params", 0L);
    }

    @Override
    public final boolean zzb() {
        return ((Boolean) c.b()).booleanValue();
    }
}
