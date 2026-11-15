package com.facebook.ads.redexgen.core;

import android.util.Log;
import com.transsion.socket.pkgdata.SocketData;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.util.Arrays;

public abstract class CF implements InterfaceC1729es {
    public static byte[] A01;
    public final InterfaceC1730et A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 25);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{108, SocketData.CLAZZ_TYPE_FILE, SocketData.CLAZZ_TYPE_FILE, -112, -101, -97, 88, 110, -109, SocketData.CLAZZ_TYPE_CODE, -99, -98, -112, -97, -42, -11, 7, -3, -9, -26, -7, 5, 9, -7, 7, 8, -36, -11, 2, -8, 0, -7, 6, -62, 3, 2, -39, 6, 6, 3, 6, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -82, -83, -77, -92, -83, -77, 108, -109, -72, -81, -92, SocketData.CLAZZ_TYPE_SEND_PACKAGE, SocketData.CLAZZ_TYPE_HEART_BEAT, 115, 90, 101};
    }

    public CF(InterfaceC1730et interfaceC1730et) {
        this.A00 = interfaceC1730et;
    }

    @Override
    public final boolean ADE(C1727eq c1727eq) {
        InterfaceC1713ec interfaceC1713ecA00 = c1727eq.A00();
        if (this.A00.AAQ()) {
            Log.e(CF.class.getSimpleName(), A00(14, 27, 123), c1727eq);
        }
        if (interfaceC1713ecA00 != null && interfaceC1713ecA00.A94() > 0) {
            return true;
        }
        return false;
    }

    @Override
    public final HttpURLConnection AG1(String str, Proxy proxy) throws IOException {
        URL url = new URL(str);
        if (proxy == null) {
            return (HttpURLConnection) url.openConnection();
        }
        return (HttpURLConnection) url.openConnection(proxy);
    }

    @Override
    public final InputStream AG2(HttpURLConnection httpURLConnection) throws IOException {
        return httpURLConnection.getInputStream();
    }

    @Override
    public final OutputStream AG3(HttpURLConnection httpURLConnection) throws IOException {
        return httpURLConnection.getOutputStream();
    }

    @Override
    public final void AGM(HttpURLConnection httpURLConnection, EnumC1725eo enumC1725eo, String str) throws IOException {
        httpURLConnection.setRequestMethod(enumC1725eo.A03());
        httpURLConnection.setDoOutput(enumC1725eo.A05());
        httpURLConnection.setDoInput(enumC1725eo.A04());
        if (str != null) {
            httpURLConnection.setRequestProperty(A00(41, 12, 38), str);
        }
        httpURLConnection.setRequestProperty(A00(0, 14, 18), A00(53, 5, 20));
    }

    @Override
    public final byte[] AGj(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[16384];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i = inputStream.read(bArr);
            if (i != -1) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                byteArrayOutputStream.flush();
                byte[] data = byteArrayOutputStream.toByteArray();
                return data;
            }
        }
    }

    @Override
    public final void AKN(OutputStream outputStream, byte[] bArr) throws IOException {
        outputStream.write(bArr);
    }
}
