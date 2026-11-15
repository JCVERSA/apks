package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

public class ConfigRealtimeHttpClient {

    static final int[] f31639q = {2, 4, 8, 16, 32, 64, 128, 256};

    private static final Pattern f31640r = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");

    private final Set f31641a;

    private int f31643c;

    private final ScheduledExecutorService f31647g;

    private final ConfigFetchHandler f31648h;

    private final com.google.firebase.f f31649i;

    private final lc.e f31650j;

    e f31651k;

    private final Context f31652l;

    private final String f31653m;

    private final n f31656p;

    private final int f31646f = 8;

    private boolean f31642b = false;

    private final Random f31654n = new Random();

    private final Clock f31655o = DefaultClock.getInstance();

    private boolean f31644d = false;

    private boolean f31645e = false;

    class a implements ad.c {
        a() {
        }

        @Override
        public void a(FirebaseRemoteConfigException firebaseRemoteConfigException) {
            ConfigRealtimeHttpClient.this.j();
            ConfigRealtimeHttpClient.this.u(firebaseRemoteConfigException);
        }

        @Override
        public void b(ad.b bVar) {
        }
    }

    public ConfigRealtimeHttpClient(com.google.firebase.f fVar, lc.e eVar, ConfigFetchHandler configFetchHandler, e eVar2, Context context, String str, Set set, n nVar, ScheduledExecutorService scheduledExecutorService) {
        this.f31641a = set;
        this.f31647g = scheduledExecutorService;
        this.f31643c = Math.max(8 - nVar.h().b(), 1);
        this.f31649i = fVar;
        this.f31648h = configFetchHandler;
        this.f31650j = eVar;
        this.f31651k = eVar2;
        this.f31652l = context;
        this.f31653m = str;
        this.f31656p = nVar;
    }

    private void D(Date date) {
        int iB = this.f31656p.h().b() + 1;
        this.f31656p.o(iB, new Date(date.getTime() + m(iB)));
    }

    private synchronized boolean f() {
        return (this.f31641a.isEmpty() || this.f31642b || this.f31644d || this.f31645e) ? false : true;
    }

    private JSONObject i(String str) {
        HashMap map = new HashMap();
        map.put("project", k(this.f31649i.n().c()));
        map.put("namespace", this.f31653m);
        map.put("lastKnownVersionNumber", Long.toString(this.f31648h.r()));
        map.put("appId", this.f31649i.n().c());
        map.put("sdkVersion", "22.0.1");
        map.put(TmcConstants.EXTRA_APP_INSTANCE_ID, str);
        return new JSONObject(map);
    }

    public synchronized void j() {
        this.f31644d = true;
    }

