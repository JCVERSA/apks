package com.mbridge.msdk.click;

import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

public class n {

    private static final AtomicInteger f33523d = new AtomicInteger(1);

    private com.mbridge.msdk.setting.g f33524a;

    private String f33525b;

    private int f33526c = 9377;

    public n() {
        com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        this.f33524a = gVarD;
        if (gVarD == null) {
            this.f33524a = com.mbridge.msdk.setting.h.b().a();
        }
    }

    private JSONObject b(String str, CampaignEx campaignEx, boolean z10, boolean z11) {
        JSONObject jSONObject = new JSONObject();
        try {
            Uri uri = Uri.parse(str);
            if (uri != null) {
                String host = uri.getHost();
                String path = uri.getPath();
                String encodedQuery = uri.getEncodedQuery();
                this.f33525b = host;
                jSONObject.put("uri", "https://" + host + path);
                jSONObject.put("data", encodedQuery);
            }
        } catch (Throwable th2) {
            o0.b("SocketSpider", th2.getMessage());
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (!z10 && !z11) {
                jSONObject2.put("User-Agent", k0.i());
            }
            if (campaignEx != null) {
                if (z10 && campaignEx.getcUA() == 1) {
                    jSONObject2.put("User-Agent", k0.i());
                }
                if (z11 && campaignEx.getImpUA() == 1) {
                    jSONObject2.put("User-Agent", k0.i());
                }
            } else {
                jSONObject2.put("User-Agent", k0.i());
            }
            jSONObject2.put("Accept-Encoding", "gzip");
            if (this.f33524a.I0() && !TextUtils.isEmpty(str)) {
                jSONObject2.put(RequestParameters.SUBRESOURCE_REFERER, str);
            }
            jSONObject.put("header", jSONObject2);
        } catch (Throwable th3) {
            o0.b("SocketSpider", th3.getMessage());
        }
        return jSONObject;
    }

