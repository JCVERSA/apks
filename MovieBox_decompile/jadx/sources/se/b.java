package se;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;

public abstract class b extends AsyncTask {

    private a f72051a;

    protected final InterfaceC0883b f72052b;

    public interface a {
        void a(b bVar);
    }

    public interface InterfaceC0883b {
        JSONObject a();

        void a(JSONObject jSONObject);
    }

    public b(InterfaceC0883b interfaceC0883b) {
        this.f72052b = interfaceC0883b;
    }

    @Override
    public void onPostExecute(String str) {
        a aVar = this.f72051a;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void b(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }

    public void c(a aVar) {
        this.f72051a = aVar;
    }
}
