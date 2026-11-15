package com.facebook.ads.redexgen.core;

import android.os.AsyncTask;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.Executor;

public final class CC extends AsyncTask<AbstractC1726ep, Void, InterfaceC1713ec> implements InterfaceC1723em {
    public static byte[] A04;
    public static String[] A05 = {"QrFR9YxtZmjHUVEKV6oKE4DdGtsrpc8H", "TwcoDq13NGDzrd27uf1NctQWIs88CxA5", "DEQUIzHs8EHMaJWbR5cSGVZv3Gss2W35", "Ai8rFQMQjE1asV4GIWZxLQq3VKhMcnMa", "Q3dsJQvnRhhndIZBGw2JIf13CD9aK", "FSoxIZL2zci1XZCD3aOfhtBMx8TI21HW", "XwCxwzkF49MOW0uOTgxgRHHne1dL58CR", "45IZuxFnerodSJSRUIhMDhHmCeiAV"};
    public InterfaceC1715ee A00;
    public C8 A01;
    public Exception A02;
    public Executor A03;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 14 out of bounds for length 14
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    private final InterfaceC1713ec A00(AbstractC1726ep... abstractC1726epArr) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return null;
        }
        String[] strArr = A05;
        if (strArr[5].charAt(28) != strArr[2].charAt(28)) {
            throw new RuntimeException();
        }
        A05[6] = "rZqzIjYv4aJ5FL2pEqspRVXwv6AN0NL2";
        try {
            if (abstractC1726epArr != null) {
                try {
                    if (abstractC1726epArr.length > 0) {
                        InterfaceC1713ec interfaceC1713ecA0J = this.A01.A0J(abstractC1726epArr[0]);
                        if (this.A01.A0K().A04() && interfaceC1713ecA0J != null) {
                            String.format(Locale.US, A01(108, 21, 5), Integer.valueOf(interfaceC1713ecA0J.A94()), interfaceC1713ecA0J.getUrl(), interfaceC1713ecA0J.A6v());
                        }
                        if (interfaceC1713ecA0J != null) {
                            return interfaceC1713ecA0J;
                        }
                        throw new IllegalStateException(A01(87, 21, 59));
                    }
                } catch (Exception e) {
                    this.A02 = e;
                    if (this.A01.A0K().A04()) {
                        String.format(Locale.US, A01(64, 23, 95), e.getMessage());
                    }
                    cancel(true);
                    return null;
                }
            }
            throw new IllegalArgumentException(A01(0, 64, 49));
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
            return null;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] - i3;
            if (A05[0].charAt(24) != 'G') {
                throw new RuntimeException();
            }
            A05[0] = "mnFvayeDWU8YlLMMxELrFm0bGTjKFJH1";
            bArrCopyOfRange[i4] = (byte) (i5 - 20);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{-119, -76, SocketData.CLAZZ_TYPE_ERROR_CODE, -71, -71, -75, -105, -86, -74, -70, -86, -72, -71, -103, -90, -72, -80, 101, -71, -90, -80, -86, -72, 101, -86, -67, -90, -88, -71, -79, -66, 101, -76, -77, -86, 101, -90, -73, -84, -70, -78, -86, -77, -71, 101, -76, -85, 101, -71, -66, -75, -86, 101, SocketData.CLAZZ_TYPE_ERROR_CODE, -71, -71, -75, -105, -86, -74, -70, -86, -72, -71, -69, -57, -57, -61, -109, -27, -40, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -24, -40, -26, -25, -109, -39, -44, -36, -33, -40, -41, -83, -109, -104, -26, -105, -61, -61, -65, 111, -63, -76, -62, -65, -66, -67, -62, -76, 111, -72, -62, 111, -67, -60, -69, -69, 107, 126, SocketData.CLAZZ_TYPE_CODE, -119, -120, -121, SocketData.CLAZZ_TYPE_CODE, 126, 83, 57, 62, 125, 57, 65, 62, SocketData.CLAZZ_TYPE_CODE, 66, 83, 35, 62, SocketData.CLAZZ_TYPE_CODE};
    }

    static {
        A02();
    }

    public CC(C8 c8, InterfaceC1715ee interfaceC1715ee, Executor executor) {
        this.A01 = c8;
        this.A00 = interfaceC1715ee;
        this.A03 = executor;
    }

    private final void A03(InterfaceC1713ec result) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.ACo(result);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }

    public final void A04(AbstractC1726ep abstractC1726ep) {
        super.executeOnExecutor(this.A03, abstractC1726ep);
    }

    @Override
    public final InterfaceC1713ec doInBackground(AbstractC1726ep[] abstractC1726epArr) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return null;
        }
        try {
            return A00(abstractC1726epArr);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
            return null;
        }
    }

    @Override
    public final void onCancelled() {
        this.A00.ADC(this.A02);
    }

    @Override
    public final void onPostExecute(InterfaceC1713ec interfaceC1713ec) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            A03(interfaceC1713ec);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
