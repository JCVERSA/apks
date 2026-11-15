package wc;

import com.bumptech.glide.integration.cronet.BufferQueue;
import com.google.firebase.perf.metrics.i;
import java.util.regex.Pattern;
import org.apache.http.Header;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponse;

public abstract class f {

    private static final Pattern f74260a = Pattern.compile("(^|.*\\s)datatransport/\\S+ android/($|\\s.*)");

    public static Long a(HttpMessage httpMessage) {
        try {
            Header firstHeader = httpMessage.getFirstHeader(BufferQueue.CONTENT_LENGTH);
            if (firstHeader != null) {
                return Long.valueOf(Long.parseLong(firstHeader.getValue()));
            }
            return null;
        } catch (NumberFormatException unused) {
            uc.a.e().a("The content-length value is not a valid number");
            return null;
        }
    }

    public static String b(HttpResponse httpResponse) {
        String value;
        Header firstHeader = httpResponse.getFirstHeader("content-type");
        if (firstHeader == null || (value = firstHeader.getValue()) == null) {
            return null;
        }
        return value;
    }

    public static boolean c(String str) {
        return str == null || !f74260a.matcher(str).matches();
    }

    public static void d(i iVar) {
        if (!iVar.d()) {
            iVar.i();
        }
        iVar.a();
    }
}
