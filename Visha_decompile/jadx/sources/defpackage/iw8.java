package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.cloudmessaging.zzd;
import com.google.android.gms.tasks.a;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class iw8 {
    public static int h;
    public static PendingIntent i;
    public static final Executor j = new Executor() {
        @Override
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    };
    public static final Pattern k = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)");
    public final Context b;
    public final foj c;
    public final ScheduledExecutorService d;
    public Messenger f;
    public zzd g;
    public final SimpleArrayMap a = new SimpleArrayMap();
    public final Messenger e = new Messenger(new aae(this, Looper.getMainLooper()));

    public iw8(Context context) {
        this.b = context;
        this.c = new foj(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.d = scheduledThreadPoolExecutor;
    }

    public static xda e(Bundle bundle) {
        return m(bundle) ? a.e(null) : a.e(bundle);
    }

    public static void g(iw8 iw8Var, Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new egf());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof zzd) {
                        iw8Var.g = (zzd) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        iw8Var.f = (Messenger) parcelableExtra;
                    }
                }
                Intent intent2 = (Intent) message.obj;
                String action = intent2.getAction();
                if (!Objects.equals(action, "com.google.android.c2dm.intent.REGISTRATION")) {
                    if (Log.isLoggable("Rpc", 3)) {
                        Log.d("Rpc", "Unexpected response action: ".concat(String.valueOf(action)));
                        return;
                    }
                    return;
                }
                String stringExtra = intent2.getStringExtra("registration_id");
                if (stringExtra == null) {
                    stringExtra = intent2.getStringExtra("unregistered");
                }
                if (stringExtra != null) {
                    Matcher matcher = k.matcher(stringExtra);
                    if (!matcher.matches()) {
                        if (Log.isLoggable("Rpc", 3)) {
                            Log.d("Rpc", "Unexpected response string: ".concat(stringExtra));
                            return;
                        }
                        return;
                    }
                    String strGroup = matcher.group(1);
                    String strGroup2 = matcher.group(2);
                    if (strGroup != null) {
                        Bundle extras = intent2.getExtras();
                        extras.putString("registration_id", strGroup2);
                        iw8Var.l(strGroup, extras);
                        return;
                    }
                    return;
                }
                String stringExtra2 = intent2.getStringExtra("error");
                if (stringExtra2 == null) {
                    Log.w("Rpc", "Unexpected response, no error or registration id ".concat(String.valueOf(intent2.getExtras())));
                    return;
                }
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Received InstanceID error ".concat(stringExtra2));
                }
                if (!stringExtra2.startsWith("|")) {
                    synchronized (iw8Var.a) {
                        for (int i2 = 0; i2 < iw8Var.a.getSize(); i2++) {
                            try {
                                iw8Var.l((String) iw8Var.a.keyAt(i2), intent2.getExtras());
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return;
                }
                String[] strArrSplit = stringExtra2.split("\\|");
                if (strArrSplit.length <= 2 || !Objects.equals(strArrSplit[1], DataTypes.OBJ_ID)) {
                    Log.w("Rpc", "Unexpected structured response ".concat(stringExtra2));
                    return;
                }
                String str = strArrSplit[2];
                String strSubstring = strArrSplit[3];
                if (strSubstring.startsWith(StringUtils.PROCESS_POSTFIX_DELIMITER)) {
                    strSubstring = strSubstring.substring(1);
                }
                iw8Var.l(str, intent2.putExtra("error", strSubstring).getExtras());
                return;
            }
        }
        Log.w("Rpc", "Dropping invalid message");
    }

    public static synchronized String j() {
        int i2;
        i2 = h;
        h = i2 + 1;
        return Integer.toString(i2);
    }

    public static synchronized void k(Context context, Intent intent) {
        try {
            if (i == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                i = PendingIntent.getBroadcast(context, 0, intent2, e5e.a);
            }
            intent.putExtra("app", i);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static boolean m(Bundle bundle) {
        return bundle != null && bundle.containsKey("google.messenger");
    }

    public xda a() {
        return this.c.a() >= 241100000 ? dnj.b(this.b).d(5, Bundle.EMPTY).i(j, new xh1() {
            @Override
            public final Object a(xda xdaVar) {
                Intent intent = (Intent) ((Bundle) xdaVar.m()).getParcelable("notification_data");
                if (intent != null) {
                    return new CloudMessage(intent);
                }
                return null;
            }
        }) : a.d(new IOException("SERVICE_NOT_AVAILABLE"));
    }

    public xda b(CloudMessage cloudMessage) {
        if (this.c.a() < 233700000) {
            return a.d(new IOException("SERVICE_NOT_AVAILABLE"));
        }
        Bundle bundle = new Bundle();
        bundle.putString("google.message_id", cloudMessage.getMessageId());
        Integer numZza = cloudMessage.zza();
        if (numZza != null) {
            bundle.putInt("google.product_id", numZza.intValue());
        }
        return dnj.b(this.b).c(3, bundle);
    }

    public xda c(final Bundle bundle) {
        if (this.c.a() < 12000000) {
            return this.c.b() != 0 ? i(bundle).k(j, new xh1() {
                @Override
                public final Object a(xda xdaVar) {
                    return this.a.f(bundle, xdaVar);
                }
            }) : a.d(new IOException("MISSING_INSTANCEID_SERVICE"));
        }
        return dnj.b(this.b).d(1, bundle).i(j, new xh1() {
            @Override
            public final Object a(xda xdaVar) throws IOException {
                if (xdaVar.q()) {
                    return (Bundle) xdaVar.m();
                }
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Error making request: ".concat(String.valueOf(xdaVar.l())));
                }
                throw new IOException("SERVICE_NOT_AVAILABLE", xdaVar.l());
            }
        });
    }

    public xda d(boolean z) {
        if (this.c.a() < 241100000) {
            return a.d(new IOException("SERVICE_NOT_AVAILABLE"));
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("proxy_retention", z);
        return dnj.b(this.b).c(4, bundle);
    }

    public final xda f(Bundle bundle, xda xdaVar) {
        return (xdaVar.q() && m((Bundle) xdaVar.m())) ? i(bundle).r(j, new q6a() {
            @Override
            public final xda a(Object obj) {
                return iw8.e((Bundle) obj);
            }
        }) : xdaVar;
    }

    public final void h(String str, ScheduledFuture scheduledFuture, xda xdaVar) {
        synchronized (this.a) {
            this.a.remove(str);
        }
        scheduledFuture.cancel(false);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:29:0x00af  */
    public final xda i(Bundle bundle) {
        final String strJ = j();
        final zda zdaVar = new zda();
        synchronized (this.a) {
            this.a.put(strJ, zdaVar);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.c.b() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        k(this.b, intent);
        intent.putExtra("kid", "|ID|" + strJ + "|");
        if (Log.isLoggable("Rpc", 3)) {
            Log.d("Rpc", "Sending ".concat(String.valueOf(intent.getExtras())));
        }
        intent.putExtra("google.messenger", this.e);
        if (this.f != null || this.g != null) {
            Message messageObtain = Message.obtain();
            messageObtain.obj = intent;
            try {
                Messenger messenger = this.f;
                if (messenger != null) {
                    messenger.send(messageObtain);
                } else {
                    this.g.zzb(messageObtain);
                }
            } catch (RemoteException unused) {
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Messenger failed, fallback to startService");
                }
                if (this.c.b() == 2) {
                    this.b.sendBroadcast(intent);
                } else {
                    this.b.startService(intent);
                }
            }
        } else if (this.c.b() == 2) {
            this.b.sendBroadcast(intent);
        } else {
            this.b.startService(intent);
        }
        final ScheduledFuture<?> scheduledFutureSchedule = this.d.schedule(new Runnable() {
            @Override
            public final void run() {
                if (zdaVar.d(new IOException("TIMEOUT"))) {
                    Log.w("Rpc", "No response");
                }
            }
        }, 30L, TimeUnit.SECONDS);
        zdaVar.a().c(j, new pe7() {
            @Override
            public final void onComplete(xda xdaVar) {
                this.a.h(strJ, scheduledFutureSchedule, xdaVar);
            }
        });
        return zdaVar.a();
    }

    public final void l(String str, Bundle bundle) {
        synchronized (this.a) {
            try {
                zda zdaVar = (zda) this.a.remove(str);
                if (zdaVar != null) {
                    zdaVar.c(bundle);
                    return;
                }
                Log.w("Rpc", "Missing callback for " + str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
