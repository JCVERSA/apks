package com.bytedance.sdk.openadsdk.EjP;

import com.transsion.push.PushConstants;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class sP {
    public static final String Sj = com.bytedance.sdk.openadsdk.EjP.TKC.Sj.InterfaceC0217Sj.Sj;
    public static final String sP = com.bytedance.sdk.openadsdk.EjP.TKC.Sj.InterfaceC0217Sj.sP;
    public static final String TKC = com.bytedance.sdk.openadsdk.EjP.TKC.Sj.InterfaceC0217Sj.TKC;
    public static final String EjP = com.bytedance.sdk.openadsdk.EjP.TKC.Sj.InterfaceC0217Sj.EjP;
    public static final String HiB = com.bytedance.sdk.openadsdk.EjP.TKC.Sj.InterfaceC0217Sj.HiB;
    public static final String vS = com.bytedance.sdk.openadsdk.EjP.TKC.Sj.InterfaceC0217Sj.vS;
    public static final Set<String> Jcg = new HashSet(Arrays.asList("click", PushConstants.PUSH_SERVICE_TYPE_SHOW, "insight_log"));

    public static class Sj {
        public static String EjP = "saLandingPageLinks";
        public static String Sj = "openDetailPage";
        public static String TKC = "direct";
        public static String sP = "openAdLandPageLinks";
    }

    public static class C0218sP {
        public static int Sj = 1;
        public static int TKC = 100;
        public static int sP = 2;
    }

    public static boolean Sj(String str) {
        return "embeded_ad".equals(str) || "banner_ad".equals(str) || "interaction".equals(str) || "slide_banner_ad".equals(str);
    }
}
