package defpackage;

public abstract class f0f {
    public static final eze a = eze.d("gads:adapter_initialization:red_button", false);
    public static final eze b = eze.d("gads:adapter_settings:red_button", false);
    public static final eze c;
    public static final eze d;
    public static final eze e;
    public static final eze f;

    static {
        eze.d("gads:ads_service_force_stop:red_button", true);
        c = eze.d("gads:banner_refresh_sequential_caching:red_button", false);
        eze.d("gads:ad_serving:enabled", true);
        eze.d("gads:ad_preloading:enabled", true);
        d = eze.d("gads:adaptive_banner:fail_invalid_ad_size", true);
        eze.d("gads:sdk_use_dynamic_module", true);
        e = eze.d("gads:signal_adapters:red_button", false);
        f = eze.d("gads:use_non_templated_client_sdkcore:enabled", false);
    }
}
