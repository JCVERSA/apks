package com.transsion.xuanniao.account.model.data;

import android.content.Context;
import android.content.res.Resources;
import com.transsion.xuanniao.account.R;
import java.io.Serializable;

public class LoginThird implements Serializable {
    public static final int FACEBOOK_TYPE = 1;
    public static final int GOOGLE_TYPE = 2;
    public static final int INFINIX_TYPE = 5;
    public static final int ITEL_TYPE = 6;
    public static final int LINE_TYPE = 7;
    public static final int TECNO_TYPE = 4;
    public static final int TWITTER_TYPE = 3;
    public static final int VK_TYPE = 8;
    public String authTicket;
    public String clientId;
    private String thirdToken;
    private int thirdType;

    public LoginThird(int i, String str) {
        this.thirdType = i;
        this.authTicket = str;
        this.thirdToken = str;
    }

    public static boolean isFbSupport(Context context) {
        try {
            return !context.getPackageManager().hasSystemFeature("com.google.android.feature.RU");
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    public static boolean isVKSupport(Context context) {
        Resources resources = context.getResources();
        String string = resources != null ? resources.getString(R.string.xn_language) : "";
        return "ru".equalsIgnoreCase(string) || "kk-rKZ".equalsIgnoreCase(string) || "uk-rUA".equalsIgnoreCase(string);
    }

    public String getThirdToken() {
        return this.thirdToken;
    }

    public int getThirdType() {
        return this.thirdType;
    }

    public void setThirdToken(String str) {
        this.thirdToken = str;
    }

    public void setThirdType(int i) {
        this.thirdType = i;
    }
}
