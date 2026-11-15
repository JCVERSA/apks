package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.common.b;
import com.hisavana.common.constant.ComConstants;
import com.transsion.gslb.NetResponse;
import org.json.JSONException;
import org.json.JSONObject;

public final class aye implements SharedPreferences.OnSharedPreferenceChangeListener {
    public Context g;
    public final Object a = new Object();
    public final ConditionVariable b = new ConditionVariable();
    public volatile boolean c = false;
    public volatile boolean d = false;
    public SharedPreferences e = null;
    public Bundle f = new Bundle();
    public JSONObject h = new JSONObject();
    public boolean i = false;
    public boolean j = false;

    public final Object b(final qxe qxeVar) {
        if (!this.b.block(5000L)) {
            synchronized (this.a) {
                try {
                    if (!this.d) {
                        throw new IllegalStateException("Flags.initialize() was not called!");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (!this.c || this.e == null || this.j) {
            synchronized (this.a) {
                if (this.c && this.e != null && !this.j) {
                }
                return qxeVar.k();
            }
        }
        if (qxeVar.e() != 2) {
            return (qxeVar.e() == 1 && this.h.has(qxeVar.l())) ? qxeVar.a(this.h) : eye.a(new k3i() {
                @Override
                public final Object zza() {
                    return qxeVar.c(this.b.e);
                }
            });
        }
        Bundle bundle = this.f;
        return bundle == null ? qxeVar.k() : qxeVar.b(bundle);
    }

    public final Object c(qxe qxeVar) {
        return (this.c || this.d) ? b(qxeVar) : qxeVar.k();
    }

    /* JADX WARN: Code duplicated, block: B:67:0x0120 A[Catch: all -> 0x000e, TRY_ENTER, TryCatch #2 {all -> 0x000e, blocks: (B:7:0x0008, B:9:0x000c, B:13:0x0011, B:15:0x0016, B:16:0x0018, B:18:0x002a, B:19:0x002e, B:20:0x0030, B:42:0x009e, B:43:0x00a5, B:52:0x00d4, B:53:0x00db, B:67:0x0120, B:68:0x0127, B:76:0x014e, B:77:0x0155, B:79:0x0157, B:80:0x015e, B:22:0x0045, B:25:0x004f, B:31:0x005c, B:34:0x0067, B:35:0x006f, B:37:0x0075, B:39:0x0085, B:41:0x009a, B:45:0x00a7, B:47:0x00ab, B:49:0x00bb, B:51:0x00d0, B:55:0x00dd, B:65:0x011c, B:70:0x0129, B:72:0x0140, B:74:0x0144, B:75:0x0147, B:58:0x00ee, B:60:0x00fc, B:62:0x0104, B:63:0x010f), top: B:88:0x0008, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0129 A[Catch: all -> 0x0057, TRY_ENTER, TryCatch #0 {all -> 0x0057, blocks: (B:22:0x0045, B:25:0x004f, B:31:0x005c, B:34:0x0067, B:35:0x006f, B:37:0x0075, B:39:0x0085, B:41:0x009a, B:45:0x00a7, B:47:0x00ab, B:49:0x00bb, B:51:0x00d0, B:55:0x00dd, B:65:0x011c, B:70:0x0129, B:72:0x0140, B:74:0x0144, B:75:0x0147, B:58:0x00ee, B:60:0x00fc, B:62:0x0104, B:63:0x010f), top: B:85:0x0045, outer: #2 }] */
    public final void d(Context context) {
        SharedPreferences sharedPreferencesA;
        final SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        if (this.c) {
            return;
        }
        synchronized (this.a) {
            try {
                if (this.c) {
                    return;
                }
                if (!this.d) {
                    this.d = true;
                }
                this.i = TextUtils.equals(context.getPackageName(), "com.google.android.gms");
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.g = context;
                try {
                    this.f = mpc.a(context).c(this.g.getPackageName(), 128).metaData;
                } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
                }
                try {
                    Context context2 = this.g;
                    Context contextE = b.e(context2);
                    if (contextE != null || context2 == null || (contextE = context2.getApplicationContext()) != null) {
                        context2 = contextE;
                    }
                    if (context2 != null) {
                        zzbd.zzb();
                        sharedPreferencesA = vxe.a(context2);
                    } else {
                        sharedPreferencesA = null;
                    }
                    if (sharedPreferencesA != null) {
                        q0f.c(new zxe(this, sharedPreferencesA));
                    }
                    if (!this.i) {
                        eze ezeVar = rze.d;
                        if (((Long) ezeVar.e()).longValue() > 0 && jxe.a(this.g) >= ((Long) ezeVar.e()).longValue()) {
                            this.j = true;
                            this.c = true;
                            this.d = false;
                            this.b.open();
                            return;
                        }
                    }
                    if (!this.i) {
                        eze ezeVar2 = rze.f;
                        if (((Long) ezeVar2.e()).longValue() > 0 && jxe.b(this.g) >= ((Long) ezeVar2.e()).longValue()) {
                            this.j = true;
                            this.c = true;
                            this.d = false;
                            this.b.open();
                            return;
                        }
                    }
                    Context context3 = this.g;
                    if (!((Boolean) zze.g.e()).booleanValue()) {
                        if (((Boolean) zze.h.e()).booleanValue() && (sharedPreferences = context3.getSharedPreferences(ComConstants.PLATFORM_ADMOB, 0)) != null) {
                            try {
                                if (new JSONObject((String) eye.a(new k3i() {
                                    @Override
                                    public final Object zza() {
                                        return sharedPreferences.getString("app_settings_json", NetResponse.EMPTY_RESPONSE);
                                    }
                                })).optBoolean("local_flags_enabled")) {
                                }
                            } catch (JSONException unused2) {
                            }
                        }
                        if (context2 == null) {
                            this.d = false;
                            this.b.open();
                            return;
                        }
                        zzbd.zzb();
                        this.e = vxe.a(context2);
                        if (!((Boolean) zze.a.e()).booleanValue() && (sharedPreferences2 = this.e) != null) {
                            sharedPreferences2.registerOnSharedPreferenceChangeListener(this);
                        }
                        g(this.e);
                        this.c = true;
                        this.d = false;
                        this.b.open();
                    }
                    context2 = this.g;
                    if (context2 == null) {
                        this.d = false;
                        this.b.open();
                        return;
                    }
                    zzbd.zzb();
                    this.e = vxe.a(context2);
                    if (!((Boolean) zze.a.e()).booleanValue()) {
                        sharedPreferences2.registerOnSharedPreferenceChangeListener(this);
                    }
                    g(this.e);
                    this.c = true;
                    this.d = false;
                    this.b.open();
                } catch (Throwable th) {
                    this.d = false;
                    this.b.open();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean e() {
        return this.j;
    }

    public final boolean f() {
        return this.i;
    }

    public final void g(final SharedPreferences sharedPreferences) {
        if (sharedPreferences != null) {
            try {
                this.h = new JSONObject((String) eye.a(new k3i() {
                    @Override
                    public final Object zza() {
                        return sharedPreferences.getString("flag_configuration", NetResponse.EMPTY_RESPONSE);
                    }
                }));
            } catch (JSONException unused) {
            }
        }
    }

    @Override
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            g(sharedPreferences);
        }
    }
}
