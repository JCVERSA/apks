package defpackage;

import android.os.Bundle;
import com.transsion.palmsdk.data.PalmAuthRequest;

public abstract class ok7 {
    public static void a(PalmAuthRequest palmAuthRequest, Bundle bundle, String str, String str2, String str3) {
        bundle.putString(str, palmAuthRequest.getAuthParam().getAppid());
        bundle.putString(str2, str3);
    }
}
