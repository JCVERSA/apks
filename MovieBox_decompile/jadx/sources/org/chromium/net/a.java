package org.chromium.net;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.Iterator;

public abstract class a {
    public static String a(CharSequence charSequence, Iterable iterable) {
        if (charSequence == null) {
            throw new NullPointerException(RequestParameters.DELIMITER);
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            while (true) {
                sb2.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb2.append(charSequence);
            }
        }
        return sb2.toString();
    }
}
