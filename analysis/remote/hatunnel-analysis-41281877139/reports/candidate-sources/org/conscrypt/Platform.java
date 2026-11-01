package org.conscrypt;

import android.os.Binder;
import android.os.Build;
import android.os.SystemClock;
import android.system.Os;
import app.fast.ssh.ProtectedFastSSH;
import dalvik.system.BlockGuard;
import dalvik.system.CloseGuard;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketImpl;
import java.security.AlgorithmParameters;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SNIMatcher;
import javax.net.ssl.SNIServerName;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import org.conscrypt.ct.CertificateTransparency;
import org.conscrypt.metrics.CertificateTransparencyVerificationReason;
import org.conscrypt.metrics.NoopStatsLog;
import org.conscrypt.metrics.Source;
import org.conscrypt.metrics.StatsLog;
import org.conscrypt.metrics.StatsLogImpl;

public final class Platform {
    private static boolean DEPRECATED_TLS_V1 = true;
    private static boolean ENABLED_TLS_V1 = false;
    private static boolean FILTERED_TLS_V1 = true;
    private static final String TAG = ProtectedFastSSH.s("\ue0c1");
    private static Method m_getCurveName;

    static {
        NativeCrypto.setTlsV1DeprecationStatus(true, false);
        try {
            Method declaredMethod = ECParameterSpec.class.getDeclaredMethod(ProtectedFastSSH.s("\ue0c2"), null);
            m_getCurveName = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (Exception unused) {
        }
    }

    private Platform() {
    }

    public static void blockGuardOnNetwork() {
        BlockGuard.getThreadPolicy().onNetwork();
    }

    public static void checkClientTrusted(X509TrustManager x509TrustManager, X509Certificate[] x509CertificateArr, String str, AbstractConscryptSocket abstractConscryptSocket) throws CertificateException {
        if (checkTrusted(ProtectedFastSSH.s("\ue0c3"), x509TrustManager, x509CertificateArr, str, Socket.class, abstractConscryptSocket)) {
            return;
        }
        if (checkTrusted(ProtectedFastSSH.s("\ue0c3"), x509TrustManager, x509CertificateArr, str, String.class, abstractConscryptSocket.getHandshakeSession().getPeerHost())) {
            return;
        }
        x509TrustManager.checkClientTrusted(x509CertificateArr, str);
    }

    public static void checkClientTrusted(X509TrustManager x509TrustManager, X509Certificate[] x509CertificateArr, String str, ConscryptEngine conscryptEngine) throws CertificateException {
        if (checkTrusted(ProtectedFastSSH.s("\ue0c3"), x509TrustManager, x509CertificateArr, str, SSLEngine.class, conscryptEngine)) {
            return;
        }
        if (checkTrusted(ProtectedFastSSH.s("\ue0c3"), x509TrustManager, x509CertificateArr, str, String.class, conscryptEngine.getHandshakeSession().getPeerHost())) {
            return;
        }
        x509TrustManager.checkClientTrusted(x509CertificateArr, str);
    }

    public static void checkServerTrusted(X509TrustManager x509TrustManager, X509Certificate[] x509CertificateArr, String str, AbstractConscryptSocket abstractConscryptSocket) throws CertificateException {
        if (checkTrusted(ProtectedFastSSH.s("\ue0c4"), x509TrustManager, x509CertificateArr, str, Socket.class, abstractConscryptSocket)) {
            return;
        }
        if (checkTrusted(ProtectedFastSSH.s("\ue0c4"), x509TrustManager, x509CertificateArr, str, String.class, abstractConscryptSocket.getHandshakeSession().getPeerHost())) {
            return;
        }
        x509TrustManager.checkServerTrusted(x509CertificateArr, str);
    }

    public static void checkServerTrusted(X509TrustManager x509TrustManager, X509Certificate[] x509CertificateArr, String str, ConscryptEngine conscryptEngine) throws CertificateException {
        if (checkTrusted(ProtectedFastSSH.s("\ue0c4"), x509TrustManager, x509CertificateArr, str, SSLEngine.class, conscryptEngine)) {
            return;
        }
        if (checkTrusted(ProtectedFastSSH.s("\ue0c4"), x509TrustManager, x509CertificateArr, str, String.class, conscryptEngine.getHandshakeSession().getPeerHost())) {
            return;
        }
        x509TrustManager.checkServerTrusted(x509CertificateArr, str);
    }

    private static boolean checkTrusted(String str, X509TrustManager x509TrustManager, X509Certificate[] x509CertificateArr, String str2, Class<?> cls, Object obj) throws CertificateException {
        try {
            x509TrustManager.getClass().getMethod(str, X509Certificate[].class, String.class, cls).invoke(x509TrustManager, x509CertificateArr, str2, obj);
            return true;
        } catch (IllegalAccessException | NoSuchMethodException unused) {
            return false;
        } catch (InvocationTargetException e) {
            if (e.getCause() instanceof CertificateException) {
                throw ((CertificateException) e.getCause());
            }
            throw new RuntimeException(e.getCause());
        }
    }

    public static void closeGuardClose(Object obj) {
        ((CloseGuard) obj).close();
    }

    public static CloseGuard closeGuardGet() {
        return CloseGuard.get();
    }

    public static void closeGuardOpen(Object obj, String str) {
        ((CloseGuard) obj).open(str);
    }

    public static void closeGuardWarnIfOpen(Object obj) {
        ((CloseGuard) obj).warnIfOpen();
    }

    static ConscryptEngineSocket createEngineSocket(String str, int i, InetAddress inetAddress, int i2, SSLParametersImpl sSLParametersImpl) throws IOException {
        return Build.VERSION.SDK_INT >= 24 ? new Java8EngineSocket(str, i, inetAddress, i2, sSLParametersImpl) : new ConscryptEngineSocket(str, i, inetAddress, i2, sSLParametersImpl);
    }

    static ConscryptEngineSocket createEngineSocket(String str, int i, SSLParametersImpl sSLParametersImpl) throws IOException {
        return Build.VERSION.SDK_INT >= 24 ? new Java8EngineSocket(str, i, sSLParametersImpl) : new ConscryptEngineSocket(str, i, sSLParametersImpl);
    }

    static ConscryptEngineSocket createEngineSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2, SSLParametersImpl sSLParametersImpl) throws IOException {
        return Build.VERSION.SDK_INT >= 24 ? new Java8EngineSocket(inetAddress, i, inetAddress2, i2, sSLParametersImpl) : new ConscryptEngineSocket(inetAddress, i, inetAddress2, i2, sSLParametersImpl);
    }

