package defpackage;

import com.mgtv.easydatasource.flowreporter.BuildConfig;

public abstract class i0f {
    public static final eze a = eze.b("gads:dynamite_load:fail:sample_rate", 10000);
    public static final eze b = eze.d("gads:report_dynamite_crash_in_background_thread", false);
    public static final eze c = new eze("gads:public_beta:traffic_multiplier", BuildConfig.VERSION_NAME, 4);
    public static final eze d = new eze("gads:sdk_crash_report_class_prefix", "com.google.", 4);
    public static final eze e;
    public static final eze f;

    static {
        eze.d("gads:sdk_crash_report_enabled", false);
        e = eze.d("gads:sdk_crash_report_full_stacktrace", false);
        f = eze.a("gads:trapped_exception_sample_rate", 0.01d);
    }
}
