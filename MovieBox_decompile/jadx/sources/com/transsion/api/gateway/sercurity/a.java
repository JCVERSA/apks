package com.transsion.api.gateway.sercurity;

import android.util.Base64;
import com.transsion.api.gateway.utils.GatewayUtils;
import java.nio.charset.Charset;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class a {

    public final String f41403a;

    public a(String str) {
        this.f41403a = str;
    }

    public String a(d dVar, String str) {
        try {
            Mac mac = Mac.getInstance(dVar.name());
            mac.init(new SecretKeySpec(Base64.decode(this.f41403a, 2), dVar.name()));
            return Base64.encodeToString(mac.doFinal(str.getBytes(Charset.forName("UTF-8"))), 2);
        } catch (Exception e10) {
            e10.printStackTrace();
            GatewayUtils.L.e(e10);
            return "";
        }
    }
}