    static ConscryptEngineSocket createEngineSocket(InetAddress inetAddress, int i, SSLParametersImpl sSLParametersImpl) throws IOException {
        return Build.VERSION.SDK_INT >= 24 ? new Java8EngineSocket(inetAddress, i, sSLParametersImpl) : new ConscryptEngineSocket(inetAddress, i, sSLParametersImpl);
    }

    static ConscryptEngineSocket createEngineSocket(Socket socket, String str, int i, boolean z, SSLParametersImpl sSLParametersImpl) throws IOException {
        return Build.VERSION.SDK_INT >= 24 ? new Java8EngineSocket(socket, str, i, z, sSLParametersImpl) : new ConscryptEngineSocket(socket, str, i, z, sSLParametersImpl);
    }

    static ConscryptEngineSocket createEngineSocket(SSLParametersImpl sSLParametersImpl) throws IOException {
        return Build.VERSION.SDK_INT >= 24 ? new Java8EngineSocket(sSLParametersImpl) : new ConscryptEngineSocket(sSLParametersImpl);
    }

    static ConscryptFileDescriptorSocket createFileDescriptorSocket(String str, int i, InetAddress inetAddress, int i2, SSLParametersImpl sSLParametersImpl) throws IOException {
        return Build.VERSION.SDK_INT >= 24 ? new Java8FileDescriptorSocket(str, i, inetAddress, i2, sSLParametersImpl) : new ConscryptFileDescriptorSocket(str, i, inetAddress, i2, sSLParametersImpl);
    }

