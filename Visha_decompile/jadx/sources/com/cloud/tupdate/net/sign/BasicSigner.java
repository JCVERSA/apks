package com.cloud.tupdate.net.sign;

import android.util.Base64;
import com.cloud.tupdate.net.utils.LogUtil;
import java.nio.charset.Charset;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class BasicSigner extends Signer {
    public final String a;

    public BasicSigner(String str) {
        this.a = str;
    }

    @Override
    public String a(SignAlgorithm signAlgorithm, String str) {
        try {
            Mac mac = Mac.getInstance(signAlgorithm.name());
            mac.init(new SecretKeySpec(Base64.decode(this.a, 2), signAlgorithm.name()));
            return Base64.encodeToString(mac.doFinal(str.getBytes(Charset.forName("UTF-8"))), 2);
        } catch (Exception e) {
            LogUtil.a.d(e);
            return "";
        }
    }
}
