package com.transsion.xuanniao.account.model.data;

import android.content.Context;
import android.util.Base64;
import com.google.gson.Gson;
import com.transsion.security.api.hap.TranCryptoManagerLite;
import defpackage.ao7;
import defpackage.mk7;
import defpackage.ul7;
import hyperion.hap.ICryptoManager;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import java.io.Serializable;
import java.security.KeyFactory;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class CommReq implements Serializable {
    public String data;
    public String keyId;
    public String requestKey;
    public String requestSign;
    public long signTime;

    public static Object generateReq(Context context, mk7 mk7Var, Object obj) throws Exception {
        byte[] bArrSign;
        ao7 ao7Var = ao7.a.a;
        Gson gson = new Gson();
        CommReq commReq = new CommReq();
        commReq.signTime = System.currentTimeMillis() + context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_time_diff", 0L);
        HashMap map = (HashMap) gson.fromJson(gson.toJson(obj), HashMap.class);
        map.put("signTime", String.valueOf(commReq.signTime));
        byte[] bytes = gson.toJson(map).getBytes();
        mk7Var.getClass();
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(mk7Var.b, "AES");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(mk7Var.c);
            Cipher cipher = Cipher.getInstance(AESEncrypter.DEFAULT_ALGORITHM);
            cipher.init(1, secretKeySpec, ivParameterSpec);
            byte[] bArrDoFinal = cipher.doFinal(bytes);
            commReq.data = bArrDoFinal != null ? Base64.encodeToString(bArrDoFinal, 0) : null;
            byte[] bArr = mk7Var.b;
            byte[] bArr2 = new byte[bArr.length + mk7Var.c.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            byte[] bArr3 = mk7Var.c;
            System.arraycopy(bArr3, 0, bArr2, mk7Var.b.length, bArr3.length);
            RSAPublicKey rSAPublicKey = (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(Key.PUBLIC_KEY.getBytes(), 0)));
            Cipher cipher2 = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher2.init(1, rSAPublicKey);
            commReq.requestKey = Base64.encodeToString(cipher2.doFinal(bArr2), 2);
            commReq.keyId = ao7Var.i(context);
            ul7 ul7Var = ao7Var.b;
            String strEncodeToString = "";
            if (ul7Var != null && (bArrSign = ((ICryptoManager) TranCryptoManagerLite.b.a(context.getApplicationContext())).sign("signatureAlias", bArrDoFinal)) != null) {
                strEncodeToString = Base64.encodeToString(bArrSign, 2);
            }
            commReq.requestSign = strEncodeToString;
            return commReq;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }
}
