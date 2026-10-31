package o;

import com.wandoujia.base.config.GlobalConfig;

public class bt6 {
    public static String a() {
        return GlobalConfig.getOfficialSiteUrl();
    }

    public static String b() {
        return a() + "/faq";
    }

    public static String c() {
        return a();
    }

    public static String d() {
        return a() + "/open-source-licenses";
    }

    public static String e() {
        return a() + "/privacyPolicy.html";
    }

    public static String f() {
        return a() + "/termsOfService.html";
    }

    public static String g() {
        return "https://www.snaptubeapp.com/client-pages/YouTubePlayer.html";
    }
}
