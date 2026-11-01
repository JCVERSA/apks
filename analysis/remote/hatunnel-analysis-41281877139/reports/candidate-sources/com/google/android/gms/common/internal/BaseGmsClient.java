package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.AttributionSource;
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
import app.fast.ssh.ProtectedFastSSH;
import com.android.billingclient.api.zzy$$ExternalSyntheticApiModelOutline0;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.wrappers.AttributionSourceWrapper;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class BaseGmsClient<T extends IInterface> {
    public static final int CONNECT_STATE_CONNECTED = 4;
    public static final int CONNECT_STATE_DISCONNECTED = 1;
    public static final int CONNECT_STATE_DISCONNECTING = 5;
    private volatile String zzA;
    private volatile AttributionSourceWrapper zzB;
    private ConnectionResult zzC;
    private boolean zzD;
    private volatile zzj zzE;
    zzs zza;
    final Handler zzb;
    protected ConnectionProgressReportCallbacks zzc;
    protected AtomicInteger zzd;
    private int zzf;
    private long zzg;
    private long zzh;
    private int zzi;
    private long zzj;
    private volatile String zzk;
    private final Context zzl;
    private final Looper zzm;
    private final GmsClientSupervisor zzn;
    private final GoogleApiAvailabilityLight zzo;
    private final Object zzp;
    private final Object zzq;
    private IGmsServiceBroker zzr;
    private IInterface zzs;
    private final ArrayList zzt;
    private zze zzu;
    private int zzv;
    private final BaseConnectionCallbacks zzw;
    private final BaseOnConnectionFailedListener zzx;
    private final int zzy;
    private final String zzz;
    public static final String DEFAULT_ACCOUNT = ProtectedFastSSH.s("㭸");
    public static final String KEY_PENDING_INTENT = ProtectedFastSSH.s("㭹");
    private static final Feature[] zze = new Feature[0];
    public static final String[] GOOGLE_PLUS_REQUIRED_FEATURES = {ProtectedFastSSH.s("㭺"), ProtectedFastSSH.s("㭻")};

    public interface BaseConnectionCallbacks {
        public static final int CAUSE_DEAD_OBJECT_EXCEPTION = 3;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;

        void onConnected(Bundle bundle);

        void onConnectionSuspended(int i);
    }

    public interface BaseOnConnectionFailedListener {
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    public interface ConnectionProgressReportCallbacks {
        void onReportServiceBinding(ConnectionResult connectionResult);
    }

    protected class LegacyClientCallbackAdapter implements ConnectionProgressReportCallbacks {
        final BaseGmsClient zza;

        public LegacyClientCallbackAdapter(BaseGmsClient baseGmsClient) {
            java.util.Objects.requireNonNull(baseGmsClient);
            this.zza = baseGmsClient;
        }

        @Override
        public final void onReportServiceBinding(ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                BaseGmsClient baseGmsClient = this.zza;
                baseGmsClient.getRemoteService(null, baseGmsClient.getScopes());
            } else {
                BaseGmsClient baseGmsClient2 = this.zza;
                if (baseGmsClient2.zzl() != null) {
                    baseGmsClient2.zzl().onConnectionFailed(connectionResult);
                }
            }
        }
    }

    public interface SignOutCallbacks {
        void onSignOutComplete();
    }

    protected BaseGmsClient(Context context, Handler handler, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailabilityLight googleApiAvailabilityLight, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        this.zzk = null;
        this.zzp = new Object();
        this.zzq = new Object();
        this.zzt = new ArrayList();
        this.zzv = 1;
        this.zzC = null;
        this.zzD = false;
        this.zzE = null;
        this.zzd = new AtomicInteger(0);
        Preconditions.checkNotNull(context, ProtectedFastSSH.s("㭼"));
        this.zzl = context;
        Preconditions.checkNotNull(handler, ProtectedFastSSH.s("㭽"));
        this.zzb = handler;
        this.zzm = handler.getLooper();
        Preconditions.checkNotNull(gmsClientSupervisor, ProtectedFastSSH.s("㭾"));
        this.zzn = gmsClientSupervisor;
        Preconditions.checkNotNull(googleApiAvailabilityLight, ProtectedFastSSH.s("㭿"));
        this.zzo = googleApiAvailabilityLight;
        this.zzy = i;
        this.zzw = baseConnectionCallbacks;
        this.zzx = baseOnConnectionFailedListener;
        this.zzz = null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    protected BaseGmsClient(Context context, Looper looper, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        GmsClientSupervisor gmsClientSupervisor = GmsClientSupervisor.getInstance(context);
        GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.getInstance();
        Preconditions.checkNotNull(baseConnectionCallbacks);
        Preconditions.checkNotNull(baseOnConnectionFailedListener);
        this(context, looper, gmsClientSupervisor, googleApiAvailabilityLight, i, baseConnectionCallbacks, baseOnConnectionFailedListener, str);
    }

    protected BaseGmsClient(Context context, Looper looper, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailabilityLight googleApiAvailabilityLight, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        this.zzk = null;
        this.zzp = new Object();
        this.zzq = new Object();
        this.zzt = new ArrayList();
        this.zzv = 1;
        this.zzC = null;
        this.zzD = false;
        this.zzE = null;
        this.zzd = new AtomicInteger(0);
        Preconditions.checkNotNull(context, ProtectedFastSSH.s("㭼"));
        this.zzl = context;
        Preconditions.checkNotNull(looper, ProtectedFastSSH.s("㮀"));
        this.zzm = looper;
        Preconditions.checkNotNull(gmsClientSupervisor, ProtectedFastSSH.s("㭾"));
        this.zzn = gmsClientSupervisor;
        Preconditions.checkNotNull(googleApiAvailabilityLight, ProtectedFastSSH.s("㭿"));
        this.zzo = googleApiAvailabilityLight;
        this.zzb = new zzb(this, looper);
        this.zzy = i;
        this.zzw = baseConnectionCallbacks;
        this.zzx = baseOnConnectionFailedListener;
        this.zzz = str;
    }

    private final void zzp(int i, IInterface iInterface) {
        zzs zzsVar;
        Preconditions.checkArgument((i == 4) == (iInterface != null));
        synchronized (this.zzp) {
            this.zzv = i;
            this.zzs = iInterface;
            Bundle bundle = null;
            if (i == 1) {
                zze zzeVar = this.zzu;
                if (zzeVar != null) {
                    GmsClientSupervisor gmsClientSupervisor = this.zzn;
                    String strZza = this.zza.zza();
                    Preconditions.checkNotNull(strZza);
                    String str = strZza;
                    gmsClientSupervisor.zzb(strZza, this.zza.zzb(), 4225, zzeVar, zza(), this.zza.zzc());
                    this.zzu = null;
                }
            } else if (i == 2 || i == 3) {
                String strS = ProtectedFastSSH.s("㮁");
                String strS2 = ProtectedFastSSH.s("㮂");
                String strS3 = ProtectedFastSSH.s("㮃");
                String strS4 = ProtectedFastSSH.s("㮄");
                zze zzeVar2 = this.zzu;
                if (zzeVar2 != null && (zzsVar = this.zza) != null) {
                    ProtectedFastSSH.s("㮅");
                    String strZza2 = zzsVar.zza();
                    String strZzb = zzsVar.zzb();
                    StringBuilder sb = new StringBuilder(String.valueOf(strZza2).length() + 70 + String.valueOf(strZzb).length());
                    sb.append(strS);
                    sb.append(strZza2);
                    sb.append(strS2);
                    sb.append(strZzb);
                    sb.toString();
                    GmsClientSupervisor gmsClientSupervisor2 = this.zzn;
                    String strZza3 = this.zza.zza();
                    Preconditions.checkNotNull(strZza3);
                    String str2 = strZza3;
                    gmsClientSupervisor2.zzb(strZza3, this.zza.zzb(), 4225, zzeVar2, zza(), this.zza.zzc());
                    this.zzd.incrementAndGet();
                }
                zze zzeVar3 = new zze(this, this.zzd.get());
                this.zzu = zzeVar3;
                zzs zzsVar2 = (this.zzv != 3 || getLocalStartServiceAction() == null) ? new zzs(getStartServicePackage(), getStartServiceAction(), false, 4225, getUseDynamicLookup()) : new zzs(getContext().getPackageName(), getLocalStartServiceAction(), true, 4225, false);
                this.zza = zzsVar2;
                if (zzsVar2.zzc() && getMinApkVersion() < 17895000) {
                    String strZza4 = this.zza.zza();
                    String.valueOf(strZza4);
                    throw new IllegalStateException(strS3.concat(String.valueOf(strZza4)));
                }
                GmsClientSupervisor gmsClientSupervisor3 = this.zzn;
                String strZza5 = this.zza.zza();
                Preconditions.checkNotNull(strZza5);
                String str3 = strZza5;
                ConnectionResult connectionResultZza = gmsClientSupervisor3.zza(new zzn(strZza5, this.zza.zzb(), 4225, this.zza.zzc()), zzeVar3, zza(), getBindServiceExecutor());
                if (!connectionResultZza.isSuccess()) {
                    ProtectedFastSSH.s("㮅");
                    String strZza6 = this.zza.zza();
                    String strZzb2 = this.zza.zzb();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(strZza6).length() + 34 + String.valueOf(strZzb2).length());
                    sb2.append(strS4);
                    sb2.append(strZza6);
                    sb2.append(strS2);
                    sb2.append(strZzb2);
                    sb2.toString();
                    int errorCode = connectionResultZza.getErrorCode() == -1 ? 16 : connectionResultZza.getErrorCode();
                    if (connectionResultZza.getResolution() != null) {
                        bundle = new Bundle();
                        bundle.putParcelable(ProtectedFastSSH.s("㭹"), connectionResultZza.getResolution());
                    }
                    zzb(errorCode, bundle, this.zzd.get());
                }
            } else if (i == 4) {
                Preconditions.checkNotNull(iInterface);
                onConnectedLocked(iInterface);
            }
        }
    }

    public void checkAvailabilityAndConnect() {
        int iIsGooglePlayServicesAvailable = this.zzo.isGooglePlayServicesAvailable(this.zzl, getMinApkVersion());
        if (iIsGooglePlayServicesAvailable == 0) {
            connect(new LegacyClientCallbackAdapter(this));
        } else {
            zzp(1, null);
            triggerNotAvailable(new LegacyClientCallbackAdapter(this), iIsGooglePlayServicesAvailable, null);
        }
    }

    protected final void checkConnected() {
        if (!isConnected()) {
            throw new IllegalStateException(ProtectedFastSSH.s("㮆"));
        }
    }

    public void connect(ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        Preconditions.checkNotNull(connectionProgressReportCallbacks, ProtectedFastSSH.s("㮇"));
        this.zzc = connectionProgressReportCallbacks;
        zzp(2, null);
    }

    protected abstract T createServiceInterface(IBinder iBinder);

    public void disconnect() {
        this.zzd.incrementAndGet();
        ArrayList arrayList = this.zzt;
        synchronized (arrayList) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((zzc) arrayList.get(i)).zzf();
            }
            arrayList.clear();
        }
        synchronized (this.zzq) {
            this.zzr = null;
        }
        zzp(1, null);
    }

    public void disconnect(String str) {
        this.zzk = str;
        disconnect();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        IInterface iInterface;
        IGmsServiceBroker iGmsServiceBroker;
        synchronized (this.zzp) {
            i = this.zzv;
            iInterface = this.zzs;
        }
        synchronized (this.zzq) {
            iGmsServiceBroker = this.zzr;
        }
        printWriter.append((CharSequence) str).append((CharSequence) ProtectedFastSSH.s("㮈"));
        if (i == 1) {
            printWriter.print(ProtectedFastSSH.s("㮎"));
        } else if (i == 2) {
            printWriter.print(ProtectedFastSSH.s("㮍"));
        } else if (i == 3) {
            printWriter.print(ProtectedFastSSH.s("㮌"));
        } else if (i == 4) {
            printWriter.print(ProtectedFastSSH.s("㮋"));
        } else if (i != 5) {
            printWriter.print(ProtectedFastSSH.s("㮉"));
        } else {
            printWriter.print(ProtectedFastSSH.s("㮊"));
        }
        printWriter.append((CharSequence) ProtectedFastSSH.s("㮏"));
        if (iInterface == null) {
            printWriter.append((CharSequence) ProtectedFastSSH.s("㮐"));
        } else {
            printWriter.append((CharSequence) getServiceDescriptor()).append((CharSequence) ProtectedFastSSH.s("㮑")).append((CharSequence) Integer.toHexString(System.identityHashCode(iInterface.asBinder())));
        }
        printWriter.append((CharSequence) ProtectedFastSSH.s("㮒"));
        if (iGmsServiceBroker == null) {
            printWriter.println(ProtectedFastSSH.s("㮐"));
        } else {
            printWriter.append((CharSequence) ProtectedFastSSH.s("㮓")).println(Integer.toHexString(System.identityHashCode(iGmsServiceBroker.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(ProtectedFastSSH.s("㮔"), Locale.US);
        long j = this.zzh;
        String strS = ProtectedFastSSH.s("㮕");
        if (j > 0) {
            PrintWriter printWriterAppend = printWriter.append((CharSequence) str).append((CharSequence) ProtectedFastSSH.s("㮖"));
            long j2 = this.zzh;
            String str2 = simpleDateFormat.format(new Date(j2));
            StringBuilder sb = new StringBuilder(String.valueOf(j2).length() + 1 + String.valueOf(str2).length());
            sb.append(j2);
            sb.append(strS);
            sb.append(str2);
            printWriterAppend.println(sb.toString());
        }
        if (this.zzg > r9) {
            printWriter.append((CharSequence) str).append((CharSequence) ProtectedFastSSH.s("㮗"));
            int i2 = this.zzf;
            if (i2 == 1) {
                printWriter.append((CharSequence) ProtectedFastSSH.s("㮚"));
            } else if (i2 == 2) {
                printWriter.append((CharSequence) ProtectedFastSSH.s("㮙"));
            } else if (i2 != 3) {
                printWriter.append((CharSequence) String.valueOf(i2));
            } else {
                printWriter.append((CharSequence) ProtectedFastSSH.s("㮘"));
            }
            PrintWriter printWriterAppend2 = printWriter.append((CharSequence) ProtectedFastSSH.s("㮛"));
            long j3 = this.zzg;
            String str3 = simpleDateFormat.format(new Date(j3));
            StringBuilder sb2 = new StringBuilder(String.valueOf(j3).length() + 1 + String.valueOf(str3).length());
            sb2.append(j3);
            sb2.append(strS);
            sb2.append(str3);
            printWriterAppend2.println(sb2.toString());
        }
        if (this.zzj > 0) {
            printWriter.append((CharSequence) str).append((CharSequence) ProtectedFastSSH.s("㮜")).append((CharSequence) CommonStatusCodes.getStatusCodeString(this.zzi));
            PrintWriter printWriterAppend3 = printWriter.append((CharSequence) ProtectedFastSSH.s("㮝"));
            long j4 = this.zzj;
            String str4 = simpleDateFormat.format(new Date(j4));
            StringBuilder sb3 = new StringBuilder(String.valueOf(j4).length() + 1 + String.valueOf(str4).length());
            sb3.append(j4);
            sb3.append(strS);
            sb3.append(str4);
            printWriterAppend3.println(sb3.toString());
        }
    }

    protected boolean enableLocalFallback() {
        return false;
    }

    public Account getAccount() {
        return null;
    }

    public Feature[] getApiFeatures() {
        return zze;
    }

    public AttributionSourceWrapper getAttributionSourceWrapper() {
        return this.zzB;
    }

    public final Feature[] getAvailableFeatures() {
        zzj zzjVar = this.zzE;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.zzb;
    }

    protected Executor getBindServiceExecutor() {
        return null;
    }

    public Bundle getConnectionHint() {
        return null;
    }

    public final Context getContext() {
        return this.zzl;
    }

    public String getEndpointPackageName() {
        zzs zzsVar;
        if (!isConnected() || (zzsVar = this.zza) == null) {
            throw new RuntimeException(ProtectedFastSSH.s("㮞"));
        }
        return zzsVar.zzb();
    }

    public int getGCoreServiceId() {
        return this.zzy;
    }

    protected Bundle getGetServiceRequestExtraArgs() {
        return new Bundle();
    }

    public String getLastDisconnectMessage() {
        return this.zzk;
    }

    protected String getLocalStartServiceAction() {
        return null;
    }

    public final Looper getLooper() {
        return this.zzm;
    }

    public int getMinApkVersion() {
        return GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    public void getRemoteService(IAccountAccessor iAccountAccessor, Set<Scope> set) {
        AttributionSource attributionSource;
        Bundle getServiceRequestExtraArgs = getGetServiceRequestExtraArgs();
        String strM = (Build.VERSION.SDK_INT < 31 || this.zzB == null || (attributionSource = this.zzB.getAttributionSource()) == null || zzy$$ExternalSyntheticApiModelOutline0.m(attributionSource) == null) ? this.zzA : zzy$$ExternalSyntheticApiModelOutline0.m(attributionSource);
        String str = strM;
        int i = this.zzy;
        int i2 = GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        Scope[] scopeArr = GetServiceRequest.zza;
        Bundle bundle = new Bundle();
        Feature[] featureArr = GetServiceRequest.zzb;
        GetServiceRequest getServiceRequest = new GetServiceRequest(6, i, i2, null, null, scopeArr, bundle, null, featureArr, featureArr, true, 0, false, str);
        getServiceRequest.zzf = this.zzl.getPackageName();
        getServiceRequest.zzi = getServiceRequestExtraArgs;
        if (set != null) {
            getServiceRequest.zzh = (Scope[]) set.toArray(new Scope[0]);
        }
        if (requiresSignIn()) {
            Account account = getAccount();
            if (account == null) {
                account = new Account(ProtectedFastSSH.s("㭸"), ProtectedFastSSH.s("㮟"));
            }
            getServiceRequest.zzj = account;
            if (iAccountAccessor != null) {
                getServiceRequest.zzg = iAccountAccessor.asBinder();
            }
        } else if (requiresAccount()) {
            getServiceRequest.zzj = getAccount();
        }
        getServiceRequest.zzk = zze;
        getServiceRequest.zzl = getApiFeatures();
        if (usesClientTelemetry()) {
            getServiceRequest.zzo = true;
        }
        try {
            synchronized (this.zzq) {
                IGmsServiceBroker iGmsServiceBroker = this.zzr;
                if (iGmsServiceBroker != null) {
                    iGmsServiceBroker.getService(new zzd(this, this.zzd.get()), getServiceRequest);
                } else {
                    ProtectedFastSSH.s("㮅");
                    ProtectedFastSSH.s("㮠");
                }
            }
        } catch (DeadObjectException e) {
            ProtectedFastSSH.s("㮅");
            ProtectedFastSSH.s("㮡");
            triggerConnectionSuspended(3);
        } catch (RemoteException e2) {
            ProtectedFastSSH.s("㮅");
            ProtectedFastSSH.s("㮡");
            onPostInitHandler(8, null, null, this.zzd.get());
        } catch (SecurityException e3) {
            throw e3;
        } catch (RuntimeException e4) {
            ProtectedFastSSH.s("㮅");
            ProtectedFastSSH.s("㮡");
            onPostInitHandler(8, null, null, this.zzd.get());
        }
    }

    protected Set<Scope> getScopes() {
        return Collections.EMPTY_SET;
    }

    public final T getService() throws DeadObjectException {
        T t;
        synchronized (this.zzp) {
            if (this.zzv == 5) {
                throw new DeadObjectException();
            }
            checkConnected();
            t = (T) this.zzs;
            Preconditions.checkNotNull(t, ProtectedFastSSH.s("㮢"));
        }
        return t;
    }

    public IBinder getServiceBrokerBinder() {
        synchronized (this.zzq) {
            IGmsServiceBroker iGmsServiceBroker = this.zzr;
            if (iGmsServiceBroker == null) {
                return null;
            }
            return iGmsServiceBroker.asBinder();
        }
    }

    protected abstract String getServiceDescriptor();

    public Intent getSignInIntent() {
        throw new UnsupportedOperationException(ProtectedFastSSH.s("㮣"));
    }

    protected abstract String getStartServiceAction();

    protected String getStartServicePackage() {
        return ProtectedFastSSH.s("㮤");
    }

    public ConnectionTelemetryConfiguration getTelemetryConfiguration() {
        zzj zzjVar = this.zzE;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.zzd;
    }

    protected boolean getUseDynamicLookup() {
        return getMinApkVersion() >= 211700000;
    }

    public boolean hasConnectionInfo() {
        return this.zzE != null;
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.zzp) {
            z = this.zzv == 4;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.zzp) {
            int i = this.zzv;
            z = true;
            if (i != 2 && i != 3) {
                z = false;
            }
        }
        return z;
    }

    protected void onConnectedLocked(T t) {
        this.zzh = System.currentTimeMillis();
    }

    protected void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzi = connectionResult.getErrorCode();
        this.zzj = System.currentTimeMillis();
    }

    protected void onConnectionSuspended(int i) {
        this.zzf = i;
        this.zzg = System.currentTimeMillis();
    }

    protected void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        zzf zzfVar = new zzf(this, i, iBinder, bundle);
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, zzfVar));
    }

    public void onUserSignOut(SignOutCallbacks signOutCallbacks) {
        signOutCallbacks.onSignOutComplete();
    }

    public boolean providesSignIn() {
        return false;
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

    public void setAttributionSourceWrapper(AttributionSourceWrapper attributionSourceWrapper) {
        this.zzB = attributionSourceWrapper;
    }

    public void setAttributionTag(String str) {
        this.zzA = str;
    }

    public void triggerConnectionSuspended(int i) {
        int i2 = this.zzd.get();
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(6, i2, i));
    }

    protected void triggerNotAvailable(ConnectionProgressReportCallbacks connectionProgressReportCallbacks, int i, PendingIntent pendingIntent) {
        Preconditions.checkNotNull(connectionProgressReportCallbacks, ProtectedFastSSH.s("㮇"));
        this.zzc = connectionProgressReportCallbacks;
        int i2 = this.zzd.get();
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(3, i2, i, pendingIntent));
    }

    public boolean usesClientTelemetry() {
        return false;
    }

    protected final String zza() {
        String str = this.zzz;
        return str == null ? this.zzl.getClass().getName() : str;
    }

    protected final void zzb(int i, Bundle bundle, int i2) {
        zzg zzgVar = new zzg(this, i, bundle);
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, zzgVar));
    }

    final void zzc(zzj zzjVar) {
        this.zzE = zzjVar;
        if (usesClientTelemetry()) {
            ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zzjVar.zzd;
            RootTelemetryConfigManager.getInstance().zza(connectionTelemetryConfiguration == null ? null : connectionTelemetryConfiguration.zza());
        }
    }

    final void zzd(int i, IInterface iInterface) {
        zzp(i, null);
    }

    final boolean zze(int i, int i2, IInterface iInterface) {
        synchronized (this.zzp) {
            if (this.zzv != i) {
                return false;
            }
            zzp(i2, iInterface);
            return true;
        }
    }

    final void zzf(int i) {
        int i2;
        int i3;
        synchronized (this.zzp) {
            i2 = this.zzv;
        }
        if (i2 == 3) {
            this.zzD = true;
            i3 = 5;
        } else {
            i3 = 4;
        }
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(i3, this.zzd.get(), 16));
    }

    final boolean zzg() {
        if (this.zzD || TextUtils.isEmpty(getServiceDescriptor()) || TextUtils.isEmpty(getLocalStartServiceAction())) {
            return false;
        }
        try {
            Class.forName(getServiceDescriptor());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    final Object zzh() {
        return this.zzq;
    }

    final void zzi(IGmsServiceBroker iGmsServiceBroker) {
        this.zzr = iGmsServiceBroker;
    }

    final ArrayList zzj() {
        return this.zzt;
    }

    final BaseConnectionCallbacks zzk() {
        return this.zzw;
    }

    final BaseOnConnectionFailedListener zzl() {
        return this.zzx;
    }

    final ConnectionResult zzm() {
        return this.zzC;
    }

    final void zzn(ConnectionResult connectionResult) {
        this.zzC = connectionResult;
    }

    final boolean zzo() {
        return this.zzD;
    }
}
