package com.transsion.infra.gateway.core.sercurity;

import android.util.Base64;
import java.nio.charset.Charset;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class a extends c {

    private final String f44640a;

    public a(String str) {
        this.f44640a = str;
    }

    @Override
    public String a(SignAlgorithm signAlgorithm, String str) {
        try {
            Mac mac = Mac.getInstance(signAlgorithm.name());
            mac.init(new SecretKeySpec(Base64.decode(this.f44640a, 2), signAlgorithm.name()));
            return Base64.encodeToString(mac.doFinal(str.getBytes(Charset.forName("UTF-8"))), 2);
        } catch (Exception e10) {
            e10.printStackTrace();
            com.transsion.infra.gateway.core.utils.c.f44670a.i(e10);
            return "";
        }
    }
}
