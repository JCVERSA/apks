package org.conscrypt;

import app.fast.ssh.ProtectedFastSSH;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.security.KeyManagementException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.cert.X509Certificate;
import java.util.Properties;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLContextSpi;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLServerSocketFactory;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSessionContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.conscrypt.io.IoUtils;

public final class Conscrypt {
    private static final Version VERSION;

    class AnonymousClass1 implements ConscryptHostnameVerifier {
        final HostnameVerifier val$verifier;

        AnonymousClass1(HostnameVerifier hostnameVerifier) {
            this.val$verifier = hostnameVerifier;
        }

        @Override
        public boolean verify(X509Certificate[] x509CertificateArr, String str, SSLSession sSLSession) {
            return this.val$verifier.verify(str, sSLSession);
        }
    }

    public static class ProviderBuilder {
        private String defaultTlsProtocol;
        private boolean deprecatedTlsV1;
        private boolean enabledTlsV1;
        private String name;
        private boolean provideTrustManager;

        private ProviderBuilder() {
            this.name = Platform.getDefaultProviderName();
            this.provideTrustManager = Platform.provideTrustManagerByDefault();
            this.defaultTlsProtocol = ProtectedFastSSH.s("\udaca");
            this.deprecatedTlsV1 = Platform.isTlsV1Deprecated();
            this.enabledTlsV1 = Platform.isTlsV1Supported();
        }

        ProviderBuilder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Provider build() {
            return new OpenSSLProvider(this.name, this.provideTrustManager, this.defaultTlsProtocol, this.deprecatedTlsV1, this.enabledTlsV1);
        }

        public ProviderBuilder defaultTlsProtocol(String str) {
            this.defaultTlsProtocol = str;
            return this;
        }

        public ProviderBuilder isTlsV1Deprecated(boolean z) {
            this.deprecatedTlsV1 = z;
            return this;
        }

        public ProviderBuilder isTlsV1Enabled(boolean z) {
            this.enabledTlsV1 = z;
            return this;
        }

        @Deprecated
        public ProviderBuilder provideTrustManager() {
            return provideTrustManager(true);
        }

        public ProviderBuilder provideTrustManager(boolean z) {
            this.provideTrustManager = z;
            return this;
        }

        public ProviderBuilder setName(String str) {
            this.name = str;
            return this;
        }
    }

    public static class Version {
        private final int major;
        private final int minor;
        private final int patch;

        private Version(int i, int i2, int i3) {
            this.major = i;
            this.minor = i2;
            this.patch = i3;
        }

        Version(int i, int i2, int i3, AnonymousClass1 anonymousClass1) {
            this(i, i2, i3);
        }

        public int major() {
            return this.major;
        }

        public int minor() {
            return this.minor;
        }

        public int patch() {
            return this.patch;
        }
    }

