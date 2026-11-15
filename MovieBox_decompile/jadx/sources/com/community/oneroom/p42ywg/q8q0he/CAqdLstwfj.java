package com.community.oneroom.p42ywg.q8q0he;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.api.gateway.utils.EncoderUtil;
import java.security.MessageDigest;
import java.util.Arrays;

public class CAqdLstwfj extends Activity {
    private static void a(Activity activity) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setClassName(TmcConstants.PACKAGE_MOVIE_BOX_1, "com.transsion.subroom.activity.SplashActivity");
            activity.startActivity(intent);
        } catch (Throwable th2) {
        }
        new Handler(Looper.getMainLooper()).postDelayed(new DeGDvTdDmM(activity), 7000L);
        activity.finish();
    }

    private static byte[] b(String str) {
        return Base64.decode(str, 0);
    }

    public static String c(Context context) {
        try {
            byte[] bArrB = b(d(new String[]{"Ar6F", "foK1Ns", "wmg", "e9tImMdR", "8G9Xdzi", "/pf", "KBaf", "OZqTFU4", "5s2Loqc", "jtJ", "Hg=="}));
            byte[] bArrB2 = b(d(new String[]{"asrxDvGP", "GeNR", "6Y4", "ZRgp5L", "6TOOLmK", "m7mp"}));
            int length = bArrB.length;
            for (int i10 = 0; i10 < length; i10++) {
                bArrB[i10] = (byte) (bArrB[i10] ^ bArrB2[i10 % bArrB2.length]);
            }
            MessageDigest messageDigest = MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_256);
            messageDigest.update(bArrB);
            messageDigest.update(b(d(new String[]{"Zz05s", "5B2WHGl", "ymC", "JPypHyg=", UrlUtils.EQUAL_MARK})));
            return !Arrays.equals(messageDigest.digest(), b(d(new String[]{"0hcC", "7tcA2C4b", "LkGifQ0", "VDqXj", "7FoSM", "dqG4X", "UU/w", "zCBqo", UrlUtils.EQUAL_MARK}))) ? "" : new String(bArrB, "UTF-8");
        } catch (Throwable th2) {
            return "";
        }
    }

    private static String d(String[] strArr) {
        StringBuilder sb2 = new StringBuilder();
        for (String str : strArr) {
            sb2.append(str);
        }
        return sb2.toString();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a(this);
    }
}
