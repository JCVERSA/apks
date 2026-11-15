package defpackage;

public final class aej implements sdj {
    public static final q1j a;
    public static final q1j b;
    public static final q1j c;
    public static final q1j d;

    static {
        y0j y0jVarA = new y0j(c0j.a("com.google.android.gms.measurement")).a();
        a = y0jVarA.f("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        b = y0jVarA.f("measurement.audience.refresh_event_count_filters_timestamp", false);
        c = y0jVarA.f("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        d = y0jVarA.f("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override
    public final boolean zzb() {
        return ((Boolean) b.b()).booleanValue();
    }

    @Override
    public final boolean zzc() {
        return ((Boolean) c.b()).booleanValue();
    }

    @Override
    public final boolean zzd() {
        return ((Boolean) d.b()).booleanValue();
    }
}
