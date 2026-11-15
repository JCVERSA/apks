package defpackage;

public abstract class n0f {
    public static final eze a = eze.d("gads:trustless_token_for_decagon:enabled", true);
    public static final eze b;

    static {
        eze.d("gads:invalidate_token_at_refresh_start", true);
        eze.d("gms:expose_token_for_gma:enabled", true);
        eze.d("gads:referesh_rate_limit", false);
        b = eze.b("gads:timeout_for_trustless_token:millis", 2000L);
        eze.d("gads:token_anonymization:enabled", true);
        eze.b("gads:cached_token:ttl_millis", 10800000L);
    }
}
