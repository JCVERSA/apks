package com.google.firebase.messaging;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import com.transsion.push.PushConstants;
import java.util.concurrent.TimeUnit;

public abstract class a {
    public static final long a = TimeUnit.MINUTES.toMillis(3);

    public static final class C0116a {
        public static ArrayMap a(Bundle bundle) {
            ArrayMap arrayMap = new ArrayMap();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals("from") && !str.equals(PushConstants.EXTRA_PUSH_MESSAGE_TYPE) && !str.equals("collapse_key")) {
                        arrayMap.put(str, str2);
                    }
                }
            }
            return arrayMap;
        }
    }
}
