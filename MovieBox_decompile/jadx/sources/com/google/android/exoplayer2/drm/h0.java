package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.media.metrics.LogSessionId;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.u1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public final class h0 implements c0 {

    public static final c0.c f24343d = new c0.c() {
        @Override
        public final c0 a(UUID uuid) {
            return h0.s(uuid);
        }
    };

    private final UUID f24344a;

    private final MediaDrm f24345b;

    private int f24346c;

    private static class a {
        public static boolean a(MediaDrm mediaDrm, String str) {
            return mediaDrm.requiresSecureDecoder(str);
        }

        public static void b(MediaDrm mediaDrm, byte[] bArr, u1 u1Var) {
            LogSessionId logSessionIdA = u1Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            androidx.media3.exoplayer.drm.h0.a(com.google.android.exoplayer2.util.a.e(mediaDrm.getPlaybackComponent(bArr))).setLogSessionId(logSessionIdA);
        }
    }

    private h0(UUID uuid) {
        com.google.android.exoplayer2.util.a.e(uuid);
        com.google.android.exoplayer2.util.a.b(!com.google.android.exoplayer2.l.f24513b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f24344a = uuid;
        MediaDrm mediaDrm = new MediaDrm(m(uuid));
        this.f24345b = mediaDrm;
        this.f24346c = 1;
        if (com.google.android.exoplayer2.l.f24515d.equals(uuid) && t()) {
            o(mediaDrm);
        }
    }

    private static byte[] i(byte[] bArr) {
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(bArr);
        int iQ = d0Var.q();
        short s10 = d0Var.s();
        short s11 = d0Var.s();
        if (s10 != 1 || s11 != 1) {
            com.google.android.exoplayer2.util.s.f("FrameworkMediaDrm", "Unexpected record count or type. Skipping LA_URL workaround.");
            return bArr;
        }
        short s12 = d0Var.s();
        Charset charset = com.google.common.base.c.f29405e;
        String strB = d0Var.B(s12, charset);
        if (strB.contains("<LA_URL>")) {
            return bArr;
        }
        int iIndexOf = strB.indexOf("</DATA>");
        if (iIndexOf == -1) {
            com.google.android.exoplayer2.util.s.i("FrameworkMediaDrm", "Could not find the </DATA> tag. Skipping LA_URL workaround.");
        }
        String str = strB.substring(0, iIndexOf) + "<LA_URL>https://x</LA_URL>" + strB.substring(iIndexOf);
        int i10 = iQ + 52;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i10);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(i10);
        byteBufferAllocate.putShort(s10);
        byteBufferAllocate.putShort(s11);
        byteBufferAllocate.putShort((short) (str.length() * 2));
        byteBufferAllocate.put(str.getBytes(charset));
        return byteBufferAllocate.array();
    }

    private static byte[] j(UUID uuid, byte[] bArr) {
        return com.google.android.exoplayer2.l.f24514c.equals(uuid) ? com.google.android.exoplayer2.drm.a.a(bArr) : bArr;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0058  */
    /* JADX WARN: Code duplicated, block: B:27:0x005e A[RETURN] */
    private static byte[] k(UUID uuid, byte[] bArr) {
        byte[] bArrE;
        UUID uuid2 = com.google.android.exoplayer2.l.f24516e;
        if (uuid2.equals(uuid)) {
            byte[] bArrE2 = q9.l.e(bArr, uuid);
            if (bArrE2 != null) {
                bArr = bArrE2;
            }
            bArr = q9.l.a(uuid2, i(bArr));
        }
        if (p0.f26854a < 23 && com.google.android.exoplayer2.l.f24515d.equals(uuid)) {
            bArrE = q9.l.e(bArr, uuid);
            if (bArrE != null) {
                return bArrE;
            }
        } else if (uuid2.equals(uuid) && "Amazon".equals(p0.f26856c)) {
            String str = p0.f26857d;
            if ("AFTB".equals(str) || "AFTS".equals(str) || "AFTM".equals(str) || "AFTT".equals(str)) {
                bArrE = q9.l.e(bArr, uuid);
                if (bArrE != null) {
                    return bArrE;
                }
            }
        }
        return bArr;
    }

    private static String l(UUID uuid, String str) {
        return (p0.f26854a < 26 && com.google.android.exoplayer2.l.f24514c.equals(uuid) && (MimeTypes.VIDEO_MP4.equals(str) || MimeTypes.AUDIO_MP4.equals(str))) ? C.CENC_TYPE_cenc : str;
    }

    private static UUID m(UUID uuid) {
        return (p0.f26854a >= 27 || !com.google.android.exoplayer2.l.f24514c.equals(uuid)) ? uuid : com.google.android.exoplayer2.l.f24513b;
    }

    private static void o(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    private static DrmInitData.SchemeData q(UUID uuid, List list) {
        if (!com.google.android.exoplayer2.l.f24515d.equals(uuid)) {
            return (DrmInitData.SchemeData) list.get(0);
        }
        if (p0.f26854a >= 28 && list.size() > 1) {
            DrmInitData.SchemeData schemeData = (DrmInitData.SchemeData) list.get(0);
            int i10 = 0;
            int length = 0;
            while (true) {
                if (i10 >= list.size()) {
                    byte[] bArr = new byte[length];
                    int i11 = 0;
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        byte[] bArr2 = (byte[]) com.google.android.exoplayer2.util.a.e(((DrmInitData.SchemeData) list.get(i12)).data);
                        int length2 = bArr2.length;
                        System.arraycopy(bArr2, 0, bArr, i11, length2);
                        i11 += length2;
                    }
                    return schemeData.copyWithData(bArr);
                }
                DrmInitData.SchemeData schemeData2 = (DrmInitData.SchemeData) list.get(i10);
                byte[] bArr3 = (byte[]) com.google.android.exoplayer2.util.a.e(schemeData2.data);
                if (!p0.c(schemeData2.mimeType, schemeData.mimeType) || !p0.c(schemeData2.licenseServerUrl, schemeData.licenseServerUrl) || !q9.l.c(bArr3)) {
                    break;
                }
                length += bArr3.length;
                i10++;
            }
        }
        for (int i13 = 0; i13 < list.size(); i13++) {
            DrmInitData.SchemeData schemeData3 = (DrmInitData.SchemeData) list.get(i13);
            int iG = q9.l.g((byte[]) com.google.android.exoplayer2.util.a.e(schemeData3.data));
            int i14 = p0.f26854a;
            if (i14 < 23 && iG == 0) {
                return schemeData3;
            }
            if (i14 >= 23 && iG == 1) {
                return schemeData3;
            }
        }
        return (DrmInitData.SchemeData) list.get(0);
    }

    public void r(c0.b bVar, MediaDrm mediaDrm, byte[] bArr, int i10, int i11, byte[] bArr2) {
        bVar.a(this, bArr, i10, i11, bArr2);
    }

    public static c0 s(UUID uuid) {
        try {
            return u(uuid);
        } catch (UnsupportedDrmException unused) {
            com.google.android.exoplayer2.util.s.c("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new z();
        }
    }

    private static boolean t() {
        return "ASUS_Z00AD".equals(p0.f26857d);
    }

    public static h0 u(UUID uuid) throws UnsupportedDrmException {
        try {
            return new h0(uuid);
        } catch (UnsupportedSchemeException e10) {
            throw new UnsupportedDrmException(1, e10);
        } catch (Exception e11) {
            throw new UnsupportedDrmException(2, e11);
        }
    }

    @Override
    public int a() {
        return 2;
    }

    @Override
    public boolean c(byte[] bArr, String str) {
        if (p0.f26854a >= 31) {
            return a.a(this.f24345b, str);
        }
        try {
            MediaCrypto mediaCrypto = new MediaCrypto(this.f24344a, bArr);
            try {
                return mediaCrypto.requiresSecureDecoderComponent(str);
            } finally {
                mediaCrypto.release();
            }
        } catch (MediaCryptoException unused) {
            return true;
        }
    }

    @Override
    public void closeSession(byte[] bArr) {
        this.f24345b.closeSession(bArr);
    }

    @Override
    public c0.a d(byte[] bArr, List list, int i10, HashMap map) throws NotProvisionedException {
        DrmInitData.SchemeData schemeDataQ;
        byte[] bArrK;
        String strL;
        if (list != null) {
            schemeDataQ = q(this.f24344a, list);
            bArrK = k(this.f24344a, (byte[]) com.google.android.exoplayer2.util.a.e(schemeDataQ.data));
            strL = l(this.f24344a, schemeDataQ.mimeType);
        } else {
            schemeDataQ = null;
            bArrK = null;
            strL = null;
        }
        MediaDrm.KeyRequest keyRequest = this.f24345b.getKeyRequest(bArr, bArrK, strL, i10, map);
        byte[] bArrJ = j(this.f24344a, keyRequest.getData());
        String defaultUrl = keyRequest.getDefaultUrl();
        if ("https://x".equals(defaultUrl)) {
            defaultUrl = "";
        }
        if (TextUtils.isEmpty(defaultUrl) && schemeDataQ != null && !TextUtils.isEmpty(schemeDataQ.licenseServerUrl)) {
            defaultUrl = schemeDataQ.licenseServerUrl;
        }
        return new c0.a(bArrJ, defaultUrl, p0.f26854a >= 23 ? keyRequest.getRequestType() : Integer.MIN_VALUE);
    }

    @Override
    public void e(final c0.b bVar) {
        this.f24345b.setOnEventListener(bVar == null ? null : new MediaDrm.OnEventListener() {
            @Override
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i10, int i11, byte[] bArr2) {
                this.f24338a.r(bVar, mediaDrm, bArr, i10, i11, bArr2);
            }
        });
    }

    @Override
    public void f(byte[] bArr, u1 u1Var) {
        if (p0.f26854a >= 31) {
            try {
                a.b(this.f24345b, bArr, u1Var);
            } catch (UnsupportedOperationException unused) {
                com.google.android.exoplayer2.util.s.i("FrameworkMediaDrm", "setLogSessionId failed.");
            }
        }
    }

    @Override
    public c0.d getProvisionRequest() {
        MediaDrm.ProvisionRequest provisionRequest = this.f24345b.getProvisionRequest();
        return new c0.d(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override
    public d0 b(byte[] bArr) {
        return new d0(m(this.f24344a), bArr, p0.f26854a < 21 && com.google.android.exoplayer2.l.f24515d.equals(this.f24344a) && "L3".equals(p("securityLevel")));
    }

    @Override
    public byte[] openSession() {
        return this.f24345b.openSession();
    }

    public String p(String str) {
        return this.f24345b.getPropertyString(str);
    }

    @Override
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        if (com.google.android.exoplayer2.l.f24514c.equals(this.f24344a)) {
            bArr2 = com.google.android.exoplayer2.drm.a.b(bArr2);
        }
        return this.f24345b.provideKeyResponse(bArr, bArr2);
    }

    @Override
    public void provideProvisionResponse(byte[] bArr) throws DeniedByServerException {
        this.f24345b.provideProvisionResponse(bArr);
    }

    @Override
    public Map queryKeyStatus(byte[] bArr) {
        return this.f24345b.queryKeyStatus(bArr);
    }

    @Override
    public synchronized void release() {
        int i10 = this.f24346c - 1;
        this.f24346c = i10;
        if (i10 == 0) {
            this.f24345b.release();
        }
    }

    @Override
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        this.f24345b.restoreKeys(bArr, bArr2);
    }
}
