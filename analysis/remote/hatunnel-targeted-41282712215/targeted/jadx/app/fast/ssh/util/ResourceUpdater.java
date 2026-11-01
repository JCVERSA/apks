package app.fast.ssh.util;

import android.content.Context;
import app.fast.ssh.ProtectedFastSSH;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;
import org.json.JSONObject;

public class ResourceUpdater {
    private static final String UPDATE_URL = ProtectedFastSSH.s("ㆦ");
    private final Context context;
    private RequestQueue mRequestQueue;

    class AnonymousClass1 implements Response.Listener<JSONObject> {
        final UpdateListener val$updateListener;

        AnonymousClass1(UpdateListener updateListener) {
            this.val$updateListener = updateListener;
        }

        @Override
        public void onResponse(JSONObject jSONObject) {
            onResponse2(jSONObject);
        }

        public void onResponse2(JSONObject jSONObject) {
            this.val$updateListener.onResponseReceived(jSONObject);
        }
    }

    class AnonymousClass2 implements Response.ErrorListener {
        final UpdateListener val$updateListener;

        AnonymousClass2(UpdateListener updateListener) {
            this.val$updateListener = updateListener;
        }

        @Override
        public void onErrorResponse(VolleyError volleyError) {
            this.val$updateListener.onErrorOccurred();
        }
    }

    public interface UpdateListener {
        void onErrorOccurred();

        void onResponseReceived(JSONObject jSONObject);
    }

    public ResourceUpdater(Context context) {
        this.context = context;
        this.mRequestQueue = Volley.newRequestQueue(context);
    }

    public void requestUpdate(UpdateListener updateListener) {
        this.mRequestQueue.add(new JsonObjectRequest(0, ProtectedFastSSH.s("ㆦ"), null, new AnonymousClass1(updateListener), new AnonymousClass2(updateListener)));
    }
}
