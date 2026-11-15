package defpackage;

public abstract class xze {
    public static final eze a = eze.d("gads:init:init_on_bg_thread", true);
    public static final eze b = eze.d("gads:init:init_on_single_bg_thread", false);
    public static final eze c = eze.d("gads:adloader_load_bg_thread", true);
    public static final eze d = eze.d("gads:appopen_load_on_bg_thread", true);
    public static final eze e = eze.d("gads:banner_destroy_bg_thread", false);
    public static final eze f = eze.d("gads:banner_load_bg_thread", true);
    public static final eze g = eze.d("gads:banner_pause_bg_thread", false);
    public static final eze h = eze.d("gads:banner_resume_bg_thread", false);
    public static final eze i = eze.d("gads:interstitial_load_on_bg_thread", true);
    public static final eze j;
    public static final eze k;

    static {
        eze.d("gads:persist_flags_on_bg_thread", true);
        j = eze.d("gads:query_info_bg_thread", true);
        k = eze.d("gads:rewarded_load_bg_thread", true);
    }
}
