package com.google.android.libraries.places.internal;

import com.google.android.gms.security.ProviderInstaller;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Security;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

public class zzbtl {
    public static final Logger zza = Logger.getLogger(zzbtl.class.getName());
    private static final String[] zzb = {"com.google.android.gms.org.conscrypt.OpenSSLProvider", "org.conscrypt.OpenSSLProvider", "com.android.org.conscrypt.OpenSSLProvider", "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider", "com.google.android.libraries.stitch.sslguard.SslGuardProvider"};
    private static final zzbtl zzc = zzh();
    private final Provider zzd;

    public zzbtl(Provider provider) {
        this.zzd = provider;
    }

    public static zzbtl zze() {
        return zzc;
    }

    public static byte[] zzg(List list) {
        zzbwb zzbwbVar = new zzbwb();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            zzbtm zzbtmVar = (zzbtm) list.get(i10);
            if (zzbtmVar != zzbtm.HTTP_1_0) {
                zzbwbVar.zzm(zzbtmVar.toString().length());
                zzbwbVar.zzs(zzbtmVar.toString());
            }
        }
        return zzbwbVar.zzH(zzbwbVar.zzg());
    }

    private static zzbtl zzh() {
        Method method;
        Provider provider;
        Method method2;
        int i10;
        Provider[] providers = Security.getProviders();
        int length = providers.length;
        int i11 = 0;
        loop0: while (true) {
            method = null;
            if (i11 >= length) {
                zza.logp(Level.WARNING, "io.grpc.okhttp.internal.Platform", "getAndroidSecurityProvider", "Unable to find Conscrypt");
                provider = null;
                break;
            }
            Provider provider2 = providers[i11];
            String[] strArr = zzb;
            int length2 = strArr.length;
            for (int i12 = 0; i12 < 5; i12++) {
                String str = strArr[i12];
                if (str.equals(provider2.getClass().getName())) {
                    zza.logp(Level.FINE, "io.grpc.okhttp.internal.Platform", "getAndroidSecurityProvider", "Found registered provider {0}", str);
                    provider = provider2;
                    break loop0;
                }
            }
            i11++;
        }
        if (provider == null) {
            try {
                Provider provider3 = SSLContext.getDefault().getProvider();
                try {
                    try {
                        SSLContext sSLContext = SSLContext.getInstance("TLS", provider3);
                        sSLContext.init(null, null, null);
                        SSLEngine.class.getMethod("getApplicationProtocol", null).invoke(sSLContext.createSSLEngine(), null);
                        return new zzbti(provider3, SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", null), null);
                    } catch (ClassNotFoundException | NoSuchMethodException unused) {
                        return new zzbtl(provider3);
                    }
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException | KeyManagementException | NoSuchAlgorithmException unused2) {
                    Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
                    Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
                    return new zzbtj(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"), provider3);
                }
            } catch (NoSuchAlgorithmException e10) {
                throw new RuntimeException(e10);
            }
        }
        zzbtf zzbtfVar = new zzbtf(null, "setUseSessionTickets", Boolean.TYPE);
        zzbtf zzbtfVar2 = new zzbtf(null, "setHostname", String.class);
        zzbtf zzbtfVar3 = new zzbtf(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
        zzbtf zzbtfVar4 = new zzbtf(null, "setAlpnProtocols", byte[].class);
        try {
            Class<?> cls3 = Class.forName("android.net.TrafficStats");
            method2 = cls3.getMethod("tagSocket", Socket.class);
            try {
                method = cls3.getMethod("untagSocket", Socket.class);
            } catch (ClassNotFoundException | NoSuchMethodException unused3) {
            }
        } catch (ClassNotFoundException | NoSuchMethodException unused4) {
            method2 = null;
        }
        Method method3 = method2;
        Method method4 = method;
        if (!provider.getName().equals(ProviderInstaller.PROVIDER_NAME) && !provider.getName().equals("Conscrypt") && !provider.getName().equals("Ssl_Guard")) {
            try {
                zzbtl.class.getClassLoader().loadClass("android.net.Network");
            } catch (ClassNotFoundException e11) {
                zza.logp(Level.FINE, "io.grpc.okhttp.internal.Platform", "isAtLeastAndroid5", "Can't find class", (Throwable) e11);
                try {
                    zzbtl.class.getClassLoader().loadClass("android.app.ActivityOptions");
                    i10 = 2;
                } catch (ClassNotFoundException e12) {
                    zza.logp(Level.FINE, "io.grpc.okhttp.internal.Platform", "isAtLeastAndroid41", "Can't find class", (Throwable) e12);
                    i10 = 3;
                }
            }
        }
        i10 = 1;
        return new zzbtg(zzbtfVar, zzbtfVar2, method3, method4, zzbtfVar3, zzbtfVar4, provider, i10);
    }

    public String zza(SSLSocket sSLSocket) {
        return null;
    }

    public int zzc() {
        return 3;
    }

    public final Provider zzf() {
        return this.zzd;
    }

    public void zzd(SSLSocket sSLSocket) {
    }

    public void zzb(SSLSocket sSLSocket, String str, List list) {
    }
}