    static ConscryptFileDescriptorSocket createFileDescriptorSocket(String str, int i, SSLParametersImpl sSLParametersImpl) throws IOException {
        return Build.VERSION.SDK_INT >= 24 ? new Java8FileDescriptorSocket(str, i, sSLParametersImpl) : new ConscryptFileDescriptorSocket(str, i, sSLParametersImpl);
    }

    static ConscryptFileDescriptorSocket createFileDescriptorSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2, SSLParametersImpl sSLParametersImpl) throws IOException {
        return Build.VERSION.SDK_INT >= 24 ? new Java8FileDescriptorSocket(inetAddress, i, inetAddress2, i2, sSLParametersImpl) : new ConscryptFileDescriptorSocket(inetAddress, i, inetAddress2, i2, sSLParametersImpl);
    }

    static ConscryptFileDescriptorSocket createFileDescriptorSocket(InetAddress inetAddress, int i, SSLParametersImpl sSLParametersImpl) throws IOException {
        return Build.VERSION.SDK_INT >= 24 ? new Java8FileDescriptorSocket(inetAddress, i, sSLParametersImpl) : new ConscryptFileDescriptorSocket(inetAddress, i, sSLParametersImpl);
    }

    static ConscryptFileDescriptorSocket createFileDescriptorSocket(Socket socket, String str, int i, boolean z, SSLParametersImpl sSLParametersImpl) throws IOException {
        return Build.VERSION.SDK_INT >= 24 ? new Java8FileDescriptorSocket(socket, str, i, z, sSLParametersImpl) : new ConscryptFileDescriptorSocket(socket, str, i, z, sSLParametersImpl);
    }

    static ConscryptFileDescriptorSocket createFileDescriptorSocket(SSLParametersImpl sSLParametersImpl) throws IOException {
        return Build.VERSION.SDK_INT >= 24 ? new Java8FileDescriptorSocket(sSLParametersImpl) : new ConscryptFileDescriptorSocket(sSLParametersImpl);
    }

    public static GCMParameters fromGCMParameterSpec(AlgorithmParameterSpec algorithmParameterSpec) {
        Class<?> cls;
        String strS = ProtectedFastSSH.s("\ue0c5");
        try {
            cls = Class.forName(ProtectedFastSSH.s("\ue0c6"));
        } catch (ClassNotFoundException unused) {
            cls = null;
        }
        if (cls == null || !cls.isAssignableFrom(algorithmParameterSpec.getClass())) {
            return null;
        }
        try {
            return new GCMParameters(((Integer) cls.getMethod(ProtectedFastSSH.s("\ue0c7"), null).invoke(algorithmParameterSpec, null)).intValue(), (byte[]) cls.getMethod(ProtectedFastSSH.s("\ue0c8"), null).invoke(algorithmParameterSpec, null));
        } catch (IllegalAccessException e) {
            throw new RuntimeException(strS, e);
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException(strS, e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(ProtectedFastSSH.s("\ue0c9"), e3.getTargetException());
        }
    }

    static AlgorithmParameterSpec fromGCMParameters(AlgorithmParameters algorithmParameters) {
        Class<?> cls;
        try {
            cls = Class.forName(ProtectedFastSSH.s("\ue0c6"));
        } catch (ClassNotFoundException unused) {
            cls = null;
        }
        if (cls != null) {
            try {
                return algorithmParameters.getParameterSpec(cls);
            } catch (InvalidParameterSpecException unused2) {
            }
        }
        return null;
    }

    private static Class<?> getClass(String... strArr) {
        for (int i = 0; i < strArr.length; i++) {
            try {
                return Class.forName(strArr[i]);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String getCurveName(ECParameterSpec eCParameterSpec) {
        Method method = m_getCurveName;
        if (method == null) {
            return null;
        }
        try {
            return (String) method.invoke(eCParameterSpec, null);
        } catch (Exception unused) {
            return null;
        }
    }

    static KeyStore getDefaultCertKeyStore() throws KeyStoreException {
        KeyStore keyStore = KeyStore.getInstance(ProtectedFastSSH.s("\ue0ca"));
        try {
            keyStore.load(null, null);
            return keyStore;
        } catch (IOException e) {
            throw new KeyStoreException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new KeyStoreException(e2);
        } catch (CertificateException e3) {
            throw new KeyStoreException(e3);
        }
    }

    public static ConscryptHostnameVerifier getDefaultHostnameVerifier() {
        return OkHostnameVerifier.strictInstance();
    }

    public static String getDefaultProviderName() {
        return ProtectedFastSSH.s("\ue0c1");
    }

    public static String getEndpointIdentificationAlgorithm(SSLParameters sSLParameters) {
        return null;
    }

    public static FileDescriptor getFileDescriptor(Socket socket) {
        try {
            Field declaredField = Socket.class.getDeclaredField(ProtectedFastSSH.s("\ue0cb"));
            declaredField.setAccessible(true);
            Object obj = declaredField.get(socket);
            Field declaredField2 = SocketImpl.class.getDeclaredField(ProtectedFastSSH.s("\ue0cc"));
            declaredField2.setAccessible(true);
            return (FileDescriptor) declaredField2.get(obj);
        } catch (Exception e) {
            throw new RuntimeException(ProtectedFastSSH.s("\ue0cd"), e);
        }
    }

    public static FileDescriptor getFileDescriptorFromSSLSocket(AbstractConscryptSocket abstractConscryptSocket) {
        return getFileDescriptor(abstractConscryptSocket);
    }

    public static String getHostStringFromInetSocketAddress(InetSocketAddress inetSocketAddress) {
        if (Build.VERSION.SDK_INT > 23) {
            try {
                return (String) InetSocketAddress.class.getDeclaredMethod(ProtectedFastSSH.s("\ue0ce"), null).invoke(inetSocketAddress, null);
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    static long getMillisSinceBoot() {
        return SystemClock.elapsedRealtime();
    }

    public static String getOriginalHostNameFromInetAddress(InetAddress inetAddress) {
        if (Build.VERSION.SDK_INT > 27) {
            try {
                Method declaredMethod = InetAddress.class.getDeclaredMethod(ProtectedFastSSH.s("\ue0cf"), null);
                declaredMethod.setAccessible(true);
                Method declaredMethod2 = Class.forName(ProtectedFastSSH.s("\ue0d0")).getDeclaredMethod(ProtectedFastSSH.s("\ue0d1"), null);
                declaredMethod2.setAccessible(true);
                String str = (String) declaredMethod2.invoke(declaredMethod.invoke(inetAddress, null), null);
                return str == null ? inetAddress.getHostAddress() : str;
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException unused) {
            } catch (InvocationTargetException e) {
                throw new RuntimeException(ProtectedFastSSH.s("\ue0d2"), e);
            }
        }
        return inetAddress.getHostAddress();
    }

    public static void getSSLParameters(SSLParameters sSLParameters, SSLParametersImpl sSLParametersImpl) {
        try {
            getSSLParametersFromImpl(sSLParameters, sSLParametersImpl);
        } catch (IllegalAccessException | NoSuchMethodException unused) {
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e.getCause());
        }
    }

    public static void getSSLParameters(SSLParameters sSLParameters, SSLParametersImpl sSLParametersImpl, AbstractConscryptSocket abstractConscryptSocket) {
        try {
            getSSLParametersFromImpl(sSLParameters, sSLParametersImpl);
            if (Build.VERSION.SDK_INT >= 24) {
                setParametersSniHostname(sSLParameters, sSLParametersImpl, abstractConscryptSocket);
            }
        } catch (IllegalAccessException | NoSuchMethodException unused) {
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e.getCause());
        }
    }

    public static void getSSLParameters(SSLParameters sSLParameters, SSLParametersImpl sSLParametersImpl, ConscryptEngine conscryptEngine) {
        try {
            getSSLParametersFromImpl(sSLParameters, sSLParametersImpl);
            if (Build.VERSION.SDK_INT >= 24) {
                setParametersSniHostname(sSLParameters, sSLParametersImpl, conscryptEngine);
            }
        } catch (IllegalAccessException | NoSuchMethodException unused) {
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e.getCause());
        }
    }

    private static void getSSLParametersFromImpl(SSLParameters sSLParameters, SSLParametersImpl sSLParametersImpl) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        sSLParameters.getClass().getMethod(ProtectedFastSSH.s("\ue0d3"), String.class).invoke(sSLParameters, sSLParametersImpl.getEndpointIdentificationAlgorithm());
        sSLParameters.getClass().getMethod(ProtectedFastSSH.s("\ue0d4"), Boolean.TYPE).invoke(sSLParameters, Boolean.valueOf(sSLParametersImpl.getUseCipherSuitesOrder()));
        try {
            sSLParameters.getClass().getMethod(ProtectedFastSSH.s("\ue0d5"), String[].class).invoke(sSLParameters, sSLParametersImpl.getNamedGroups());
        } catch (IllegalArgumentException | NoSuchMethodException unused) {
        }
    }

    private static String getSniHostnameFromParams(SSLParameters sSLParameters) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        List list = (List) sSLParameters.getClass().getMethod(ProtectedFastSSH.s("\ue0d6"), null).invoke(sSLParameters, null);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                SNIServerName sNIServerNameM2549m = Platform$$ExternalSyntheticApiModelOutline0.m2549m(it.next());
                if (Platform$$ExternalSyntheticApiModelOutline0.m(sNIServerNameM2549m) == 0) {
                    return Platform$$ExternalSyntheticApiModelOutline0.m(Platform$$ExternalSyntheticApiModelOutline0.m2547m((Object) sNIServerNameM2549m));
                }
            }
        }
        return null;
    }

    public static StatsLog getStatsLog() {
        return Build.VERSION.SDK_INT >= 30 ? StatsLogImpl.getInstance() : NoopStatsLog.getInstance();
    }

    public static Source getStatsSource() {
        return Source.SOURCE_GMS;
    }

    public static int[] getUids() {
        return new int[]{Os.getuid(), Binder.getCallingUid()};
    }

    public static boolean isCTVerificationRequired(String str) {
        boolean z = false;
        if (str == null) {
            return false;
        }
        String property = Security.getProperty(ProtectedFastSSH.s("\ue0d7"));
        if (property != null && Boolean.parseBoolean(property)) {
            List<String> listAsList = Arrays.asList(str.split(ProtectedFastSSH.s("\ue0d8")));
            Collections.reverse(listAsList);
            String strS = ProtectedFastSSH.s("\ue0d9");
            for (String str2 : listAsList) {
                String property2 = Security.getProperty(strS + ProtectedFastSSH.s("\ue0da"));
                if (property2 != null) {
                    z = Boolean.parseBoolean(property2);
                }
                strS = strS + ProtectedFastSSH.s("\ue0db") + str2;
            }
            String property3 = Security.getProperty(strS);
            if (property3 != null) {
                return Boolean.parseBoolean(property3);
            }
        }
        return z;
    }

    public static boolean isJavaxCertificateSupported() {
        return true;
    }

    public static boolean isPakeSupported() {
        return false;
    }

    public static boolean isSdkGreater(int i) {
        return Build.VERSION.SDK_INT > i;
    }

    public static synchronized boolean isTlsV1Deprecated() {
        return DEPRECATED_TLS_V1;
    }

    public static synchronized boolean isTlsV1Filtered() {
        return FILTERED_TLS_V1;
    }

    public static synchronized boolean isTlsV1Supported() {
        return ENABLED_TLS_V1;
    }

    private static void logStackTraceSnippet(String str, Throwable th) {
        ProtectedFastSSH.s("\ue0c1");
        StackTraceElement[] stackTrace = th.getStackTrace();
        for (int i = 0; i < 2 && i < stackTrace.length; i++) {
            String str2 = ProtectedFastSSH.s("\ue0dc") + stackTrace[i].toString();
        }
    }

    static CertBlocklist newDefaultBlocklist() {
        return null;
    }

    static ConscryptCertStore newDefaultCertStore() {
        return null;
    }

    static CertificateTransparency newDefaultCertificateTransparency() {
        return null;
    }

    public static String oidToAlgorithmName(String str) {
        try {
            try {
                Method declaredMethod = Class.forName(ProtectedFastSSH.s("\ue0dd")).getDeclaredMethod(ProtectedFastSSH.s("\ue0de"), String.class);
                declaredMethod.setAccessible(true);
                return (String) declaredMethod.invoke(null, str);
            } catch (InvocationTargetException e) {
                Throwable cause = e.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException(e);
            } catch (Exception unused) {
                return str;
            }
        } catch (InvocationTargetException e2) {
            Throwable cause2 = e2.getCause();
            if (cause2 instanceof RuntimeException) {
                throw ((RuntimeException) cause2);
            }
            if (cause2 instanceof Error) {
                throw ((Error) cause2);
            }
            throw new RuntimeException(e2);
        } catch (Exception unused2) {
            Class<?> cls = Class.forName(ProtectedFastSSH.s("\ue0df"));
            Method declaredMethod2 = cls.getDeclaredMethod(ProtectedFastSSH.s("\ue0e0"), String.class);
            declaredMethod2.setAccessible(true);
            Method declaredMethod3 = cls.getDeclaredMethod(ProtectedFastSSH.s("\ue0e1"), null);
            declaredMethod3.setAccessible(true);
            return (String) declaredMethod3.invoke(declaredMethod2.invoke(null, str), null);
        }
    }

    static boolean provideTrustManagerByDefault() {
        return false;
    }

    public static CertificateTransparencyVerificationReason reasonCTVerificationRequired(String str) {
        return CertificateTransparencyVerificationReason.UNKNOWN;
    }

    static boolean serverNamePermitted(SSLParametersImpl sSLParametersImpl, String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            return serverNamePermittedInternal(sSLParametersImpl, str);
        }
        return true;
    }

    private static boolean serverNamePermittedInternal(SSLParametersImpl sSLParametersImpl, String str) {
        Collection<SNIMatcher> sNIMatchers = sSLParametersImpl.getSNIMatchers();
        if (sNIMatchers == null || sNIMatchers.isEmpty()) {
            return true;
        }
        Iterator<SNIMatcher> it = sNIMatchers.iterator();
        while (it.hasNext()) {
            if (Platform$$ExternalSyntheticApiModelOutline0.m(Platform$$ExternalSyntheticApiModelOutline0.m2548m((Object) it.next()), Platform$$ExternalSyntheticApiModelOutline0.m(str))) {
                return true;
            }
        }
        return false;
    }

    public static void setCurveName(ECParameterSpec eCParameterSpec, String str) {
        try {
            eCParameterSpec.getClass().getDeclaredMethod(ProtectedFastSSH.s("\ue0e2"), String.class).invoke(eCParameterSpec, str);
        } catch (Exception unused) {
        }
    }

    public static void setEndpointIdentificationAlgorithm(SSLParameters sSLParameters, String str) {
    }

    private static void setParametersSniHostname(SSLParameters sSLParameters, SSLParametersImpl sSLParametersImpl, AbstractConscryptSocket abstractConscryptSocket) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        if (sSLParametersImpl.getUseSni() && AddressUtils.isValidSniHostname(abstractConscryptSocket.getHostname())) {
            Method method = sSLParameters.getClass().getMethod(ProtectedFastSSH.s("\ue0e3"), List.class);
            Platform$$ExternalSyntheticApiModelOutline0.m2552m();
            method.invoke(sSLParameters, Collections.singletonList(Platform$$ExternalSyntheticApiModelOutline0.m(abstractConscryptSocket.getHostname())));
        }
    }

    private static void setParametersSniHostname(SSLParameters sSLParameters, SSLParametersImpl sSLParametersImpl, ConscryptEngine conscryptEngine) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        if (sSLParametersImpl.getUseSni() && AddressUtils.isValidSniHostname(conscryptEngine.getHostname())) {
            Method method = sSLParameters.getClass().getMethod(ProtectedFastSSH.s("\ue0e3"), List.class);
            Platform$$ExternalSyntheticApiModelOutline0.m2552m();
            method.invoke(sSLParameters, Collections.singletonList(Platform$$ExternalSyntheticApiModelOutline0.m(conscryptEngine.getHostname())));
        }
    }

    public static void setSSLParameters(SSLParameters sSLParameters, SSLParametersImpl sSLParametersImpl) {
        try {
            setSSLParametersOnImpl(sSLParameters, sSLParametersImpl);
        } catch (IllegalAccessException | NoSuchMethodException unused) {
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e.getCause());
        }
    }

    public static void setSSLParameters(SSLParameters sSLParameters, SSLParametersImpl sSLParametersImpl, AbstractConscryptSocket abstractConscryptSocket) {
        String sniHostnameFromParams;
        try {
            setSSLParametersOnImpl(sSLParameters, sSLParametersImpl);
            if (Build.VERSION.SDK_INT < 24 || (sniHostnameFromParams = getSniHostnameFromParams(sSLParameters)) == null) {
                return;
            }
            abstractConscryptSocket.setHostname(sniHostnameFromParams);
        } catch (IllegalAccessException | NoSuchMethodException unused) {
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e.getCause());
        }
    }

    public static void setSSLParameters(SSLParameters sSLParameters, SSLParametersImpl sSLParametersImpl, ConscryptEngine conscryptEngine) {
        String sniHostnameFromParams;
        try {
            setSSLParametersOnImpl(sSLParameters, sSLParametersImpl);
            if (Build.VERSION.SDK_INT < 24 || (sniHostnameFromParams = getSniHostnameFromParams(sSLParameters)) == null) {
                return;
            }
            conscryptEngine.setHostname(sniHostnameFromParams);
        } catch (IllegalAccessException | NoSuchMethodException unused) {
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e.getCause());
        }
    }

    private static void setSSLParametersOnImpl(SSLParameters sSLParameters, SSLParametersImpl sSLParametersImpl) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        sSLParametersImpl.setEndpointIdentificationAlgorithm((String) sSLParameters.getClass().getMethod(ProtectedFastSSH.s("\ue0e4"), null).invoke(sSLParameters, null));
        sSLParametersImpl.setUseCipherSuitesOrder(((Boolean) sSLParameters.getClass().getMethod(ProtectedFastSSH.s("\ue0e5"), null).invoke(sSLParameters, null)).booleanValue());
        try {
            sSLParametersImpl.setNamedGroups((String[]) sSLParameters.getClass().getMethod(ProtectedFastSSH.s("\ue0e6"), null).invoke(sSLParameters, null));
        } catch (IllegalArgumentException | NoSuchMethodException unused) {
        }
    }

    public static void setSocketWriteTimeout(Socket socket, long j) throws SocketException {
        try {
            FileDescriptor fileDescriptor = getFileDescriptor(socket);
            if (fileDescriptor == null || !fileDescriptor.valid()) {
                throw new SocketException(ProtectedFastSSH.s("\ue0fa"));
            }
            Class<?> cls = getClass(ProtectedFastSSH.s("\ue0e7"), ProtectedFastSSH.s("\ue0e8"));
            ProtectedFastSSH.s("\ue0c1");
            if (cls == null) {
                ProtectedFastSSH.s("\ue0e9");
                return;
            }
            Method declaredMethod = cls.getDeclaredMethod(ProtectedFastSSH.s("\ue0ea"), Long.TYPE);
            if (declaredMethod == null) {
                ProtectedFastSSH.s("\ue0eb");
                return;
            }
            Object objInvoke = declaredMethod.invoke(null, Long.valueOf(j));
            Class<?> cls2 = Class.forName(ProtectedFastSSH.s("\ue0ec"));
            if (cls2 == null) {
                ProtectedFastSSH.s("\ue0ed");
                return;
            }
            Field field = cls2.getField(ProtectedFastSSH.s("\ue0ee"));
            if (field == null) {
                ProtectedFastSSH.s("\ue0ef");
                return;
            }
            Object obj = field.get(null);
            if (obj == null) {
                ProtectedFastSSH.s("\ue0f0");
                return;
            }
            Class<?> cls3 = getClass(ProtectedFastSSH.s("\ue0f1"), ProtectedFastSSH.s("\ue0f2"));
            if (cls3 == null) {
                ProtectedFastSSH.s("\ue0f3");
                return;
            }
            Field field2 = cls3.getField(ProtectedFastSSH.s("\ue0f4"));
            if (field2 == null) {
                ProtectedFastSSH.s("\ue0f5");
                return;
            }
            Field field3 = cls3.getField(ProtectedFastSSH.s("\ue0f6"));
            if (field3 == null) {
                ProtectedFastSSH.s("\ue0f7");
                return;
            }
            Class<?> cls4 = obj.getClass();
            String strS = ProtectedFastSSH.s("\ue0f8");
            Class<?> cls5 = Integer.TYPE;
            Method method = cls4.getMethod(strS, FileDescriptor.class, cls5, cls5, cls);
            if (method == null) {
                ProtectedFastSSH.s("\ue0f9");
            } else {
                method.invoke(obj, fileDescriptor, field2.get(null), field3.get(null), objInvoke);
            }
        } catch (Exception e) {
            logStackTraceSnippet(ProtectedFastSSH.s("\ue0fb") + e, e);
            for (Throwable cause = e.getCause(); cause != null; cause = cause.getCause()) {
                logStackTraceSnippet(ProtectedFastSSH.s("\ue0fc") + cause, cause);
            }
        }
    }

    public static synchronized void setup(boolean z, boolean z2) {
        DEPRECATED_TLS_V1 = z;
        ENABLED_TLS_V1 = z2;
        FILTERED_TLS_V1 = !z2;
        NativeCrypto.setTlsV1DeprecationStatus(z, z2);
    }

    static boolean supportsConscryptCertStore() {
        return false;
    }

    static boolean supportsX509ExtendedTrustManager() {
        return Build.VERSION.SDK_INT > 23;
    }

    public static AlgorithmParameterSpec toGCMParameterSpec(int i, byte[] bArr) {
        Class<?> cls;
        String strS = ProtectedFastSSH.s("\ue0fd");
        try {
            cls = Class.forName(ProtectedFastSSH.s("\ue0c6"));
        } catch (ClassNotFoundException unused) {
            cls = null;
        }
        if (cls != null) {
            try {
                return (AlgorithmParameterSpec) cls.getConstructor(Integer.TYPE, byte[].class).newInstance(Integer.valueOf(i), bArr);
            } catch (IllegalAccessException e) {
                e = e;
                logStackTraceSnippet(strS, e);
                return null;
            } catch (IllegalArgumentException e2) {
                e = e2;
                logStackTraceSnippet(strS, e);
                return null;
            } catch (InstantiationException e3) {
                e = e3;
                logStackTraceSnippet(strS, e);
                return null;
            } catch (NoSuchMethodException e4) {
                e = e4;
                logStackTraceSnippet(strS, e);
                return null;
            } catch (InvocationTargetException e5) {
                logStackTraceSnippet(strS, e5.getCause());
            }
        }
        return null;
    }

    static SSLEngine unwrapEngine(SSLEngine sSLEngine) {
        return sSLEngine;
    }

    static SSLEngine wrapEngine(ConscryptEngine conscryptEngine) {
        return conscryptEngine;
    }

    public static SSLSession wrapSSLSession(ExternalSession externalSession) {
        return Build.VERSION.SDK_INT >= 24 ? new Java8ExtendedSSLSession(externalSession) : externalSession;
    }

    public static SSLSocketFactory wrapSocketFactoryIfNeeded(OpenSSLSocketFactoryImpl openSSLSocketFactoryImpl) {
        return openSSLSocketFactoryImpl;
    }
}