    public com.mbridge.msdk.click.entity.a a(String str, CampaignEx campaignEx, boolean z10, boolean z11) {
        com.mbridge.msdk.click.entity.a aVar = new com.mbridge.msdk.click.entity.a();
        aVar.f33485g = str;
        if (TextUtils.isEmpty(str)) {
            aVar.f33486h = "request url can not null.";
            return aVar;
        }
        String strReplace = str.replace(" ", "%20");
        JSONObject jSONObjectB = b(strReplace, campaignEx, z10, z11);
        if (jSONObjectB.length() == 0) {
            aVar.f33486h = "request content generation failed.";
            return aVar;
        }
        if (TextUtils.isEmpty(jSONObjectB.optString("uri"))) {
            aVar.f33486h = "request url parse error.";
            return aVar;
        }
        if (campaignEx != null) {
            int trackingTcpPort = campaignEx.getTrackingTcpPort();
            if (trackingTcpPort == 0) {
                trackingTcpPort = 9377;
            }
            this.f33526c = trackingTcpPort;
        }
        if (!TextUtils.isEmpty(this.f33525b)) {
            return a(strReplace, jSONObjectB.toString());
        }
        aVar.f33486h = "request url parse error.";
        return aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private com.mbridge.msdk.click.entity.a a(String str, String str2) {
        OutputStream outputStream;
        int length;
        String str3;
        com.mbridge.msdk.click.entity.a aVar = new com.mbridge.msdk.click.entity.a();
        Socket socket = null;
        OutputStream outputStream2 = null;
        try {
            Socket socket2 = new Socket(this.f33525b, this.f33526c);
            try {
                socket2.setSoTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
                outputStream2 = socket2.getOutputStream();
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[8]);
                ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
                byteBufferWrap.order(byteOrder);
                byteBufferWrap.put((byte) 2);
                byteBufferWrap.put((byte) 3);
                byteBufferWrap.putShort((short) f33523d.getAndIncrement());
                if (TextUtils.isEmpty(str2)) {
                    byteBufferWrap.putInt(0);
                    outputStream2.write(byteBufferWrap.array());
                    length = 0;
                } else {
                    byte[] bArrA = a(str2);
                    length = bArrA.length;
                    byteBufferWrap.putInt(length);
                    outputStream2.write(byteBufferWrap.array());
                    outputStream2.write(bArrA);
                }
                outputStream2.flush();
                o0.a("SocketSpider", "Socket Request : header : " + Arrays.toString(byteBufferWrap.array()) + " length : " + length);
                InputStream inputStream = socket2.getInputStream();
                byte[] bArr = new byte[8];
                inputStream.read(bArr, 0, 8);
                ByteBuffer byteBufferWrap2 = ByteBuffer.wrap(bArr);
                byteBufferWrap2.order(byteOrder);
                int i10 = byteBufferWrap2.getInt(4);
                byte b10 = bArr[1];
                boolean z10 = b10 == 3;
                Object[] objArr = b10 == 2;
                o0.b("SocketSpider", "Socket Response : header : " + Arrays.toString(bArr) + " length : " + i10 + " isGzip : " + z10);
                byte[] bArr2 = new byte[i10];
                new DataInputStream(socket2.getInputStream()).readFully(bArr2);
                if (!z10 && i10 > 2 && ((bArr2[0] << 8) | (bArr2[1] & 255)) == 8075) {
                    z10 = true;
                }
                if (objArr == true && i10 == 0) {
                    aVar.f33484f = 200;
                    aVar.f33485g = str;
                    aVar.f33483e = 0;
                    try {
                        socket2.close();
                        outputStream2.close();
                    } catch (Exception e10) {
                        o0.b("SocketSpider", e10.getMessage());
                    }
                    return aVar;
                }
                if (i10 < 1) {
                    aVar.f33484f = 200;
                    aVar.f33485g = str;
                    aVar.f33483e = 0;
                    try {
                        socket2.close();
                        outputStream2.close();
                    } catch (Exception e11) {
                        o0.b("SocketSpider", e11.getMessage());
                    }
                    return aVar;
                }
                try {
                    if (z10) {
                        str3 = a(bArr2);
                    } else {
                        str3 = new String(bArr2);
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        aVar.f33484f = 200;
                        aVar.f33485g = str;
                        aVar.f33483e = 0;
                        try {
                            JSONObject jSONObjectOptJSONObject = new JSONObject(str3).optJSONObject("data");
                            if (jSONObjectOptJSONObject != null) {
                                String strOptString = jSONObjectOptJSONObject.optString(RequestParameters.SUBRESOURCE_LOCATION);
                                if (!TextUtils.isEmpty(strOptString)) {
                                    aVar.f33484f = Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE;
                                    aVar.f33479a = strOptString;
                                }
                            }
                        } catch (Throwable th2) {
                            o0.b("SocketSpider", th2.getMessage());
                        }
                        try {
                            socket2.close();
                            outputStream2.close();
                        } catch (Exception e12) {
                            o0.b("SocketSpider", e12.getMessage());
                        }
                        return aVar;
                    }
                } catch (Throwable th3) {
                    o0.b("SocketSpider", th3.getMessage());
                    aVar.f33486h = th3.getMessage();
                }
                inputStream.close();
                try {
                    socket2.close();
                    outputStream2.close();
                } catch (Exception e13) {
                    o0.b("SocketSpider", e13.getMessage());
                }
            } catch (Throwable th4) {
                th = th4;
                outputStream = outputStream2;
                socket = socket2;
                try {
                    o0.a("SocketSpider", "Socket exception: " + th.getMessage());
                    aVar.f33486h = th.getMessage();
                } finally {
                    if (socket != null) {
                        try {
                            socket.close();
                            if (outputStream != null) {
                                outputStream.close();
                            }
                        } catch (Exception e14) {
                            o0.b("SocketSpider", e14.getMessage());
                        }
                    }
                }
            }
        } catch (Throwable th5) {
            th = th5;
            outputStream = null;
        }
        return aVar;
    }

    public byte[] a(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(str.getBytes());
        gZIPOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public String a(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
        byte[] bArr2 = new byte[1024];
        while (true) {
            int i10 = gZIPInputStream.read(bArr2, 0, 1024);
            if (i10 > 0) {
                byteArrayOutputStream.write(bArr2, 0, i10);
            } else {
                gZIPInputStream.close();
                byteArrayInputStream.close();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                return byteArrayOutputStream.toString();
            }
        }
    }
}