    private static String k(String str) {
        Matcher matcher = f31640r.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    private String l() {
        try {
            Context context = this.f31652l;
            byte[] packageCertificateHashBytes = AndroidUtilsLight.getPackageCertificateHashBytes(context, context.getPackageName());
            if (packageCertificateHashBytes != null) {
                return Hex.bytesToStringUppercase(packageCertificateHashBytes, false);
            }
            Log.e("FirebaseRemoteConfig", "Could not get fingerprint hash for package: " + this.f31652l.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("No such package: ");
            sb2.append(this.f31652l.getPackageName());
            return null;
        }
    }

    private long m(int i10) {
        int[] iArr = f31639q;
        int length = iArr.length;
        if (i10 >= length) {
            i10 = length;
        }
        long millis = TimeUnit.MINUTES.toMillis(iArr[i10 - 1]);
        return (millis / 2) + ((long) this.f31654n.nextInt((int) millis));
    }

    private String n(String str) {
        return String.format("https://firebaseremoteconfigrealtime.googleapis.com/v1/projects/%s/namespaces/%s:streamFetchInvalidations", k(this.f31649i.n().c()), str);
    }

    private URL o() {
        try {
            return new URL(n(this.f31653m));
        } catch (MalformedURLException unused) {
            Log.e("FirebaseRemoteConfig", "URL is malformed");
            return null;
        }
    }

    private boolean p(int i10) {
        return i10 == 408 || i10 == 429 || i10 == 502 || i10 == 503 || i10 == 504;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0071  */
    public Task q(Task task, Task task2) throws Throwable {
        Integer numValueOf;
        Throwable th2;
        HttpURLConnection httpURLConnection;
        FirebaseRemoteConfigServerException firebaseRemoteConfigServerException;
        try {
            if (!task.isSuccessful()) {
                throw new IOException(task.getException());
            }
            y(true);
            httpURLConnection = (HttpURLConnection) task.getResult();
            try {
                int responseCode = httpURLConnection.getResponseCode();
                numValueOf = Integer.valueOf(responseCode);
                if (responseCode == 200) {
                    try {
                        v();
                        this.f31656p.j();
                        B(httpURLConnection).i();
                    } catch (IOException unused) {
                        g(httpURLConnection);
                        y(false);
                        boolean z10 = numValueOf == null || p(numValueOf.intValue());
                        if (z10) {
                            D(new Date(this.f31655o.currentTimeMillis()));
                        }
                        if (z10 || numValueOf.intValue() == 200) {
                            w();
                        } else {
                            String strT = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", numValueOf);
                            if (numValueOf.intValue() == 403) {
                                strT = t(httpURLConnection.getErrorStream());
                            }
                            firebaseRemoteConfigServerException = new FirebaseRemoteConfigServerException(numValueOf.intValue(), strT, FirebaseRemoteConfigException.Code.CONFIG_UPDATE_STREAM_ERROR);
                        }
                        return Tasks.forResult(null);
                    } catch (Throwable th3) {
                        th2 = th3;
                        g(httpURLConnection);
                        y(false);
                        boolean z11 = numValueOf == null || p(numValueOf.intValue());
                        if (z11) {
                            D(new Date(this.f31655o.currentTimeMillis()));
                        }
                        if (z11 || numValueOf.intValue() == 200) {
                            w();
                        } else {
                            String strT2 = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", numValueOf);
                            if (numValueOf.intValue() == 403) {
                                strT2 = t(httpURLConnection.getErrorStream());
                            }
                            u(new FirebaseRemoteConfigServerException(numValueOf.intValue(), strT2, FirebaseRemoteConfigException.Code.CONFIG_UPDATE_STREAM_ERROR));
                        }
                        throw th2;
                    }
                }
                g(httpURLConnection);
                y(false);
                boolean zP = p(responseCode);
                if (zP) {
                    D(new Date(this.f31655o.currentTimeMillis()));
                }
                if (zP || responseCode == 200) {
                    w();
                } else {
                    String strT3 = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", numValueOf);
                    if (responseCode == 403) {
                        strT3 = t(httpURLConnection.getErrorStream());
                    }
                    firebaseRemoteConfigServerException = new FirebaseRemoteConfigServerException(responseCode, strT3, FirebaseRemoteConfigException.Code.CONFIG_UPDATE_STREAM_ERROR);
                    u(firebaseRemoteConfigServerException);
                }
            } catch (IOException unused2) {
                numValueOf = null;
            } catch (Throwable th4) {
                numValueOf = null;
                th2 = th4;
            }
            return Tasks.forResult(null);
        } catch (IOException unused3) {
            httpURLConnection = null;
            numValueOf = null;
        } catch (Throwable th5) {
            numValueOf = null;
            th2 = th5;
            httpURLConnection = null;
        }
    }

    public Task r(Task task, Task task2, Task task3) {
        if (!task.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for config update listener connection.", task.getException()));
        }
        if (!task2.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation ID for config update listener connection.", task2.getException()));
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) o().openConnection();
            A(httpURLConnection, (String) task2.getResult(), ((com.google.firebase.installations.f) task.getResult()).b());
            return Tasks.forResult(httpURLConnection);
        } catch (IOException e10) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Failed to open HTTP stream connection", e10));
        }
    }

    private synchronized void s(long j10) {
        try {
            if (f()) {
                int i10 = this.f31643c;
                if (i10 > 0) {
                    this.f31643c = i10 - 1;
                    this.f31647g.schedule(new Runnable() {
                        @Override
                        public void run() {
                            ConfigRealtimeHttpClient.this.e();
                        }
                    }, j10, TimeUnit.MILLISECONDS);
                } else if (!this.f31645e) {
                    u(new FirebaseRemoteConfigClientException("Unable to connect to the server. Check your connection and try again.", FirebaseRemoteConfigException.Code.CONFIG_UPDATE_STREAM_ERROR));
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private String t(InputStream inputStream) {
        StringBuilder sb2 = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb2.append(line);
            }
        } catch (IOException unused) {
            if (sb2.length() == 0) {
                return "Unable to connect to the server, access is forbidden. HTTP status code: 403";
            }
        }
        return sb2.toString();
    }

    public synchronized void u(FirebaseRemoteConfigException firebaseRemoteConfigException) {
        Iterator it = this.f31641a.iterator();
        while (it.hasNext()) {
            ((ad.c) it.next()).a(firebaseRemoteConfigException);
        }
    }

    private synchronized void v() {
        this.f31643c = 8;
    }

    private void x(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setRequestProperty("X-Goog-Firebase-Installations-Auth", str);
        httpURLConnection.setRequestProperty("X-Goog-Api-Key", this.f31649i.n().b());
        httpURLConnection.setRequestProperty("X-Android-Package", this.f31652l.getPackageName());
        httpURLConnection.setRequestProperty("X-Android-Cert", l());
        httpURLConnection.setRequestProperty("X-Google-GFE-Can-Retry", "yes");
        httpURLConnection.setRequestProperty("X-Accept-Response-Streaming", "true");
        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
    }

    private synchronized void y(boolean z10) {
        this.f31642b = z10;
    }

    public void A(HttpURLConnection httpURLConnection, String str, String str2) throws IOException {
        httpURLConnection.setRequestMethod("POST");
        x(httpURLConnection, str2);
        byte[] bytes = i(str).toString().getBytes("utf-8");
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bytes);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    public synchronized ConfigAutoFetch B(HttpURLConnection httpURLConnection) {
        return new ConfigAutoFetch(httpURLConnection, this.f31648h, this.f31651k, this.f31641a, new a(), this.f31647g);
    }

    public void C() {
        s(0L);
    }

    public void e() {
        if (f()) {
            if (new Date(this.f31655o.currentTimeMillis()).before(this.f31656p.h().a())) {
                w();
            } else {
                final Task taskH = h();
                Tasks.whenAllComplete((Task<?>[]) new Task[]{taskH}).continueWith(this.f31647g, new Continuation() {
                    @Override
                    public final Object then(Task task) {
                        return this.f31732a.q(taskH, task);
                    }
                });
            }
        }
    }

    public void g(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            try {
                httpURLConnection.getInputStream().close();
                if (httpURLConnection.getErrorStream() != null) {
                    httpURLConnection.getErrorStream().close();
                }
            } catch (IOException unused) {
            }
        }
    }

    public Task h() {
        final Task taskA = this.f31650j.a(false);
        final Task id2 = this.f31650j.getId();
        return Tasks.whenAllComplete((Task<?>[]) new Task[]{taskA, id2}).continueWithTask(this.f31647g, new Continuation() {
            @Override
            public final Object then(Task task) {
                return this.f31734a.r(taskA, id2, task);
            }
        });
    }

    public synchronized void w() {
        s(Math.max(0L, this.f31656p.h().a().getTime() - new Date(this.f31655o.currentTimeMillis()).getTime()));
    }

    void z(boolean z10) {
        this.f31645e = z10;
    }
}
