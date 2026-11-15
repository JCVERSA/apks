package defpackage;

import android.text.TextUtils;
import com.mgmi.ssp.MGTVAdFactory;

public abstract class wrd {
    public static String a(String str) {
        String strC = btd.c(str, MGTVAdFactory.getInstance().getChToken());
        return !TextUtils.isEmpty(strC) ? g4d.b(strC) : "";
    }

    public static String b(String str, String str2) {
        return "1".equalsIgnoreCase(str2) ? n4d.b(str, ihd.b("VlRnbUAhJDEwMDlBZEJveQ==")) : str;
    }

    public static String c(String str) {
        return btd.a(str, MGTVAdFactory.getInstance().getChToken());
    }

    public static String d(String str) {
        return n4d.b(str, ihd.b("VlRnbUAhJDEwMDlBZEJveQ=="));
    }
}
