package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import defpackage.aj4;
import defpackage.hgf;
import defpackage.la1;
import defpackage.ol;
import defpackage.sbj;
import defpackage.ti4;
import defpackage.tjj;
import defpackage.uv8;
import defpackage.wd8;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class a {
    public static final int CONNECT_STATE_CONNECTED = 4;
    public static final int CONNECT_STATE_DISCONNECTED = 1;
    public static final int CONNECT_STATE_DISCONNECTING = 5;

    @NonNull
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final Feature[] E = new Feature[0];

    @NonNull
    public static final String[] GOOGLE_PLUS_REQUIRED_FEATURES = {"service_esmobile", "service_googleme"};

    @NonNull
    public static final String KEY_PENDING_INTENT = "pendingIntent";
    public ConnectionResult A;
    public boolean B;
    public volatile zzj C;
    public AtomicInteger D;
    public int b;
    public long c;
    public long d;
    public int e;
    public long f;
    public volatile String g;
    public tjj h;
    public final Context i;
    public final Looper j;
    public final ti4 k;
    public final aj4 l;
    public final Handler m;
    public final Object n;
    public final Object o;
    public IGmsServiceBroker p;
    public c q;
    public IInterface r;
    public final ArrayList s;
    public f t;
    public int u;
    public final InterfaceC0093a v;
    public final b w;
    public final int x;
    public final String y;
    public volatile String z;

    public interface InterfaceC0093a {
        void onConnected(Bundle bundle);

        void onConnectionSuspended(int i);
    }

    public interface b {
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    public interface c {
        void a(ConnectionResult connectionResult);
    }

    public class d implements c {
        public final a a;

        public d(a aVar) {
            Objects.requireNonNull(aVar);
            this.a = aVar;
        }

        @Override
        public final void a(ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                a aVar = this.a;
                aVar.getRemoteService(null, aVar.i());
            } else {
                a aVar2 = this.a;
                if (aVar2.D() != null) {
                    aVar2.D().onConnectionFailed(connectionResult);
                }
            }
        }
    }

    public interface e {
        void a();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a(Context context, Looper looper, int i, InterfaceC0093a interfaceC0093a, b bVar, String str) {
        ti4 ti4VarA = ti4.a(context);
        aj4 aj4VarG = aj4.g();
        wd8.l(interfaceC0093a);
        wd8.l(bVar);
        this(context, looper, ti4VarA, aj4VarG, i, interfaceC0093a, bVar, str);
    }

    public final void A(IGmsServiceBroker iGmsServiceBroker) {
        this.p = iGmsServiceBroker;
    }

    public final ArrayList B() {
        return this.s;
    }

    public final InterfaceC0093a C() {
        return this.v;
    }

    public final b D() {
        return this.w;
    }

    public final ConnectionResult E() {
        return this.A;
    }

    public final void F(ConnectionResult connectionResult) {
        this.A = connectionResult;
    }

    public final boolean G() {
        return this.B;
    }

    public final void H(int i, IInterface iInterface) {
        tjj tjjVar;
        wd8.a((i == 4) == (iInterface != null));
        synchronized (this.n) {
            try {
                this.u = i;
                this.r = iInterface;
                Bundle bundle = null;
                if (i == 1) {
                    f fVar = this.t;
                    if (fVar != null) {
                        ti4 ti4Var = this.k;
                        String strA = this.h.a();
                        wd8.l(strA);
                        ti4Var.d(strA, this.h.b(), 4225, fVar, s(), this.h.c());
                        this.t = null;
                    }
                } else if (i == 2 || i == 3) {
                    f fVar2 = this.t;
                    if (fVar2 != null && (tjjVar = this.h) != null) {
                        String strA2 = tjjVar.a();
                        String strB = tjjVar.b();
                        StringBuilder sb = new StringBuilder(String.valueOf(strA2).length() + 70 + String.valueOf(strB).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(strA2);
                        sb.append(" on ");
                        sb.append(strB);
                        Log.e("GmsClient", sb.toString());
                        ti4 ti4Var2 = this.k;
                        String strA3 = this.h.a();
                        wd8.l(strA3);
                        ti4Var2.d(strA3, this.h.b(), 4225, fVar2, s(), this.h.c());
                        this.D.incrementAndGet();
                    }
                    f fVar3 = new f(this, this.D.get());
                    this.t = fVar3;
                    tjj tjjVar2 = (this.u != 3 || h() == null) ? new tjj(l(), k(), false, 4225, m()) : new tjj(getContext().getPackageName(), h(), true, 4225, false);
                    this.h = tjjVar2;
                    if (tjjVar2.c() && getMinApkVersion() < 17895000) {
                        throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf(this.h.a())));
                    }
                    ti4 ti4Var3 = this.k;
                    String strA4 = this.h.a();
                    wd8.l(strA4);
                    ConnectionResult connectionResultC = ti4Var3.c(new sbj(strA4, this.h.b(), 4225, this.h.c()), fVar3, s(), f());
                    if (!connectionResultC.isSuccess()) {
                        String strA5 = this.h.a();
                        String strB2 = this.h.b();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(strA5).length() + 34 + String.valueOf(strB2).length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(strA5);
                        sb2.append(" on ");
                        sb2.append(strB2);
                        Log.w("GmsClient", sb2.toString());
                        int errorCode = connectionResultC.getErrorCode() == -1 ? 16 : connectionResultC.getErrorCode();
                        if (connectionResultC.getResolution() != null) {
                            bundle = new Bundle();
                            bundle.putParcelable(KEY_PENDING_INTENT, connectionResultC.getResolution());
                        }
                        t(errorCode, bundle, this.D.get());
                    }
                } else if (i == 4) {
                    wd8.l(iInterface);
                    n(iInterface);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public void checkAvailabilityAndConnect() {
        int i = this.l.i(this.i, getMinApkVersion());
        if (i == 0) {
            connect(new d(this));
        } else {
            H(1, null);
            r(new d(this), i, null);
        }
    }

    public void connect(@NonNull c cVar) {
        wd8.m(cVar, "Connection progress callbacks cannot be null.");
        this.q = cVar;
        H(2, null);
    }

    public abstract IInterface d(IBinder iBinder);

    public void disconnect() {
        this.D.incrementAndGet();
        ArrayList arrayList = this.s;
        synchronized (arrayList) {
            try {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((hgf) arrayList.get(i)).d();
                }
                arrayList.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.o) {
            this.p = null;
        }
        H(1, null);
    }

    public void dump(@NonNull String str, @NonNull FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @NonNull String[] strArr) {
        int i;
        IInterface iInterface;
        IGmsServiceBroker iGmsServiceBroker;
        synchronized (this.n) {
            i = this.u;
            iInterface = this.r;
        }
        synchronized (this.o) {
            iGmsServiceBroker = this.p;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        if (i == 1) {
            printWriter.print("DISCONNECTED");
        } else if (i == 2) {
            printWriter.print("REMOTE_CONNECTING");
        } else if (i == 3) {
            printWriter.print("LOCAL_CONNECTING");
        } else if (i == 4) {
            printWriter.print("CONNECTED");
        } else if (i != 5) {
            printWriter.print("UNKNOWN");
        } else {
            printWriter.print("DISCONNECTING");
        }
        printWriter.append(" mService=");
        if (iInterface == null) {
            printWriter.append("null");
        } else {
            printWriter.append((CharSequence) j()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(iInterface.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (iGmsServiceBroker == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(iGmsServiceBroker.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.d > 0) {
            PrintWriter printWriterAppend = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j = this.d;
            String str2 = simpleDateFormat.format(new Date(j));
            StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 1 + String.valueOf(str2).length());
            sb.append(j);
            sb.append(" ");
            sb.append(str2);
            printWriterAppend.println(sb.toString());
        }
        if (this.c > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i2 = this.b;
            if (i2 == 1) {
                printWriter.append("CAUSE_SERVICE_DISCONNECTED");
            } else if (i2 == 2) {
                printWriter.append("CAUSE_NETWORK_LOST");
            } else if (i2 != 3) {
                printWriter.append((CharSequence) String.valueOf(i2));
            } else {
                printWriter.append("CAUSE_DEAD_OBJECT_EXCEPTION");
            }
            PrintWriter printWriterAppend2 = printWriter.append(" lastSuspendedTime=");
            long j2 = this.c;
            String str3 = simpleDateFormat.format(new Date(j2));
            StringBuilder sb2 = new StringBuilder(String.valueOf(j2).length() + 1 + String.valueOf(str3).length());
            sb2.append(j2);
            sb2.append(" ");
            sb2.append(str3);
            printWriterAppend2.println(sb2.toString());
        }
        if (this.f > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) la1.a(this.e));
            PrintWriter printWriterAppend3 = printWriter.append(" lastFailedTime=");
            long j3 = this.f;
            String str4 = simpleDateFormat.format(new Date(j3));
            StringBuilder sb3 = new StringBuilder(String.valueOf(j3).length() + 1 + String.valueOf(str4).length());
            sb3.append(j3);
            sb3.append(" ");
            sb3.append(str4);
            printWriterAppend3.println(sb3.toString());
        }
    }

    public boolean e() {
        return false;
    }

    public Executor f() {
        return null;
    }

    public Bundle g() {
        return new Bundle();
    }

    @Nullable
    public Account getAccount() {
        return null;
    }

    @NonNull
    public Feature[] getApiFeatures() {
        return E;
    }

    @Nullable
    public ol getAttributionSourceWrapper() {
        return null;
    }

    @Nullable
    public final Feature[] getAvailableFeatures() {
        zzj zzjVar = this.C;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.zzb;
    }

    @Nullable
    public Bundle getConnectionHint() {
        return null;
    }

    @NonNull
    public final Context getContext() {
        return this.i;
    }

    @NonNull
    public String getEndpointPackageName() {
        tjj tjjVar;
        if (!isConnected() || (tjjVar = this.h) == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return tjjVar.b();
    }

    public int getGCoreServiceId() {
        return this.x;
    }

    @Nullable
    public String getLastDisconnectMessage() {
        return this.g;
    }

    @NonNull
    public final Looper getLooper() {
        return this.j;
    }

    public int getMinApkVersion() {
        return aj4.a;
    }

    @WorkerThread
    public void getRemoteService(@Nullable IAccountAccessor iAccountAccessor, @NonNull Set<Scope> set) {
        Bundle bundleG = g();
        String str = Build.VERSION.SDK_INT < 31 ? this.z : this.z;
        int i = this.x;
        int i2 = aj4.a;
        Scope[] scopeArr = GetServiceRequest.zza;
        Bundle bundle = new Bundle();
        Feature[] featureArr = GetServiceRequest.zzb;
        GetServiceRequest getServiceRequest = new GetServiceRequest(6, i, i2, null, null, scopeArr, bundle, null, featureArr, featureArr, true, 0, false, str);
        getServiceRequest.zzf = this.i.getPackageName();
        getServiceRequest.zzi = bundleG;
        if (set != null) {
            getServiceRequest.zzh = (Scope[]) set.toArray(new Scope[0]);
        }
        if (requiresSignIn()) {
            Account account = getAccount();
            if (account == null) {
                account = new Account(DEFAULT_ACCOUNT, "com.google");
            }
            getServiceRequest.zzj = account;
            if (iAccountAccessor != null) {
                getServiceRequest.zzg = iAccountAccessor.asBinder();
            }
        } else if (requiresAccount()) {
            getServiceRequest.zzj = getAccount();
        }
        getServiceRequest.zzk = E;
        getServiceRequest.zzl = getApiFeatures();
        if (usesClientTelemetry()) {
            getServiceRequest.zzo = true;
        }
        try {
            try {
                synchronized (this.o) {
                    try {
                        IGmsServiceBroker iGmsServiceBroker = this.p;
                        if (iGmsServiceBroker != null) {
                            iGmsServiceBroker.getService(new zzd(this, this.D.get()), getServiceRequest);
                        } else {
                            Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (RemoteException | RuntimeException e2) {
                Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
                q(8, null, null, this.D.get());
            }
        } catch (DeadObjectException e3) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e3);
            triggerConnectionSuspended(3);
        } catch (SecurityException e4) {
            throw e4;
        }
    }

    @NonNull
    public final IInterface getService() throws DeadObjectException {
        IInterface iInterface;
        synchronized (this.n) {
            try {
                if (this.u == 5) {
                    throw new DeadObjectException();
                }
                c();
                iInterface = this.r;
                wd8.m(iInterface, "Client is connected but service is null");
            } catch (Throwable th) {
                throw th;
            }
        }
        return iInterface;
    }

    @Nullable
    public IBinder getServiceBrokerBinder() {
        synchronized (this.o) {
            try {
                IGmsServiceBroker iGmsServiceBroker = this.p;
                if (iGmsServiceBroker == null) {
                    return null;
                }
                return iGmsServiceBroker.asBinder();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NonNull
    public Intent getSignInIntent() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    @Nullable
    public ConnectionTelemetryConfiguration getTelemetryConfiguration() {
        zzj zzjVar = this.C;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.zzd;
    }

    public String h() {
        return null;
    }

    public boolean hasConnectionInfo() {
        return this.C != null;
    }

    public Set i() {
        return Collections.emptySet();
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.n) {
            z = this.u == 4;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.n) {
            int i = this.u;
            z = true;
            if (i != 2 && i != 3) {
                z = false;
            }
        }
        return z;
    }

    public abstract String j();

    public abstract String k();

    public String l() {
        return "com.google.android.gms";
    }

    public boolean m() {
        return getMinApkVersion() >= 211700000;
    }

    public void n(IInterface iInterface) {
        this.d = System.currentTimeMillis();
    }

    public void o(ConnectionResult connectionResult) {
        this.e = connectionResult.getErrorCode();
        this.f = System.currentTimeMillis();
    }

    public void onUserSignOut(@NonNull e eVar) {
        eVar.a();
    }

    public void p(int i) {
        this.b = i;
        this.c = System.currentTimeMillis();
    }

    public boolean providesSignIn() {
        return false;
    }

    public void q(int i, IBinder iBinder, Bundle bundle, int i2) {
        g gVar = new g(this, i, iBinder, bundle);
        Handler handler = this.m;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, gVar));
    }

    public void r(c cVar, int i, PendingIntent pendingIntent) {
        wd8.m(cVar, "Connection progress callbacks cannot be null.");
        this.q = cVar;
        int i2 = this.D.get();
        Handler handler = this.m;
        handler.sendMessage(handler.obtainMessage(3, i2, i, pendingIntent));
    }

    public boolean requiresAccount() {
        return false;
    }

    public boolean requiresGooglePlayServices() {
        return true;
    }

    public boolean requiresSignIn() {
        return false;
    }

    public final String s() {
        String str = this.y;
        return str == null ? this.i.getClass().getName() : str;
    }

    public void setAttributionSourceWrapper(@NonNull ol olVar) {
    }

    public void setAttributionTag(@NonNull String str) {
        this.z = str;
    }

    public final void t(int i, Bundle bundle, int i2) {
        h hVar = new h(this, i, bundle);
        Handler handler = this.m;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, hVar));
    }

    public void triggerConnectionSuspended(int i) {
        int i2 = this.D.get();
        Handler handler = this.m;
        handler.sendMessage(handler.obtainMessage(6, i2, i));
    }

    public final void u(zzj zzjVar) {
        this.C = zzjVar;
        if (usesClientTelemetry()) {
            ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zzjVar.zzd;
            uv8.b().c(connectionTelemetryConfiguration == null ? null : connectionTelemetryConfiguration.zza());
        }
    }

    public boolean usesClientTelemetry() {
        return false;
    }

    public final void v(int i, IInterface iInterface) {
        H(i, null);
    }

    public final boolean w(int i, int i2, IInterface iInterface) {
        synchronized (this.n) {
            try {
                if (this.u != i) {
                    return false;
                }
                H(i2, iInterface);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void x(int i) {
        int i2;
        int i3;
        synchronized (this.n) {
            i2 = this.u;
        }
        if (i2 == 3) {
            this.B = true;
            i3 = 5;
        } else {
            i3 = 4;
        }
        Handler handler = this.m;
        handler.sendMessage(handler.obtainMessage(i3, this.D.get(), 16));
    }

    public final boolean y() {
        if (this.B || TextUtils.isEmpty(j()) || TextUtils.isEmpty(h())) {
            return false;
        }
        try {
            Class.forName(j());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public final Object z() {
        return this.o;
    }

    public a(Context context, Looper looper, ti4 ti4Var, aj4 aj4Var, int i, InterfaceC0093a interfaceC0093a, b bVar, String str) {
        this.g = null;
        this.n = new Object();
        this.o = new Object();
        this.s = new ArrayList();
        this.u = 1;
        this.A = null;
        this.B = false;
        this.C = null;
        this.D = new AtomicInteger(0);
        wd8.m(context, "Context must not be null");
        this.i = context;
        wd8.m(looper, "Looper must not be null");
        this.j = looper;
        wd8.m(ti4Var, "Supervisor must not be null");
        this.k = ti4Var;
        wd8.m(aj4Var, "API availability must not be null");
        this.l = aj4Var;
        this.m = new com.google.android.gms.common.internal.e(this, looper);
        this.x = i;
        this.v = interfaceC0093a;
        this.w = bVar;
        this.y = str;
    }

    public void disconnect(@NonNull String str) {
        this.g = str;
        disconnect();
    }
}
