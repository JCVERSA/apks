package com.iab.omid.library.bytedance2.walking.async;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;

public abstract class b extends AsyncTask<Object, Void, String> {

    private a f32691a;

    protected final InterfaceC0433b f32692b;

    public interface a {
        void a(b bVar);
    }

    public interface InterfaceC0433b {
        JSONObject a();

        void a(JSONObject jSONObject);
    }

    public b(InterfaceC0433b interfaceC0433b) {
        this.f32692b = interfaceC0433b;
    }

    public void a(a aVar) {
        this.f32691a = aVar;
    }

    @Override
    public void onPostExecute(String str) {
        a aVar = this.f32691a;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void a(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }
}
