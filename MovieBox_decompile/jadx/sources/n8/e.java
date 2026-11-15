package n8;

import android.util.Log;
import java.net.HttpURLConnection;
import java.util.Map;

public class e {

    private int f66953a;

    private String f66954b;

    private Map f66955c;

    private byte[] f66956d;

    public e(HttpURLConnection httpURLConnection, byte[] bArr) {
        try {
            this.f66953a = httpURLConnection.getResponseCode();
            this.f66954b = httpURLConnection.getURL().toString();
            this.f66955c = httpURLConnection.getHeaderFields();
        } catch (Throwable th2) {
            Log.e("HttpResponse", "Failed to createHttpResponse", th2);
        }
        this.f66956d = bArr;
    }

    public int a() {
        return this.f66953a;
    }
}
