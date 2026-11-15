package defpackage;

public final class cdj implements adj {
    public static final q1j a;
    public static final q1j b;
    public static final q1j c;
    public static final q1j d;

    static {
        y0j y0jVarA = new y0j(c0j.a("com.google.android.gms.measurement")).a();
        a = y0jVarA.f("measurement.client.consent_state_v1", true);
        b = y0jVarA.f("measurement.client.3p_consent_state_v1", true);
        c = y0jVarA.f("measurement.service.consent_state_v1_W36", true);
        d = y0jVarA.d("measurement.service.storage_consent_support_version", 203600L);
    }

    @Override
    public final long zza() {
        return ((Long) d.b()).longValue();
    }
}
