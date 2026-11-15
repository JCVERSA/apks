package defpackage;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzu;

public final class zdj extends WebViewClient {
    public final zzu a;

    public zdj(zzu zzuVar) {
        this.a = zzuVar;
    }

    @Override
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        zzu zzuVar = this.a;
        if (zzuVar.zzg != null) {
            try {
                zzuVar.zzg.zzf(goh.d(1, null, null));
            } catch (RemoteException e) {
                int i = zze.zza;
                zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        zzu zzuVar2 = this.a;
        if (zzuVar2.zzg != null) {
            try {
                zzuVar2.zzg.zze(0);
            } catch (RemoteException e2) {
                int i2 = zze.zza;
                zzo.zzl("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zzu zzuVar = this.a;
        if (str.startsWith(zzuVar.zzq())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            if (zzuVar.zzg != null) {
                try {
                    zzuVar.zzg.zzf(goh.d(3, null, null));
                } catch (RemoteException e) {
                    int i = zze.zza;
                    zzo.zzl("#007 Could not call remote method.", e);
                }
            }
            zzu zzuVar2 = this.a;
            if (zzuVar2.zzg != null) {
                try {
                    zzuVar2.zzg.zze(3);
                } catch (RemoteException e2) {
                    int i2 = zze.zza;
                    zzo.zzl("#007 Could not call remote method.", e2);
                }
            }
            this.a.zzV(0);
            return true;
        }
        if (str.startsWith("gmsg://scriptLoadFailed")) {
            zzu zzuVar3 = this.a;
            if (zzuVar3.zzg != null) {
                try {
                    zzuVar3.zzg.zzf(goh.d(1, null, null));
                } catch (RemoteException e3) {
                    int i3 = zze.zza;
                    zzo.zzl("#007 Could not call remote method.", e3);
                }
            }
            zzu zzuVar4 = this.a;
            if (zzuVar4.zzg != null) {
                try {
                    zzuVar4.zzg.zze(0);
                } catch (RemoteException e4) {
                    int i4 = zze.zza;
                    zzo.zzl("#007 Could not call remote method.", e4);
                }
            }
            this.a.zzV(0);
            return true;
        }
        if (str.startsWith("gmsg://adResized")) {
            zzu zzuVar5 = this.a;
            if (zzuVar5.zzg != null) {
                try {
                    zzuVar5.zzg.zzi();
                } catch (RemoteException e5) {
                    int i5 = zze.zza;
                    zzo.zzl("#007 Could not call remote method.", e5);
                }
            }
            zzu zzuVar6 = this.a;
            zzuVar6.zzV(zzuVar6.zzb(str));
            return true;
        }
        if (str.startsWith("gmsg://")) {
            return true;
        }
        zzu zzuVar7 = this.a;
        if (zzuVar7.zzg != null) {
            try {
                zzuVar7.zzg.zzc();
                zzuVar7.zzg.zzh();
            } catch (RemoteException e6) {
                int i6 = zze.zza;
                zzo.zzl("#007 Could not call remote method.", e6);
            }
        }
        zzu zzuVar8 = this.a;
        zzu.zzw(zzuVar8, zzu.zzo(zzuVar8, str));
        return true;
    }
}
