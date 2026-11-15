package defpackage;

import com.transsion.hubsdk.api.os.TranSystemProperties;

public abstract class maa {
    public static boolean a(String str, boolean z) {
        return TranSystemProperties.getBoolean(str, z);
    }

    public static int b(String str, int i) {
        return TranSystemProperties.getInt(str, i);
    }

    public static String c() {
        String strD = d("ro.product.model");
        return strD == null ? "" : strD.replace("TECNO", "").replace("Infinix", "").replace("itel", "").replace("Mobile", "").trim();
    }

    public static String d(String str) {
        return TranSystemProperties.get(str);
    }

    public static boolean e() {
        return a("ro.mtk_2sdcard_swap", false);
    }
}
