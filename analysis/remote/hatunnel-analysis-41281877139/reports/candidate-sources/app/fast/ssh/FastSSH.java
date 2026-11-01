package app.fast.ssh;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.preference.PreferenceManager;
import app.fast.ssh.core.VpnStatus;
import app.fast.ssh.core.connection.SSLTunnelConnection;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.firebase.FirebaseApp;
import com.onesignal.Continue;
import com.onesignal.OneSignal;
import com.onesignal.debug.LogLevel;
import java.lang.ref.WeakReference;
import java.security.Security;
import java.util.Arrays;
import org.conscrypt.Conscrypt;
import org.lsposed.hiddenapibypass.HiddenApiBypass;

public class FastSSH extends Application {
    private static final String ONESIGNAL_APP_ID = ProtectedFastSSH.s("⺆");
    private static AppOpenAdManager appOpenAdManager;
    private static WeakReference<Context> weakReference;
    private BillingManager billingManager;

    class AnonymousClass1 implements BillingManager.SessionControl {
        AnonymousClass1() {
        }

        @Override
        public boolean isConnected() {
            return VpnStatus.isConnected();
        }

        @Override
        public void sendSubToken(String str) {
            try {
                if (VpnStatus.vpnConnectionInstance != null) {
                    VpnStatus.vpnConnectionInstance.sendSubToken(str);
                }
            } catch (Exception unused) {
            }
        }
    }

    private void applyTheme() {
        int i = Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(this).getString(ProtectedFastSSH.s("\u2e75"), ProtectedFastSSH.s("\u2e76")));
        if (i == 0) {
            AppCompatDelegate.setDefaultNightMode(-1);
        } else if (i == 1) {
            AppCompatDelegate.setDefaultNightMode(1);
        } else {
            if (i != 2) {
                return;
            }
            AppCompatDelegate.setDefaultNightMode(2);
        }
    }

    private String deviceId() {
        return Settings.Secure.getString(getContentResolver(), ProtectedFastSSH.s("\u2e77"));
    }

    public static Context getContext() {
        return weakReference.get();
    }

    static void lambda$onCreate$0(InitializationStatus initializationStatus) {
    }

    private void setTLSVersion() {
        int i = Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(this).getString(ProtectedFastSSH.s("\u2e78"), ProtectedFastSSH.s("\u2e79")));
        String strS = ProtectedFastSSH.s("\u2e7a");
        String strS2 = ProtectedFastSSH.s("\u2e7b");
        String strS3 = ProtectedFastSSH.s("\u2e7c");
        String strS4 = ProtectedFastSSH.s("\u2e7d");
        if (i == 0) {
            SSLTunnelConnection.TLS_VERSIONS.clear();
            SSLTunnelConnection.TLS_VERSIONS.add(ProtectedFastSSH.s("\u2e7e"));
            SSLTunnelConnection.TLS_VERSIONS.add(strS4);
            SSLTunnelConnection.TLS_VERSIONS.add(strS3);
            SSLTunnelConnection.TLS_VERSIONS.add(strS2);
            SSLTunnelConnection.TLS_VERSIONS.add(strS);
            return;
        }
        if (i == 1) {
            SSLTunnelConnection.TLS_VERSIONS.clear();
            SSLTunnelConnection.TLS_VERSIONS.add(strS4);
            return;
        }
        if (i == 2) {
            SSLTunnelConnection.TLS_VERSIONS.clear();
            SSLTunnelConnection.TLS_VERSIONS.add(strS3);
        } else if (i == 3) {
            SSLTunnelConnection.TLS_VERSIONS.clear();
            SSLTunnelConnection.TLS_VERSIONS.add(strS2);
        } else {
            if (i != 4) {
                return;
            }
            SSLTunnelConnection.TLS_VERSIONS.clear();
            SSLTunnelConnection.TLS_VERSIONS.add(strS);
        }
    }

    public BillingManager getBillingManager() {
        return this.billingManager;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        FirebaseApp.initializeApp(this);
        BillingManager billingManager = new BillingManager(this, new HttpTokenExchange(ProtectedFastSSH.s("\u2e7f")), new PrefsSubscriptionStore(this), deviceId());
        this.billingManager = billingManager;
        billingManager.setSessionControl(new AnonymousClass1());
        this.billingManager.start();
        try {
            Security.insertProviderAt(Conscrypt.newProvider(), 1);
            Conscrypt.setUseEngineSocketByDefault(true);
        } catch (Throwable th) {
            ProtectedFastSSH.s("⺀");
            ProtectedFastSSH.s("⺁");
        }
        if (Build.VERSION.SDK_INT >= 28) {
            HiddenApiBypass.addHiddenApiExemptions(ProtectedFastSSH.s("⺂"));
        }
        MobileAds.initialize(this, new FastSSH$$ExternalSyntheticLambda0());
        MobileAds.setRequestConfiguration(new RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(ProtectedFastSSH.s("⺅"), ProtectedFastSSH.s("⺃"), ProtectedFastSSH.s("⺄"))).build());
        weakReference = new WeakReference<>(getApplicationContext());
        OneSignal.getDebug().setLogLevel(LogLevel.VERBOSE);
        OneSignal.initWithContext(this, ProtectedFastSSH.s("⺆"));
        OneSignal.getNotifications().requestPermission(false, Continue.none());
        appOpenAdManager = new AppOpenAdManager(this);
        applyTheme();
        setTLSVersion();
    }
}
