package defpackage;

import com.google.android.gms.common.Feature;

public abstract class amj {
    public static final Feature a;
    public static final Feature b;
    public static final Feature c;
    public static final Feature d;
    public static final Feature e;
    public static final Feature[] f;

    static {
        Feature feature = new Feature("name_ulr_private", 1L);
        a = feature;
        Feature feature2 = new Feature("name_sleep_segment_request", 1L);
        b = feature2;
        Feature feature3 = new Feature("support_context_feature_id", 1L);
        c = feature3;
        Feature feature4 = new Feature("get_current_location", 1L);
        d = feature4;
        Feature feature5 = new Feature("get_last_activity_feature_id", 1L);
        e = feature5;
        f = new Feature[]{feature, feature2, feature3, feature4, feature5};
    }
}
