package defpackage;

public final class fgj implements dgj {
    public static final q1j a;
    public static final q1j b;

    static {
        y0j y0jVarA = new y0j(c0j.a("com.google.android.gms.measurement")).b().a();
        a = y0jVarA.f("measurement.collection.enable_session_stitching_token.client.dev", false);
        b = y0jVarA.f("measurement.collection.enable_session_stitching_token.service", false);
    }

    @Override
    public final boolean zza() {
        return true;
    }

    @Override
    public final boolean zzb() {
        return ((Boolean) a.b()).booleanValue();
    }

    @Override
    public final boolean zzc() {
        return ((Boolean) b.b()).booleanValue();
    }
}
