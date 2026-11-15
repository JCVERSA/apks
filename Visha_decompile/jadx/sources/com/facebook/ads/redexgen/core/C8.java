package com.facebook.ads.redexgen.core;

import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.Log;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeoutException;
import javax.net.ssl.HttpsURLConnection;
import org.mozilla.classfile.ByteCode;

public final class C8 implements InterfaceC1714ed {
    public static byte[] A07;
    public static String[] A08 = {"QhNFYJC9gEUd0JRpeTZcIYaCPwaofmcY", "H7lFuH2c6lRKE1KzrEc8woYXA3m4qwgD", "VasthUCsKtAfJQ49O69n9k2VDB8sk6Ry", "CLNAbcda3kskZ9l1P61KK9o7E81JDy0P", "FTSbac7VR6oRDuoXxASKkUBG2ay4Jl1O", "oDWQMCtwqliv6oQHoqRk4BTd2HTxQUcC", "maa7C87UpzAlS2qduOc8uqrscl2NkhxH", ""};
    public static final String A09;
    public InterfaceC1247Su A00;
    public Executor A01;
    public boolean A02;
    public C1719ei A03;
    public final InterfaceC1724en A04 = new CH();
    public final InterfaceC1729es A05;
    public final InterfaceC1730et A06;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 15 out of bounds for length 11
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.restartVar(DebugInfoParser.java:193)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:141)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    private final InterfaceC1713ec A01(AbstractC1726ep abstractC1726ep) throws C1727eq {
        C1727eq c1727eq;
        String strA07 = A07(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT, 7, 86);
        HttpURLConnection httpURLConnection = null;
        C9 c9A05 = null;
        boolean z = false;
        try {
            try {
                this.A02 = false;
                HttpURLConnection httpURLConnectionA08 = A08(abstractC1726ep.A05(), WS.A04() ? A09() : null);
                A0H(httpURLConnectionA08, abstractC1726ep);
                A0G(httpURLConnectionA08, abstractC1726ep);
                if (this.A06.AAQ()) {
                    this.A06.ABN(httpURLConnectionA08, abstractC1726ep.A06());
                }
                httpURLConnectionA08.connect();
                this.A02 = true;
                Set<String> setA01 = this.A03.A01();
                Set<String> setA02 = this.A03.A02();
                boolean z2 = (setA01 == null || setA01.isEmpty()) ? false : true;
                if (setA02 != null && !setA02.isEmpty()) {
                    z = true;
                }
                if ((httpURLConnectionA08 instanceof HttpsURLConnection) && (z2 || z)) {
                    try {
                        AbstractC1731eu.A03((HttpsURLConnection) httpURLConnectionA08, setA01, setA02);
                    } catch (CertificateException e) {
                        this.A00.ABR(strA07, AbstractC1248Sv.A1z, new C1249Sw(e));
                    } catch (Exception e2) {
                        this.A00.ABR(strA07, AbstractC1248Sv.A1y, new C1249Sw(e2));
                    }
                }
                if (httpURLConnectionA08.getDoOutput() && abstractC1726ep.A06() != null) {
                    A00(httpURLConnectionA08, abstractC1726ep.A06());
                }
                C9 c9A06 = httpURLConnectionA08.getDoInput() ? A06(httpURLConnectionA08) : new C9(httpURLConnectionA08, null);
                if (this.A06.AAQ()) {
                    this.A06.ABO(c9A06);
                }
                if (httpURLConnectionA08 != null) {
                    httpURLConnectionA08.disconnect();
                }
                return c9A06;
            } catch (Throwable th) {
                if (this.A06.AAQ()) {
                    this.A06.ABO(c9A05);
                }
                if (0 != 0) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Exception e3) {
            try {
                try {
                    c9A05 = A05(null);
                    if (A08[7].length() == 19) {
                        throw new RuntimeException();
                    }
                    A08[5] = "6Q02gTcavt1J3D6llCgnQfsLExV7BLlB";
                    if (c9A05 == null || c9A05.A94() <= 0) {
                        c1727eq = new C1727eq(e3, c9A05);
                        throw c1727eq;
                    }
                    if (this.A06.AAQ()) {
                        this.A06.ABO(c9A05);
                    }
                    if (0 != 0) {
                        httpURLConnection.disconnect();
                    }
                    return c9A05;
                } catch (Throwable unused) {
                    if (c9A05 == null || c9A05.A94() <= 0) {
                        throw new C1727eq(e3, c9A05);
                    }
                    if (this.A06.AAQ()) {
                        this.A06.ABO(c9A05);
                    }
                    if (0 != 0) {
                        httpURLConnection.disconnect();
                    }
                    return c9A05;
                }
            } catch (Exception unused2) {
                Log.e(getClass().getSimpleName(), A07(117, 13, 98), e3);
                if (0 != 0 && c9A05.A94() > 0) {
                    if (this.A06.AAQ()) {
                        this.A06.ABO(null);
                    }
                    if (0 != 0) {
                        httpURLConnection.disconnect();
                    }
                    return null;
                }
                c1727eq = new C1727eq(e3, null);
            }
        }
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 17);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A07 = new byte[]{59, 57, 102, 107, 14, 102, 100, 77, 64, 9, 77, 79, 30, 93, 75, 76, 82, 30, 42, 99, 121, 42, 100, 101, 126, 42, 107, 42, 124, 107, 102, 99, 110, 42, 95, 88, 70, 80, 31, 22, 80, 75, 120, 116, 23, 0, 116, 105, 116, 55, 59, 73, 79, 59, 38, 59, 38, 42, 126, 120, 115, 99, 100, 109, 42, 94, 4, 34, 43, 38, 55, 52, 34, 35, 71, 51, 46, 42, 34, 71, 90, 71, 71, 101, 116, 116, 105, 110, 103, 32, 116, 104, 101, 32, 104, 116, 116, 112, 32, 114, 101, 115, 112, 111, 110, 115, 101, 32, 116, 105, 109, 101, 100, 32, 111, 117, 116, 61, 22, 7, 4, 28, 1, 24, 83, 22, 1, 1, 28, 1, 23, 22, 4, 111, 122, 22, 7, 7, 27, 30, 20, 22, 3, 30, 24, 25, 88, 15, 90, 0, 0, 0, 90, 17, 24, 5, 26, 90, 2, 5, 27, 18, 25, 20, 24, 19, 18, 19, 76, 20, 31, 22, 5, 4, 18, 3, 74, 34, 35, 49, 90, 79, 89, 79, 72, 86, 26, 23, 81, 26, 23, 83, 120, 100, 100, 96, 62, 96, 98, 127, 104, 105, 88, 127, 99, 100, 27, 7, 7, 3, 93, 3, 1, 28, ByteCode.T_LONG, 10, 35, 28, 1, 7, 41, 34, 51, 48, 40, 53, 44};
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:43:0x011a  */
    /* JADX WARN: Code duplicated, block: B:45:0x0123  */
    /* JADX WARN: Code duplicated, block: B:50:0x012f  */
    /* JADX WARN: Code duplicated, block: B:52:0x0133  */
    /* JADX WARN: Code duplicated, block: B:55:0x013f  */
    /* JADX WARN: Code duplicated, block: B:56:0x0144  */
    /* JADX WARN: Code duplicated, block: B:57:0x0149  */
    /* JADX WARN: Code duplicated, block: B:58:0x0150  */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 44 out of bounds for length 31
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public final InterfaceC1713ec A0J(AbstractC1726ep abstractC1726ep) throws C1727eq {
        InterfaceC1713ec interfaceC1713ecA00;
        long length;
        long length2;
        int iA94;
        int i = 0;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iA01 = abstractC1726ep.A02().A01();
        long jA03 = abstractC1726ep.A02().A03();
        long jCurrentTimeMillis2 = System.currentTimeMillis() + ((long) abstractC1726ep.A02().A04());
        while (true) {
            if (i >= iA01 || jCurrentTimeMillis2 <= System.currentTimeMillis()) {
                break;
            }
            try {
                if (this.A06.AAQ()) {
                    String str = (i + 1) + A07(37, 4, 97) + iA01 + A07(56, 9, 27) + abstractC1726ep.A05();
                }
                jCurrentTimeMillis = System.currentTimeMillis();
                InterfaceC1713ec interfaceC1713ecA01 = A01(abstractC1726ep);
                if (interfaceC1713ecA01 != null) {
                    this.A00.ABI(jCurrentTimeMillis, System.currentTimeMillis() - jCurrentTimeMillis, interfaceC1713ecA01.A6u().length, abstractC1726ep.A04 == null ? 0L : abstractC1726ep.A04.length, interfaceC1713ecA01.A94(), null);
                    return interfaceC1713ecA01;
                }
                continue;
            } catch (C1727eq e) {
                if (!A0I(e, jCurrentTimeMillis, abstractC1726ep)) {
                    if (this.A05.ADE(e)) {
                    }
                    interfaceC1713ecA00 = e.A00();
                    InterfaceC1247Su interfaceC1247Su = this.A00;
                    long jCurrentTimeMillis3 = System.currentTimeMillis() - jCurrentTimeMillis;
                    if (A08[1].charAt(0) != 'l') {
                        A08[4] = "ETXEAYq6mx6OG4ZVoxEdED8XICrn9DEf";
                        if (interfaceC1713ecA00 != null) {
                            if (interfaceC1713ecA00.A6u() == null) {
                                length = interfaceC1713ecA00.A6u().length;
                            }
                        }
                        if (abstractC1726ep.A04 == null) {
                            length2 = 0;
                        } else {
                            length2 = abstractC1726ep.A04.length;
                        }
                        if (interfaceC1713ecA00 == null) {
                            iA94 = 0;
                        } else {
                            iA94 = interfaceC1713ecA00.A94();
                        }
                        interfaceC1247Su.ABI(jCurrentTimeMillis, jCurrentTimeMillis3, length, length2, iA94, e);
                        throw e;
                    }
                    A08[1] = "GUaOJDLzyYCGW5Cxc7undAaXJNT5GVew";
                    if (interfaceC1713ecA00 != null) {
                        if (interfaceC1713ecA00.A6u() == null) {
                            length = interfaceC1713ecA00.A6u().length;
                        }
                    }
                    if (abstractC1726ep.A04 == null) {
                        length2 = 0;
                    } else {
                        length2 = abstractC1726ep.A04.length;
                    }
                    if (interfaceC1713ecA00 == null) {
                        iA94 = 0;
                    } else {
                        iA94 = interfaceC1713ecA00.A94();
                    }
                    interfaceC1247Su.ABI(jCurrentTimeMillis, jCurrentTimeMillis3, length, length2, iA94, e);
                    throw e;
                    length = 0;
                    if (abstractC1726ep.A04 == null) {
                        length2 = 0;
                    } else {
                        length2 = abstractC1726ep.A04.length;
                    }
                    if (interfaceC1713ecA00 == null) {
                        iA94 = 0;
                    } else {
                        iA94 = interfaceC1713ecA00.A94();
                    }
                    interfaceC1247Su.ABI(jCurrentTimeMillis, jCurrentTimeMillis3, length, length2, iA94, e);
                    throw e;
                }
                int i2 = iA01 - 1;
                if (A08[1].charAt(0) == 'l') {
                    throw new RuntimeException();
                }
                A08[1] = "iDEOxz3pTPjJqVLmMx3mPs9K2XOoyKBI";
                if (i < i2) {
                    continue;
                } else {
                    if (this.A05.ADE(e) || i >= iA01 - 1) {
                        interfaceC1713ecA00 = e.A00();
                        InterfaceC1247Su interfaceC1247Su2 = this.A00;
                        long jCurrentTimeMillis4 = System.currentTimeMillis() - jCurrentTimeMillis;
                        if (A08[1].charAt(0) != 'l') {
                            A08[4] = "ETXEAYq6mx6OG4ZVoxEdED8XICrn9DEf";
                            if (interfaceC1713ecA00 != null) {
                                if (interfaceC1713ecA00.A6u() == null) {
                                    length = interfaceC1713ecA00.A6u().length;
                                }
                            }
                            if (abstractC1726ep.A04 == null) {
                                length2 = 0;
                            } else {
                                length2 = abstractC1726ep.A04.length;
                            }
                            if (interfaceC1713ecA00 == null) {
                                iA94 = 0;
                            } else {
                                iA94 = interfaceC1713ecA00.A94();
                            }
                            interfaceC1247Su2.ABI(jCurrentTimeMillis, jCurrentTimeMillis4, length, length2, iA94, e);
                            throw e;
                        }
                        A08[1] = "GUaOJDLzyYCGW5Cxc7undAaXJNT5GVew";
                        if (interfaceC1713ecA00 != null) {
                            if (interfaceC1713ecA00.A6u() == null) {
                                length = interfaceC1713ecA00.A6u().length;
                            }
                        }
                        if (abstractC1726ep.A04 == null) {
                            length2 = 0;
                        } else {
                            length2 = abstractC1726ep.A04.length;
                        }
                        if (interfaceC1713ecA00 == null) {
                            iA94 = 0;
                        } else {
                            iA94 = interfaceC1713ecA00.A94();
                        }
                        interfaceC1247Su2.ABI(jCurrentTimeMillis, jCurrentTimeMillis4, length, length2, iA94, e);
                        throw e;
                        length = 0;
                        if (abstractC1726ep.A04 == null) {
                            length2 = 0;
                        } else {
                            length2 = abstractC1726ep.A04.length;
                        }
                        if (interfaceC1713ecA00 == null) {
                            iA94 = 0;
                        } else {
                            iA94 = interfaceC1713ecA00.A94();
                        }
                        interfaceC1247Su2.ABI(jCurrentTimeMillis, jCurrentTimeMillis4, length, length2, iA94, e);
                        throw e;
                    }
                    if (jA03 > 0) {
                        try {
                            Thread.sleep(jA03);
                        } catch (InterruptedException e2) {
                            this.A00.ABI(jCurrentTimeMillis, System.currentTimeMillis() - jCurrentTimeMillis, 0L, abstractC1726ep.A04 != null ? abstractC1726ep.A04.length : 0L, 0, e2);
                            throw e;
                        }
                    } else {
                        continue;
                    }
                }
            }
            i++;
        }
        this.A00.ABI(jCurrentTimeMillis, System.currentTimeMillis() - jCurrentTimeMillis, 0L, abstractC1726ep.A04 == null ? 0L : abstractC1726ep.A04.length, 0, new TimeoutException(A07(82, 35, 17)));
        return null;
    }

    static {
        A0A();
        A09 = InterfaceC1714ed.class.getSimpleName();
    }

    public C8(C1719ei c1719ei, InterfaceC1247Su interfaceC1247Su, Executor executor) {
        A0B();
        this.A03 = c1719ei;
        this.A06 = new C7(c1719ei.A04());
        final InterfaceC1730et interfaceC1730et = this.A06;
        this.A05 = new CF(interfaceC1730et) {
        };
        this.A01 = executor;
        this.A00 = interfaceC1247Su;
    }

    private final int A00(HttpURLConnection httpURLConnection, byte[] bArr) throws Exception {
        OutputStream outputStreamAG3 = null;
        try {
            outputStreamAG3 = this.A05.AG3(httpURLConnection);
            if (outputStreamAG3 != null) {
                this.A05.AKN(outputStreamAG3, bArr);
            }
            return httpURLConnection.getResponseCode();
        } finally {
            if (outputStreamAG3 != null) {
                try {
                    outputStreamAG3.close();
                } catch (Exception unused) {
                }
            }
        }
    }

    private final InterfaceC1713ec A02(AbstractC1726ep abstractC1726ep) {
        if (this.A03.A04()) {
            A0C(abstractC1726ep);
        }
        InterfaceC1713ec interfaceC1713ecA01 = null;
        try {
            interfaceC1713ecA01 = A01(abstractC1726ep);
            return interfaceC1713ecA01;
        } catch (C1727eq hre) {
            this.A05.ADE(hre);
            return interfaceC1713ecA01;
        } catch (Exception e) {
            this.A05.ADE(new C1727eq(e, interfaceC1713ecA01));
            return interfaceC1713ecA01;
        }
    }

    private final InterfaceC1713ec A03(String str, C1728er c1728er, C1722el c1722el) {
        return A02(new CB(str, c1728er, c1722el));
    }

    private final InterfaceC1713ec A04(String str, String str2, byte[] bArr, C1722el c1722el) {
        return A02(new CA(str, null, str2, bArr, c1722el));
    }

    private final C9 A05(HttpURLConnection httpURLConnection) throws Exception {
        InputStream errorStream = null;
        byte[] responseBody = null;
        try {
            errorStream = httpURLConnection.getErrorStream();
            if (errorStream != null) {
                responseBody = this.A05.AGj(errorStream);
            }
            return new C9(httpURLConnection, responseBody);
        } finally {
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (Exception unused) {
                }
            }
        }
    }

    private final C9 A06(HttpURLConnection httpURLConnection) throws Exception {
        InputStream inputStreamAG2 = null;
        byte[] responseBody = null;
        try {
            inputStreamAG2 = this.A05.AG2(httpURLConnection);
            if (inputStreamAG2 != null) {
                responseBody = this.A05.AGj(inputStreamAG2);
            }
            C9 c9 = new C9(httpURLConnection, responseBody);
            if (inputStreamAG2 != null) {
                try {
                    inputStreamAG2.close();
                } catch (Exception unused) {
                }
            }
            return c9;
        } catch (Throwable th) {
            String[] strArr = A08;
            if (strArr[3].charAt(2) != strArr[0].charAt(2)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[3] = "UXNjV4lzV2ywD4tdDbD0LjxSkhTqZWDx";
            strArr2[0] = "ckNMQEffDKJwLTwRJSWHE7UL6GsW6bMO";
            if (inputStreamAG2 != null) {
                try {
                    inputStreamAG2.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    private final HttpURLConnection A08(String str, Proxy proxy) throws IOException {
        try {
            new URL(str);
            TrafficStats.setThreadStatsTag(61453);
            return this.A05.AG1(str, proxy);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(str + A07(18, 19, 27), e);
        }
    }

    public static Proxy A09() {
        Proxy proxy = Proxy.NO_PROXY;
        String property = System.getProperty(A07(192, 14, 1));
        String proxyAddress = System.getProperty(A07(IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT, 14, 98));
        int port = -1;
        if (proxyAddress != null) {
            try {
                port = Integer.parseInt(proxyAddress);
            } catch (NumberFormatException unused) {
                return proxy;
            }
        }
        if (!TextUtils.isEmpty(property) && port > 0 && port <= 65535) {
            return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(property, port));
        }
        return proxy;
    }

    public static synchronized void A0B() {
        if (CookieHandler.getDefault() == null) {
            CookieHandler.setDefault(new CookieManager());
        }
    }

    private void A0C(AbstractC1726ep abstractC1726ep) {
        StringBuilder sb = new StringBuilder(A07(182, 10, 43));
        boolean zEquals = abstractC1726ep.A03().equals(EnumC1725eo.A06);
        String strA07 = A07(41, 1, 120);
        if (zEquals) {
            byte[] bArrA06 = abstractC1726ep.A06();
            if (A08[1].charAt(0) == 'l') {
                throw new RuntimeException();
            }
            A08[4] = "MgpsgMtpOSh21D9UNcI3ZUtvoefc4JIC";
            if (bArrA06 != null) {
                sb.append(A07(7, 5, 124));
                sb.append(new String(abstractC1726ep.A06(), Charset.forName(A07(130, 5, 83))));
                sb.append(strA07);
            }
        }
        for (Map.Entry<String, String> entry : abstractC1726ep.A02().A06().entrySet()) {
            sb.append(A07(2, 5, 87));
            sb.append(entry.getKey());
            sb.append(A07(66, 1, 47));
            sb.append(entry.getValue());
            sb.append(strA07);
        }
        sb.append(A07(0, 2, 10));
        sb.append(abstractC1726ep.A05());
        sb.append(strA07);
        String string = sb.toString();
        A0E(string, 1, (string.length() / FlacTagCreator.DEFAULT_PADDING) + 1);
    }

    private void A0D(AbstractC1726ep abstractC1726ep, InterfaceC1715ee interfaceC1715ee) {
        this.A04.A6q(this, interfaceC1715ee, this.A01).A04(abstractC1726ep);
        if (this.A03.A04()) {
            A0C(abstractC1726ep);
        }
    }

    private void A0E(String str, int i, int i2) {
        String str2 = A09 + A07(12, 6, 47) + i + A07(65, 1, 96) + i2;
        if (str.length() > 4000) {
            str.substring(0, FlacTagCreator.DEFAULT_PADDING);
            A0E(str.substring(FlacTagCreator.DEFAULT_PADDING), i + 1, i2);
        }
    }

    private void A0F(String str, String str2, byte[] bArr, InterfaceC1715ee interfaceC1715ee, C1722el c1722el) {
        CA req = new CA(str, null, str2, bArr, c1722el);
        A0D(req, interfaceC1715ee);
    }

    private void A0G(HttpURLConnection httpURLConnection, AbstractC1726ep abstractC1726ep) {
        Map<String, String> mapA06 = abstractC1726ep.A02().A06();
        InterfaceC1712eb interfaceC1712ebA05 = abstractC1726ep.A02().A05();
        for (String str : mapA06.keySet()) {
            httpURLConnection.setRequestProperty(str, mapA06.get(str));
        }
        if (interfaceC1712ebA05 != null) {
            Map<String, String> mapA6Y = interfaceC1712ebA05.A6Y(this.A03.A03());
            for (String str2 : mapA6Y.keySet()) {
                httpURLConnection.setRequestProperty(str2, mapA6Y.get(str2));
            }
        }
    }

    private final void A0H(HttpURLConnection httpURLConnection, AbstractC1726ep abstractC1726ep) throws IOException {
        C1722el c1722elA02 = abstractC1726ep.A02();
        httpURLConnection.setConnectTimeout(c1722elA02.A00());
        httpURLConnection.setReadTimeout(c1722elA02.A02());
        this.A05.AGM(httpURLConnection, abstractC1726ep.A03(), abstractC1726ep.A04());
    }

    private final boolean A0I(Throwable th, long j, AbstractC1726ep abstractC1726ep) {
        C1722el c1722elA02 = abstractC1726ep.A02();
        long jCurrentTimeMillis = (System.currentTimeMillis() - j) + 10;
        if (this.A06.AAQ()) {
            String str = A07(67, 15, 118) + jCurrentTimeMillis + A07(42, 7, 69) + c1722elA02.A00() + A07(49, 7, 10) + c1722elA02.A02();
        }
        if (this.A02) {
            long jA02 = c1722elA02.A02();
            if (A08[4].charAt(1) == 'Y') {
                throw new RuntimeException();
            }
            A08[7] = "tgQXMymp9cIZW";
            return jCurrentTimeMillis >= jA02;
        }
        long elapsedTime = c1722elA02.A00();
        return jCurrentTimeMillis >= elapsedTime;
    }

    public final C1719ei A0K() {
        return this.A03;
    }

    @Override
    @Deprecated
    public final InterfaceC1713ec AGC(String str, Map<String, String> parameters) {
        return A03(str, new C1728er(parameters), this.A03.A00());
    }

    @Override
    @Deprecated
    public final InterfaceC1713ec AGD(String str, byte[] bArr) {
        return A04(str, A07(135, 47, 102), bArr, this.A03.A00());
    }

    @Override
    public final void AGE(String str, byte[] bArr, InterfaceC1715ee interfaceC1715ee) {
        A0F(str, A07(135, 47, 102), bArr, interfaceC1715ee, this.A03.A00());
    }
}
