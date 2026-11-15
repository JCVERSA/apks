package defpackage;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.tasks.a;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;

public class wi4 {
    public final zv3 a;
    public final zn6 b;
    public final iw8 c;
    public final pj8 d;
    public final pj8 e;
    public final kw3 f;

    public wi4(zv3 zv3Var, zn6 zn6Var, pj8 pj8Var, pj8 pj8Var2, kw3 kw3Var) {
        this(zv3Var, zn6Var, new iw8(zv3Var.j()), pj8Var, pj8Var2, kw3Var);
    }

    public static String b(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    public static boolean h(String str) {
        return "SERVICE_NOT_AVAILABLE".equals(str) || "INTERNAL_SERVER_ERROR".equals(str) || "InternalServerError".equals(str);
    }

    public final xda c(xda xdaVar) {
        return xdaVar.i(new ur1(), new xh1() {
            @Override
            public final Object a(xda xdaVar2) {
                return this.a.i(xdaVar2);
            }
        });
    }

    public final String d() {
        try {
            return b(MessageDigest.getInstance("SHA-1").digest(this.a.l().getBytes()));
        } catch (NoSuchAlgorithmException unused) {
            return "[HASH-ERROR]";
        }
    }

    public xda e() {
        return this.c.a();
    }

    public xda f() {
        return c(l(zn6.c(this.a), "*", new Bundle()));
    }

    public final String g(Bundle bundle) throws IOException {
        if (bundle == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String string = bundle.getString("registration_id");
        if (string != null) {
            return string;
        }
        String string2 = bundle.getString("unregistered");
        if (string2 != null) {
            return string2;
        }
        String string3 = bundle.getString("error");
        if ("RST".equals(string3)) {
            throw new IOException("INSTANCE_ID_RESET");
        }
        if (string3 != null) {
            throw new IOException(string3);
        }
        Log.w("FirebaseMessaging", "Unexpected response: " + bundle, new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    public final String i(xda xdaVar) {
        return g((Bundle) xdaVar.n(IOException.class));
    }

    public final void j(String str, String str2, Bundle bundle) {
        HeartBeatInfo.HeartBeat heartBeatA;
        bundle.putString("scope", str2);
        bundle.putString("sender", str);
        bundle.putString("subtype", str);
        bundle.putString("gmp_app_id", this.a.m().c());
        bundle.putString("gmsv", Integer.toString(this.b.d()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.b.a());
        bundle.putString("app_ver_name", this.b.b());
        bundle.putString("firebase-app-name-hash", d());
        try {
            String strB = ((h15) a.a(this.f.a(false))).b();
            if (TextUtils.isEmpty(strB)) {
                Log.w("FirebaseMessaging", "FIS auth token is empty");
            } else {
                bundle.putString("Goog-Firebase-Installations-Auth", strB);
            }
        } catch (InterruptedException | ExecutionException e) {
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);
        }
        bundle.putString("appid", (String) a.a(this.f.getId()));
        bundle.putString("cliv", "fcm-25.0.1");
        HeartBeatInfo heartBeatInfo = (HeartBeatInfo) this.e.get();
        ljb ljbVar = (ljb) this.d.get();
        if (heartBeatInfo == null || ljbVar == null || (heartBeatA = heartBeatInfo.a("fire-iid")) == HeartBeatInfo.HeartBeat.NONE) {
            return;
        }
        bundle.putString("Firebase-Client-Log-Type", Integer.toString(heartBeatA.getCode()));
        bundle.putString("Firebase-Client", ljbVar.getUserAgent());
    }

    public xda k(boolean z) {
        return this.c.d(z);
    }

    public final xda l(String str, String str2, Bundle bundle) {
        try {
            j(str, str2, bundle);
            return this.c.c(bundle);
        } catch (InterruptedException | ExecutionException e) {
            return a.d(e);
        }
    }

    public xda m(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        return c(l(str, "/topics/" + str2, bundle));
    }

    public xda n(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        bundle.putString("delete", "1");
        return c(l(str, "/topics/" + str2, bundle));
    }

    public wi4(zv3 zv3Var, zn6 zn6Var, iw8 iw8Var, pj8 pj8Var, pj8 pj8Var2, kw3 kw3Var) {
        this.a = zv3Var;
        this.b = zn6Var;
        this.c = iw8Var;
        this.d = pj8Var;
        this.e = pj8Var2;
        this.f = kw3Var;
    }
}
