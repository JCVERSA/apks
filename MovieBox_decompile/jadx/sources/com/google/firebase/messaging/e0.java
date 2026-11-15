package com.google.firebase.messaging;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.transsion.api.gateway.utils.EncoderUtil;
import com.transsion.api.gateway.utils.SafeStringUtils;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;

class e0 {

    private final com.google.firebase.f f31242a;

    private final j0 f31243b;

    private final Rpc f31244c;

    private final kc.b f31245d;

    private final kc.b f31246e;

    private final lc.e f31247f;

    e0(com.google.firebase.f fVar, j0 j0Var, kc.b bVar, kc.b bVar2, lc.e eVar) {
        this(fVar, j0Var, new Rpc(fVar.k()), bVar, bVar2, eVar);
    }

    private static String b(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    private Task c(Task task) {
        return task.continueWith(new v3.m(), new Continuation() {
            @Override
            public final Object then(Task task2) {
                return this.f31239a.i(task2);
            }
        });
    }

    private String d() {
        try {
            return b(MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_1).digest(this.f31242a.m().getBytes()));
        } catch (NoSuchAlgorithmException unused) {
            return "[HASH-ERROR]";
        }
    }

    private String g(Bundle bundle) throws IOException {
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

    static boolean h(String str) {
        return "SERVICE_NOT_AVAILABLE".equals(str) || "INTERNAL_SERVER_ERROR".equals(str) || "InternalServerError".equals(str);
    }

    public String i(Task task) {
        return g((Bundle) task.getResult(IOException.class));
    }

    private void j(String str, String str2, Bundle bundle) {
        HeartBeatInfo.HeartBeat heartBeatB;
        bundle.putString("scope", str2);
        bundle.putString("sender", str);
        bundle.putString("subtype", str);
        bundle.putString("gmp_app_id", this.f31242a.n().c());
        bundle.putString("gmsv", Integer.toString(this.f31243b.d()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f31243b.a());
        bundle.putString("app_ver_name", this.f31243b.b());
        bundle.putString("firebase-app-name-hash", d());
        try {
            String strB = ((com.google.firebase.installations.f) Tasks.await(this.f31247f.a(false))).b();
            if (TextUtils.isEmpty(strB)) {
                Log.w("FirebaseMessaging", "FIS auth token is empty");
            } else {
                bundle.putString("Goog-Firebase-Installations-Auth", strB);
            }
        } catch (InterruptedException e10) {
            e = e10;
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);
        } catch (ExecutionException e11) {
            e = e11;
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);
        }
        bundle.putString(SafeStringUtils.SP_APPID, (String) Tasks.await(this.f31247f.getId()));
        bundle.putString("cliv", "fcm-25.0.1");
        HeartBeatInfo heartBeatInfo = (HeartBeatInfo) this.f31246e.get();
        zc.i iVar = (zc.i) this.f31245d.get();
        if (heartBeatInfo == null || iVar == null || (heartBeatB = heartBeatInfo.b("fire-iid")) == HeartBeatInfo.HeartBeat.NONE) {
            return;
        }
        bundle.putString("Firebase-Client-Log-Type", Integer.toString(heartBeatB.getCode()));
        bundle.putString("Firebase-Client", iVar.getUserAgent());
    }

    private Task l(String str, String str2, Bundle bundle) {
        try {
            j(str, str2, bundle);
            return this.f31244c.send(bundle);
        } catch (InterruptedException | ExecutionException e10) {
            return Tasks.forException(e10);
        }
    }

    Task e() {
        return this.f31244c.getProxiedNotificationData();
    }

    Task f() {
        return c(l(j0.c(this.f31242a), "*", new Bundle()));
    }

    Task k(boolean z10) {
        return this.f31244c.setRetainProxiedNotifications(z10);
    }

    Task m(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        return c(l(str, "/topics/" + str2, bundle));
    }

    Task n(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        bundle.putString(RequestParameters.SUBRESOURCE_DELETE, "1");
        return c(l(str, "/topics/" + str2, bundle));
    }

    e0(com.google.firebase.f fVar, j0 j0Var, Rpc rpc, kc.b bVar, kc.b bVar2, lc.e eVar) {
        this.f31242a = fVar;
        this.f31243b = j0Var;
        this.f31244c = rpc;
        this.f31245d = bVar;
        this.f31246e = bVar2;
        this.f31247f = eVar;
    }
}
