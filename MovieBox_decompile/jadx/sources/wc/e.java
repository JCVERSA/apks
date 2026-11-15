package wc;

import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import org.apache.http.HttpResponse;
import org.apache.http.client.ResponseHandler;

public class e implements ResponseHandler {

    private final ResponseHandler f74257a;

    private final Timer f74258b;

    private final i f74259c;

    public e(ResponseHandler responseHandler, Timer timer, i iVar) {
        this.f74257a = responseHandler;
        this.f74258b = timer;
        this.f74259c = iVar;
    }

    @Override
    public Object handleResponse(HttpResponse httpResponse) {
        this.f74259c.o(this.f74258b.getDurationMicros());
        this.f74259c.g(httpResponse.getStatusLine().getStatusCode());
        Long lA = f.a(httpResponse);
        if (lA != null) {
            this.f74259c.m(lA.longValue());
        }
        String strB = f.b(httpResponse);
        if (strB != null) {
            this.f74259c.l(strB);
        }
        this.f74259c.a();
        return this.f74257a.handleResponse(httpResponse);
    }
}