    static {
        int i;
        int i2;
        InputStream inputStreamA;
        int i3;
        String strS = ProtectedFastSSH.s("\udacb");
        int i4 = -1;
        InputStream inputStream = null;
        try {
            inputStreamA = ProtectedFastSSH.a(Conscrypt.class, ProtectedFastSSH.s("\udacc"));
            if (inputStreamA != null) {
                try {
                    try {
                        Properties properties = new Properties();
                        properties.load(inputStreamA);
                        i = Integer.parseInt(properties.getProperty(ProtectedFastSSH.s("\udacd"), strS));
                        try {
                            i2 = Integer.parseInt(properties.getProperty(ProtectedFastSSH.s("\udace"), strS));
                            try {
                                i3 = Integer.parseInt(properties.getProperty(ProtectedFastSSH.s("\udacf"), strS));
                                i4 = i;
                            } catch (IOException unused) {
                                IoUtils.closeQuietly(inputStreamA);
                                i3 = -1;
                                i4 = i;
                            }
                        } catch (IOException unused2) {
                            i2 = -1;
                        }
                    } catch (IOException unused3) {
                        i = -1;
                        i2 = -1;
                    }
                } catch (Throwable th) {
                    th = th;
                    inputStream = inputStreamA;
                    IoUtils.closeQuietly(inputStream);
                    throw th;
                }
            } else {
                i3 = -1;
                i2 = -1;
            }
            IoUtils.closeQuietly(inputStreamA);
        } catch (IOException unused4) {
            i = -1;
            i2 = -1;
            inputStreamA = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (i4 < 0 || i2 < 0 || i3 < 0) {
            VERSION = null;
        } else {
            VERSION = new Version(i4, i2, i3, null);
        }
    }

    private Conscrypt() {
    }

    public static void checkAvailability() {
        NativeCrypto.checkAvailability();
    }

    public static byte[] exportKeyingMaterial(SSLEngine sSLEngine, String str, byte[] bArr, int i) throws SSLException {
        return toConscrypt(sSLEngine).exportKeyingMaterial(str, bArr, i);
    }

    public static byte[] exportKeyingMaterial(SSLSocket sSLSocket, String str, byte[] bArr, int i) throws SSLException {
        return toConscrypt(sSLSocket).exportKeyingMaterial(str, bArr, i);
    }

    public static String getApplicationProtocol(SSLEngine sSLEngine) {
        if (isConscrypt(sSLEngine)) {
            return toConscrypt(sSLEngine).getApplicationProtocol();
        }
        if (sSLEngine.getClass().getName().contains(ProtectedFastSSH.s("\udad0"))) {
            return invokeConscryptMethod(sSLEngine, ProtectedFastSSH.s("\udad1"));
        }
        throw new IllegalArgumentException(ProtectedFastSSH.s("\udad2") + sSLEngine.getClass().getName());
    }

    public static String getApplicationProtocol(SSLSocket sSLSocket) {
        if (isConscrypt(sSLSocket)) {
            return toConscrypt(sSLSocket).getApplicationProtocol();
        }
        if (sSLSocket.getClass().getName().contains(ProtectedFastSSH.s("\udad0"))) {
            return invokeConscryptMethod(sSLSocket, ProtectedFastSSH.s("\udad1"));
        }
        throw new IllegalArgumentException(ProtectedFastSSH.s("\udad3") + sSLSocket.getClass().getName());
    }

    public static String[] getApplicationProtocols(SSLEngine sSLEngine) {
        return toConscrypt(sSLEngine).getApplicationProtocols();
    }

    public static String[] getApplicationProtocols(SSLSocket sSLSocket) {
        return toConscrypt(sSLSocket).getApplicationProtocols();
    }

    public static byte[] getChannelId(SSLEngine sSLEngine) throws SSLException {
        return toConscrypt(sSLEngine).getChannelId();
    }

    public static byte[] getChannelId(SSLSocket sSLSocket) throws SSLException {
        return toConscrypt(sSLSocket).getChannelId();
    }

    public static synchronized ConscryptHostnameVerifier getDefaultHostnameVerifier(TrustManager trustManager) {
        return TrustManagerImpl.getDefaultHostnameVerifier();
    }

    public static X509TrustManager getDefaultX509TrustManager() throws KeyManagementException {
        checkAvailability();
        return SSLParametersImpl.getDefaultX509TrustManager();
    }

    public static String getHostname(SSLEngine sSLEngine) {
        return toConscrypt(sSLEngine).getHostname();
    }

    public static String getHostname(SSLSocket sSLSocket) {
        return toConscrypt(sSLSocket).getHostname();
    }

    public static String getHostnameOrIP(SSLSocket sSLSocket) {
        return toConscrypt(sSLSocket).getHostnameOrIP();
    }

    public static ConscryptHostnameVerifier getHostnameVerifier(TrustManager trustManager) {
        return toConscrypt(trustManager).getHostnameVerifier();
    }

    public static byte[] getTlsUnique(SSLEngine sSLEngine) {
        return toConscrypt(sSLEngine).getTlsUnique();
    }

    public static byte[] getTlsUnique(SSLSocket sSLSocket) {
        return toConscrypt(sSLSocket).getTlsUnique();
    }

    private static String invokeConscryptMethod(Object obj, String str) throws IllegalArgumentException {
        try {
            return (String) obj.getClass().getMethod(str, null).invoke(obj, null);
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            boolean z = cause instanceof SSLException;
            String strS = ProtectedFastSSH.s("\udad7");
            if (z || (cause instanceof IOException)) {
                throw new IllegalArgumentException(strS + str + ProtectedFastSSH.s("\udad9"), cause);
            }
            if (cause instanceof IllegalStateException) {
                throw ((IllegalStateException) cause);
            }
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException(strS + str + ProtectedFastSSH.s("\udad8"), cause);
        } catch (Exception e2) {
            throw new IllegalArgumentException(ProtectedFastSSH.s("\udad4") + str + ProtectedFastSSH.s("\udad5") + obj.getClass().getName() + ProtectedFastSSH.s("\udad6") + e2.getMessage(), e2);
        }
    }

    public static boolean isAvailable() {
        try {
            checkAvailability();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean isBoringSslFIPSBuild() {
        try {
            return NativeCrypto.usesBoringSsl_FIPS_mode();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean isConscrypt(Provider provider) {
        return provider instanceof OpenSSLProvider;
    }

    public static boolean isConscrypt(SSLContext sSLContext) {
        return sSLContext.getProvider() instanceof OpenSSLProvider;
    }

    public static boolean isConscrypt(SSLEngine sSLEngine) {
        return sSLEngine instanceof AbstractConscryptEngine;
    }

    public static boolean isConscrypt(SSLServerSocketFactory sSLServerSocketFactory) {
        return sSLServerSocketFactory instanceof OpenSSLServerSocketFactoryImpl;
    }

    public static boolean isConscrypt(SSLSocket sSLSocket) {
        return sSLSocket instanceof AbstractConscryptSocket;
    }

    public static boolean isConscrypt(SSLSocketFactory sSLSocketFactory) {
        return sSLSocketFactory instanceof OpenSSLSocketFactoryImpl;
    }

    public static boolean isConscrypt(TrustManager trustManager) {
        return trustManager instanceof TrustManagerImpl;
    }

    public static int maxEncryptedPacketLength() {
        return 16709;
    }

    public static int maxSealOverhead(SSLEngine sSLEngine) {
        return toConscrypt(sSLEngine).maxSealOverhead();
    }

    public static SSLContextSpi newPreferredSSLContextSpi() {
        checkAvailability();
        return OpenSSLContextImpl.getPreferred();
    }

    public static Provider newProvider() {
        checkAvailability();
        return new OpenSSLProvider();
    }

    @Deprecated
    public static Provider newProvider(String str) {
        checkAvailability();
        return newProviderBuilder().setName(str).build();
    }

    public static ProviderBuilder newProviderBuilder() {
        return new ProviderBuilder(null);
    }

    public static void setApplicationProtocolSelector(SSLEngine sSLEngine, ApplicationProtocolSelector applicationProtocolSelector) {
        toConscrypt(sSLEngine).setApplicationProtocolSelector(applicationProtocolSelector);
    }

    public static void setApplicationProtocolSelector(SSLSocket sSLSocket, ApplicationProtocolSelector applicationProtocolSelector) {
        toConscrypt(sSLSocket).setApplicationProtocolSelector(applicationProtocolSelector);
    }

    public static void setApplicationProtocols(SSLEngine sSLEngine, String[] strArr) {
        toConscrypt(sSLEngine).setApplicationProtocols(strArr);
    }

    public static void setApplicationProtocols(SSLSocket sSLSocket, String[] strArr) {
        toConscrypt(sSLSocket).setApplicationProtocols(strArr);
    }

    public static void setBufferAllocator(SSLEngine sSLEngine, BufferAllocator bufferAllocator) {
        toConscrypt(sSLEngine).setBufferAllocator(bufferAllocator);
    }

    public static void setBufferAllocator(SSLSocket sSLSocket, BufferAllocator bufferAllocator) {
        AbstractConscryptSocket conscrypt = toConscrypt(sSLSocket);
        if (conscrypt instanceof ConscryptEngineSocket) {
            ((ConscryptEngineSocket) conscrypt).setBufferAllocator(bufferAllocator);
        }
    }

    public static void setChannelIdEnabled(SSLEngine sSLEngine, boolean z) {
        toConscrypt(sSLEngine).setChannelIdEnabled(z);
    }

    public static void setChannelIdEnabled(SSLSocket sSLSocket, boolean z) {
        toConscrypt(sSLSocket).setChannelIdEnabled(z);
    }

    public static void setChannelIdPrivateKey(SSLEngine sSLEngine, PrivateKey privateKey) {
        toConscrypt(sSLEngine).setChannelIdPrivateKey(privateKey);
    }

    public static void setChannelIdPrivateKey(SSLSocket sSLSocket, PrivateKey privateKey) {
        toConscrypt(sSLSocket).setChannelIdPrivateKey(privateKey);
    }

    public static void setClientSessionCache(SSLContext sSLContext, SSLClientSessionCache sSLClientSessionCache) {
        SSLSessionContext clientSessionContext = sSLContext.getClientSessionContext();
        if (clientSessionContext instanceof ClientSessionContext) {
            ((ClientSessionContext) clientSessionContext).setPersistentCache(sSLClientSessionCache);
        } else {
            throw new IllegalArgumentException(ProtectedFastSSH.s("\udada") + clientSessionContext.getClass().getName());
        }
    }

    public static void setDefaultBufferAllocator(BufferAllocator bufferAllocator) {
        ConscryptEngine.setDefaultBufferAllocator(bufferAllocator);
    }

    public static synchronized void setDefaultHostnameVerifier(ConscryptHostnameVerifier conscryptHostnameVerifier) {
        TrustManagerImpl.setDefaultHostnameVerifier(conscryptHostnameVerifier);
    }

    public static void setHandshakeListener(SSLEngine sSLEngine, HandshakeListener handshakeListener) {
        toConscrypt(sSLEngine).setHandshakeListener(handshakeListener);
    }

    public static void setHostname(SSLEngine sSLEngine, String str) {
        toConscrypt(sSLEngine).setHostname(str);
    }

    public static void setHostname(SSLSocket sSLSocket, String str) {
        toConscrypt(sSLSocket).setHostname(str);
    }

    public static void setHostnameVerifier(TrustManager trustManager, ConscryptHostnameVerifier conscryptHostnameVerifier) {
        toConscrypt(trustManager).setHostnameVerifier(conscryptHostnameVerifier);
    }

    public static void setNamedGroups(SSLSocket sSLSocket, String[] strArr) {
        toConscrypt(sSLSocket).setNamedGroups(strArr);
    }

    public static void setNamedGroups(SSLSocketFactory sSLSocketFactory, String[] strArr) {
        toConscrypt(sSLSocketFactory).setNamedGroups(strArr);
    }

    public static void setServerSessionCache(SSLContext sSLContext, SSLServerSessionCache sSLServerSessionCache) {
        SSLSessionContext serverSessionContext = sSLContext.getServerSessionContext();
        if (serverSessionContext instanceof ServerSessionContext) {
            ((ServerSessionContext) serverSessionContext).setPersistentCache(sSLServerSessionCache);
        } else {
            throw new IllegalArgumentException(ProtectedFastSSH.s("\udada") + serverSessionContext.getClass().getName());
        }
    }

    public static void setUseEngineSocket(SSLServerSocketFactory sSLServerSocketFactory, boolean z) {
        toConscrypt(sSLServerSocketFactory).setUseEngineSocket(z);
    }

    public static void setUseEngineSocket(SSLSocketFactory sSLSocketFactory, boolean z) {
        toConscrypt(sSLSocketFactory).setUseEngineSocket(z);
    }

    public static void setUseEngineSocketByDefault(boolean z) {
        OpenSSLSocketFactoryImpl.setUseEngineSocketByDefault(z);
        OpenSSLServerSocketFactoryImpl.setUseEngineSocketByDefault(z);
    }

    public static void setUseSessionTickets(SSLEngine sSLEngine, boolean z) {
        toConscrypt(sSLEngine).setUseSessionTickets(z);
    }

    public static void setUseSessionTickets(SSLSocket sSLSocket, boolean z) {
        toConscrypt(sSLSocket).setUseSessionTickets(z);
    }

    private static AbstractConscryptEngine toConscrypt(SSLEngine sSLEngine) {
        if (isConscrypt(sSLEngine)) {
            return (AbstractConscryptEngine) sSLEngine;
        }
        throw new IllegalArgumentException(ProtectedFastSSH.s("\udad2") + sSLEngine.getClass().getName());
    }

    private static AbstractConscryptSocket toConscrypt(SSLSocket sSLSocket) {
        if (isConscrypt(sSLSocket)) {
            return (AbstractConscryptSocket) sSLSocket;
        }
        throw new IllegalArgumentException(ProtectedFastSSH.s("\udad3") + sSLSocket.getClass().getName());
    }

    private static OpenSSLServerSocketFactoryImpl toConscrypt(SSLServerSocketFactory sSLServerSocketFactory) {
        if (isConscrypt(sSLServerSocketFactory)) {
            return (OpenSSLServerSocketFactoryImpl) sSLServerSocketFactory;
        }
        throw new IllegalArgumentException(ProtectedFastSSH.s("\udadb") + sSLServerSocketFactory.getClass().getName());
    }

    private static OpenSSLSocketFactoryImpl toConscrypt(SSLSocketFactory sSLSocketFactory) {
        if (isConscrypt(sSLSocketFactory)) {
            return (OpenSSLSocketFactoryImpl) sSLSocketFactory;
        }
        throw new IllegalArgumentException(ProtectedFastSSH.s("\udadc") + sSLSocketFactory.getClass().getName());
    }

    private static TrustManagerImpl toConscrypt(TrustManager trustManager) {
        if (isConscrypt(trustManager)) {
            return (TrustManagerImpl) trustManager;
        }
        throw new IllegalArgumentException(ProtectedFastSSH.s("\udadd") + trustManager.getClass().getName());
    }

    public static SSLEngineResult unwrap(SSLEngine sSLEngine, ByteBuffer[] byteBufferArr, int i, int i2, ByteBuffer[] byteBufferArr2, int i3, int i4) throws SSLException {
        return toConscrypt(sSLEngine).unwrap(byteBufferArr, i, i2, byteBufferArr2, i3, i4);
    }

    public static SSLEngineResult unwrap(SSLEngine sSLEngine, ByteBuffer[] byteBufferArr, ByteBuffer[] byteBufferArr2) throws SSLException {
        return toConscrypt(sSLEngine).unwrap(byteBufferArr, byteBufferArr2);
    }

    public static Version version() {
        return VERSION;
    }

    public static ConscryptHostnameVerifier wrapHostnameVerifier(HostnameVerifier hostnameVerifier) {
        return new AnonymousClass1(hostnameVerifier);
    }
}
