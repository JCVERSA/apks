package defpackage;

import android.util.Base64;
import android.util.Log;
import com.cloud.hisavana.sdk.sign.SignAlgorithm;
import java.nio.charset.StandardCharsets;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class yd5 extends ked {
    public final String a;

    public yd5(String str) {
        this.a = str;
    }

    @Override
    public String a(SignAlgorithm signAlgorithm, String str) {
        try {
            Mac mac = Mac.getInstance(signAlgorithm.name());
            mac.init(new SecretKeySpec(Base64.decode(this.a, 2), signAlgorithm.name()));
            return Base64.encodeToString(mac.doFinal(str.getBytes(StandardCharsets.UTF_8)), 2);
        } catch (Exception e) {
            ikd.b().e(Log.getStackTraceString(e));
            return "";
        }
    }
}
