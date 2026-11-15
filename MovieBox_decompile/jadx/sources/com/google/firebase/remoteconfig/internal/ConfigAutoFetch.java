package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

public class ConfigAutoFetch {

    private final Set f31609a;

    private final HttpURLConnection f31610b;

    private final ConfigFetchHandler f31611c;

    private final e f31612d;

    private final ad.c f31613e;

    private final ScheduledExecutorService f31614f;

    private final Random f31615g = new Random();

    public ConfigAutoFetch(HttpURLConnection httpURLConnection, ConfigFetchHandler configFetchHandler, e eVar, Set set, ad.c cVar, ScheduledExecutorService scheduledExecutorService) {
        this.f31610b = httpURLConnection;
        this.f31611c = configFetchHandler;
        this.f31612d = eVar;
        this.f31609a = set;
        this.f31613e = cVar;
        this.f31614f = scheduledExecutorService;
    }

    private void b(final int i10, final long j10) {
        if (i10 == 0) {
            k(new FirebaseRemoteConfigServerException("Unable to fetch the latest version of the template.", FirebaseRemoteConfigException.Code.CONFIG_UPDATE_NOT_FETCHED));
        } else {
            this.f31614f.schedule(new Runnable() {
                @Override
                public void run() {
                    ConfigAutoFetch.this.d(i10, j10);
                }
            }, this.f31615g.nextInt(4), TimeUnit.SECONDS);
        }
    }

    private synchronized void c(ad.b bVar) {
        Iterator it = this.f31609a.iterator();
        while (it.hasNext()) {
            ((ad.c) it.next()).b(bVar);
        }
    }

    private static Boolean e(ConfigFetchHandler.a aVar, long j10) {
        if (aVar.d() != null) {
            return Boolean.valueOf(aVar.d().k() >= j10);
        }
        return Boolean.valueOf(aVar.f() == 1);
    }

    private void f(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
        loop0: while (true) {
            String strJ = "";
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break loop0;
                }
                strJ = strJ + line;
                if (line.contains("}")) {
                    strJ = j(strJ);
                    if (strJ.isEmpty()) {
                    }
                }
            }
            try {
                JSONObject jSONObject = new JSONObject(strJ);
                if (jSONObject.has("featureDisabled") && jSONObject.getBoolean("featureDisabled")) {
                    this.f31613e.a(new FirebaseRemoteConfigServerException("The server is temporarily unavailable. Try again in a few minutes.", FirebaseRemoteConfigException.Code.CONFIG_UPDATE_UNAVAILABLE));
                    break;
                } else {
                    if (g()) {
                        break;
                    }
                    if (jSONObject.has("latestTemplateVersionNumber")) {
                        long jR = this.f31611c.r();
                        long j10 = jSONObject.getLong("latestTemplateVersionNumber");
                        if (j10 > jR) {
                            b(3, j10);
                        }
                    }
                }
            } catch (JSONException e10) {
                k(new FirebaseRemoteConfigClientException("Unable to parse config update message.", e10.getCause(), FirebaseRemoteConfigException.Code.CONFIG_UPDATE_MESSAGE_INVALID));
                Log.e("FirebaseRemoteConfig", "Unable to parse latest config update message.", e10);
            }
        }
        bufferedReader.close();
        inputStream.close();
    }

    private synchronized boolean g() {
        return this.f31609a.isEmpty();
    }

    public Task h(Task task, Task task2, long j10, int i10, Task task3) throws JSONException {
        if (!task.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Failed to auto-fetch config update.", task.getException()));
        }
        if (!task2.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Failed to get activated config for auto-fetch", task2.getException()));
        }
        ConfigFetchHandler.a aVar = (ConfigFetchHandler.a) task.getResult();
        f fVarA = (f) task2.getResult();
        if (!e(aVar, j10).booleanValue()) {
            b(i10, j10);
            return Tasks.forResult(null);
        }
        if (aVar.d() == null) {
            return Tasks.forResult(null);
        }
        if (fVarA == null) {
            fVarA = f.l().a();
        }
        Set setF = fVarA.f(aVar.d());
        if (setF.isEmpty()) {
            return Tasks.forResult(null);
        }
        c(ad.b.a(setF));
        return Tasks.forResult(null);
    }

    private String j(String str) {
        int iIndexOf = str.indexOf(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        int iLastIndexOf = str.lastIndexOf(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
        return (iIndexOf < 0 || iLastIndexOf < 0 || iIndexOf >= iLastIndexOf) ? "" : str.substring(iIndexOf, iLastIndexOf + 1);
    }

    private synchronized void k(FirebaseRemoteConfigException firebaseRemoteConfigException) {
        Iterator it = this.f31609a.iterator();
        while (it.hasNext()) {
            ((ad.c) it.next()).a(firebaseRemoteConfigException);
        }
    }

    public synchronized Task d(int i10, final long j10) {
        final int i11;
        final Task taskN;
        final Task taskE;
        i11 = i10 - 1;
        taskN = this.f31611c.n(ConfigFetchHandler.FetchType.REALTIME, 3 - i11);
        taskE = this.f31612d.e();
        return Tasks.whenAllComplete((Task<?>[]) new Task[]{taskN, taskE}).continueWithTask(this.f31614f, new Continuation() {
            @Override
            public final Object then(Task task) {
                return this.f31658a.h(taskN, taskE, j10, i11, task);
            }
        });
    }

    public void i() {
        HttpURLConnection httpURLConnection = this.f31610b;
        if (httpURLConnection == null) {
            return;
        }
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            f(inputStream);
            inputStream.close();
        } catch (IOException unused) {
        } finally {
            this.f31610b.disconnect();
        }
    }
}
