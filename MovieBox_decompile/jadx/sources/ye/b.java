package ye;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;

public abstract class b extends AsyncTask {

    private a f76236a;

    protected final InterfaceC0947b f76237b;

    public interface a {
        void a(b bVar);
    }

    public interface InterfaceC0947b {
        JSONObject a();

        void a(JSONObject jSONObject);
    }

    public b(InterfaceC0947b interfaceC0947b) {
        this.f76237b = interfaceC0947b;
    }

    @Override
    public void onPostExecute(String str) {
        a aVar = this.f76236a;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void b(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }

    public void c(a aVar) {
        this.f76236a = aVar;
    }
}
