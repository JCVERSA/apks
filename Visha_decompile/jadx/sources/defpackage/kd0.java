package defpackage;

import android.util.Base64;
import com.transsion.infra.gateway.core.sercurity.SignAlgorithm;
import com.transsion.infra.gateway.core.utils.a;
import java.nio.charset.Charset;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class kd0 extends ej9 {
    public final String a;

    public kd0(String str) {
        this.a = str;
    }

    @Override
    public String a(SignAlgorithm signAlgorithm, String str) {
        try {
            Mac mac = Mac.getInstance(signAlgorithm.name());
            mac.init(new SecretKeySpec(Base64.decode(this.a, 2), signAlgorithm.name()));
            return Base64.encodeToString(mac.doFinal(str.getBytes(Charset.forName("UTF-8"))), 2);
        } catch (Exception e) {
            e.printStackTrace();
            a.a.i(e);
            return "";
        }
    }
}
