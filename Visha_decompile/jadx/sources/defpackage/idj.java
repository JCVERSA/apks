package defpackage;

public final class idj implements gdj {
    public static final q1j a;
    public static final q1j b;
    public static final q1j c;

    static {
        y0j y0jVarA = new y0j(c0j.a("com.google.android.gms.measurement")).b().a();
        a = y0jVarA.f("measurement.collection.event_safelist", true);
        b = y0jVarA.f("measurement.service.store_null_safelist", true);
        c = y0jVarA.f("measurement.service.store_safelist", true);
    }

    @Override
    public final boolean zzb() {
        return ((Boolean) b.b()).booleanValue();
    }

    @Override
    public final boolean zzc() {
        return ((Boolean) c.b()).booleanValue();
    }
}
