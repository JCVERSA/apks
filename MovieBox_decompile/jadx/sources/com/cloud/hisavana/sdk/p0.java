package com.cloud.hisavana.sdk;

import android.util.Base64;
import android.util.Log;
import com.cloud.hisavana.sdk.sign.SignAlgorithm;
import java.nio.charset.StandardCharsets;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class p0 extends v1 {

    private final String f22123a;

    public p0(String str) {
        this.f22123a = str;
    }

    @Override
    public String a(SignAlgorithm signAlgorithm, String str) {
        try {
            Mac mac = Mac.getInstance(signAlgorithm.name());
            mac.init(new SecretKeySpec(Base64.decode(this.f22123a, 2), signAlgorithm.name()));
            return Base64.encodeToString(mac.doFinal(str.getBytes(StandardCharsets.UTF_8)), 2);
        } catch (Exception e10) {
            b4.b().e(Log.getStackTraceString(e10));
            return "";
        }
    }
}
