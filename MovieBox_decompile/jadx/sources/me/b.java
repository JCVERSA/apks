package me;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;

public abstract class b extends AsyncTask {

    private a f66396a;

    protected final InterfaceC0813b f66397b;

    public interface a {
        void a(b bVar);
    }

    public interface InterfaceC0813b {
        JSONObject a();

        void a(JSONObject jSONObject);
    }

    public b(InterfaceC0813b interfaceC0813b) {
        this.f66397b = interfaceC0813b;
    }

    @Override
    public void onPostExecute(String str) {
        a aVar = this.f66396a;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void b(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }

    public void c(a aVar) {
        this.f66396a = aVar;
    }
}
