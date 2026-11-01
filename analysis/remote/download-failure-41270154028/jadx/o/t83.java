package o;

import android.text.TextUtils;
import com.snaptube.video.videoextractor.net.HttpHeader;
import java.util.Iterator;
import java.util.List;

public class t83 {
    public static int a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.parseInt(str.replace("max-age=", ""));
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public static int b(List list) {
        String value;
        if (list == null) {
            return 0;
        }
        Iterator it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                value = null;
                break;
            }
            HttpHeader httpHeader = (HttpHeader) it2.next();
            if ("Cache-Control".equalsIgnoreCase(httpHeader.getName())) {
                value = httpHeader.getValue();
                break;
            }
        }
        if (TextUtils.isEmpty(value)) {
            return 0;
        }
        return a(value);
    }

    public static int c(a93 a93Var) {
        return a(a93Var.d("Cache-Control"));
    }
}
