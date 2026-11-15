package defpackage;

import com.google.android.gms.common.Feature;

public abstract class bvg {
    public static final Feature a;
    public static final Feature b;
    public static final Feature c;
    public static final Feature d;
    public static final Feature e;
    public static final Feature f;
    public static final Feature g;
    public static final Feature h;
    public static final Feature i;
    public static final Feature j;
    public static final Feature k;
    public static final Feature l;
    public static final Feature[] m;

    static {
        Feature feature = new Feature("account_capability_api", 1L);
        a = feature;
        Feature feature2 = new Feature("account_data_service", 6L);
        b = feature2;
        Feature feature3 = new Feature("account_data_service_legacy", 1L);
        c = feature3;
        Feature feature4 = new Feature("account_data_service_token", 8L);
        d = feature4;
        Feature feature5 = new Feature("account_data_service_visibility", 1L);
        e = feature5;
        Feature feature6 = new Feature("config_sync", 1L);
        f = feature6;
        Feature feature7 = new Feature("device_account_api", 1L);
        g = feature7;
        Feature feature8 = new Feature("gaiaid_primary_email_api", 1L);
        h = feature8;
        Feature feature9 = new Feature("google_auth_service_accounts", 2L);
        i = feature9;
        Feature feature10 = new Feature("google_auth_service_token", 3L);
        j = feature10;
        Feature feature11 = new Feature("hub_mode_api", 1L);
        k = feature11;
        Feature feature12 = new Feature("work_account_client_is_whitelisted", 1L);
        l = feature12;
        m = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6, feature7, feature8, feature9, feature10, feature11, feature12};
    }
}
