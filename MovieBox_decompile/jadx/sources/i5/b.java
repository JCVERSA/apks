package i5;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.List;

class b extends i5.a {

    private int f61852a = 0;

    private final Context f61853b;

    private pa.a f61854c;

    private ServiceConnection f61855d;

    private final class ServiceConnectionC0757b implements ServiceConnection {

        private final c f61856a;

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            j5.a.a("InstallReferrerClient", "Install Referrer service connected.");
            b.this.f61854c = pa.a.AbstractBinderC0853a.Y0(iBinder);
            b.this.f61852a = 2;
            this.f61856a.onInstallReferrerSetupFinished(0);
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            j5.a.b("InstallReferrerClient", "Install Referrer service disconnected.");
            b.this.f61854c = null;
            b.this.f61852a = 0;
            this.f61856a.onInstallReferrerServiceDisconnected();
        }

        private ServiceConnectionC0757b(c cVar) {
            if (cVar == null) {
                throw new RuntimeException("Please specify a listener to know when setup is done.");
            }
            this.f61856a = cVar;
        }
    }

    public b(Context context) {
        this.f61853b = context.getApplicationContext();
    }

    private boolean g() {
        try {
            return this.f61853b.getPackageManager().getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    @Override
    public void a() {
        this.f61852a = 3;
        if (this.f61855d != null) {
            j5.a.a("InstallReferrerClient", "Unbinding from service.");
            this.f61853b.unbindService(this.f61855d);
            this.f61855d = null;
        }
        this.f61854c = null;
    }

    @Override
    public d b() throws RemoteException {
        if (!h()) {
            throw new IllegalStateException("Service not connected. Please start a connection before using the service.");
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", this.f61853b.getPackageName());
        try {
            return new d(this.f61854c.w(bundle));
        } catch (RemoteException e10) {
            j5.a.b("InstallReferrerClient", "RemoteException getting install referrer information");
            this.f61852a = 0;
            throw e10;
        }
    }

    @Override
    public void d(c cVar) {
        ServiceInfo serviceInfo;
        if (h()) {
            j5.a.a("InstallReferrerClient", "Service connection is valid. No need to re-initialize.");
            cVar.onInstallReferrerSetupFinished(0);
            return;
        }
        int i10 = this.f61852a;
        if (i10 == 1) {
            j5.a.b("InstallReferrerClient", "Client is already in the process of connecting to the service.");
            cVar.onInstallReferrerSetupFinished(3);
            return;
        }
        if (i10 == 3) {
            j5.a.b("InstallReferrerClient", "Client was already closed and can't be reused. Please create another instance.");
            cVar.onInstallReferrerSetupFinished(3);
            return;
        }
        j5.a.a("InstallReferrerClient", "Starting install referrer service setup.");
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        List<ResolveInfo> listQueryIntentServices = this.f61853b.getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty() || (serviceInfo = listQueryIntentServices.get(0).serviceInfo) == null) {
            this.f61852a = 0;
            j5.a.a("InstallReferrerClient", "Install Referrer service unavailable on device.");
            cVar.onInstallReferrerSetupFinished(2);
            return;
        }
        String str = serviceInfo.packageName;
        String str2 = serviceInfo.name;
        if (!"com.android.vending".equals(str) || str2 == null || !g()) {
            j5.a.b("InstallReferrerClient", "Play Store missing or incompatible. Version 8.3.73 or later required.");
            this.f61852a = 0;
            cVar.onInstallReferrerSetupFinished(2);
            return;
        }
        Intent intent2 = new Intent(intent);
        ServiceConnectionC0757b serviceConnectionC0757b = new ServiceConnectionC0757b(cVar);
        this.f61855d = serviceConnectionC0757b;
        try {
            if (this.f61853b.bindService(intent2, serviceConnectionC0757b, 1)) {
                j5.a.a("InstallReferrerClient", "Service was bonded successfully.");
                return;
            }
            j5.a.b("InstallReferrerClient", "Connection to service is blocked.");
            this.f61852a = 0;
            cVar.onInstallReferrerSetupFinished(1);
        } catch (SecurityException unused) {
            j5.a.b("InstallReferrerClient", "No permission to connect to service.");
            this.f61852a = 0;
            cVar.onInstallReferrerSetupFinished(4);
        }
    }

    public boolean h() {
        return (this.f61852a != 2 || this.f61854c == null || this.f61855d == null) ? false : true;
    }
}
