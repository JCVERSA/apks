package defpackage;

public final class gfj implements ffj {
    public static final q1j a;
    public static final q1j b;
    public static final q1j c;
    public static final q1j d;
    public static final q1j e;

    static {
        y0j y0jVarA = new y0j(c0j.a("com.google.android.gms.measurement")).a();
        a = y0jVarA.f("measurement.test.boolean_flag", false);
        b = y0jVarA.c("measurement.test.double_flag", -3.0d);
        c = y0jVarA.d("measurement.test.int_flag", -2L);
        d = y0jVarA.d("measurement.test.long_flag", -1L);
        e = y0jVarA.e("measurement.test.string_flag", "---");
    }

    @Override
    public final double zza() {
        return ((Double) b.b()).doubleValue();
    }

    @Override
    public final long zzb() {
        return ((Long) c.b()).longValue();
    }

    @Override
    public final long zzc() {
        return ((Long) d.b()).longValue();
    }

    @Override
    public final String zzd() {
        return (String) e.b();
    }

    @Override
    public final boolean zze() {
        return ((Boolean) a.b()).booleanValue();
    }
}
