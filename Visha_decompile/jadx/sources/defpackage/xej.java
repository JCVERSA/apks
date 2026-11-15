package defpackage;

public final class xej implements vej {
    public static final q1j a;
    public static final q1j b;
    public static final q1j c;
    public static final q1j d;

    static {
        y0j y0jVarA = new y0j(c0j.a("com.google.android.gms.measurement")).a();
        a = y0jVarA.f("measurement.sdk.collection.enable_extend_user_property_size", true);
        b = y0jVarA.f("measurement.sdk.collection.last_deep_link_referrer2", true);
        c = y0jVarA.f("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        d = y0jVarA.d("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override
    public final boolean zza() {
        return ((Boolean) c.b()).booleanValue();
    }
}
