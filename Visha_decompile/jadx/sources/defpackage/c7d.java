package defpackage;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;

public abstract class c7d extends AsyncTask {
    public a a;
    public final b b;

    public interface a {
        void a(c7d c7dVar);
    }

    public interface b {
        JSONObject a();

        void a(JSONObject jSONObject);
    }

    public c7d(b bVar) {
        this.b = bVar;
    }

    public void a(a aVar) {
        this.a = aVar;
    }

    @Override
    public void onPostExecute(String str) {
        a aVar = this.a;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void c(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }
}
