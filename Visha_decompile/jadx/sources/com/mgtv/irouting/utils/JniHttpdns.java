package com.mgtv.irouting.utils;

public class JniHttpdns {
    private static JniHttpdns a;
    private static d b = new d();
    private static String c = "";

    private JniHttpdns() {
        e.a("[httpdns-v1.0.7]", "cache_path : " + (a.c().isEmpty() ? a.b() : a.c()));
        e.a("[httpdns-v1.0.7]", "JNI Address : " + toString());
        d.a(c);
    }

    public static synchronized JniHttpdns a() {
        try {
            if (a == null) {
                a = new JniHttpdns();
            }
        } catch (Throwable th) {
            throw th;
        }
        return a;
    }

    public native void add_domain(String str);

    public native void clear_gradedata();

    public native void clear_ipdata();

    public native byte[] get_ipdata(String str);

    public native byte[] http_query_bestip(String str, String str2, String str3);

    public native byte[] http_query_ips(String str, String str2, String str3);

    public native int http_query_ttl(String str, String str2, String str3);

    public native int http_upload_score(String str, String str2, String str3, String str4);

    public native void init(String str);

    public native void push_gradedata(String str, String str2);

    public native void push_ipdata(String str, String str2);

    public native int schedule();
}
