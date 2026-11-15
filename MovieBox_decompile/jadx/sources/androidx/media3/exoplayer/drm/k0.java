package androidx.media3.exoplayer.drm;

import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.text.TextUtils;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import x1.f4;

public final class k0 implements b0 {

    public static final b0.c f11273d = new b0.c() {
        @Override
        public final b0 a(UUID uuid) {
            return k0.v(uuid);
        }
    };

    private final UUID f11274a;

    private final MediaDrm f11275b;

    private int f11276c;

    private static class a {
        public static boolean a(MediaDrm mediaDrm, String str, int i10) {
            return mediaDrm.requiresSecureDecoder(str, i10);
        }

        public static void b(MediaDrm mediaDrm, byte[] bArr, f4 f4Var) {
            LogSessionId logSessionIdA = f4Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            h0.a(androidx.media3.common.util.a.e(mediaDrm.getPlaybackComponent(bArr))).setLogSessionId(logSessionIdA);
        }
    }

    private k0(UUID uuid) {
        androidx.media3.common.util.a.e(uuid);
        androidx.media3.common.util.a.b(!androidx.media3.common.h.f9670b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f11274a = uuid;
        MediaDrm mediaDrm = new MediaDrm(n(uuid));
        this.f11275b = mediaDrm;
        this.f11276c = 1;
        if (androidx.media3.common.h.f9672d.equals(uuid) && w()) {
            q(mediaDrm);
        }
    }

    private static byte[] i(byte[] bArr) {
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(bArr);
        int iU = j0Var.u();
        short sW = j0Var.w();
        short sW2 = j0Var.w();
        if (sW != 1 || sW2 != 1) {
            androidx.media3.common.util.u.f("FrameworkMediaDrm", "Unexpected record count or type. Skipping LA_URL workaround.");
            return bArr;
        }
        short sW3 = j0Var.w();
        Charset charset = StandardCharsets.UTF_16LE;
        String strF = j0Var.F(sW3, charset);
        if (strF.contains("<LA_URL>")) {
            return bArr;
        }
        int iIndexOf = strF.indexOf("</DATA>");
        if (iIndexOf == -1) {
            androidx.media3.common.util.u.h("FrameworkMediaDrm", "Could not find the </DATA> tag. Skipping LA_URL workaround.");
        }
        String str = strF.substring(0, iIndexOf) + "<LA_URL>https://x</LA_URL>" + strF.substring(iIndexOf);
        int i10 = iU + 52;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i10);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(i10);
        byteBufferAllocate.putShort(sW);
        byteBufferAllocate.putShort(sW2);
        byteBufferAllocate.putShort((short) (str.length() * 2));
        byteBufferAllocate.put(str.getBytes(charset));
        return byteBufferAllocate.array();
    }

    private String j(String str) {
        if ("<LA_URL>https://x</LA_URL>".equals(str)) {
            return "";
        }
        if (a1.f10038a >= 33 && "https://default.url".equals(str)) {
            String strR = r("version");
            if (Objects.equals(strR, "1.2") || Objects.equals(strR, "aidl-1")) {
                return "";
            }
        }
        return str;
    }

    private static byte[] k(UUID uuid, byte[] bArr) {
        return androidx.media3.common.h.f9671c.equals(uuid) ? androidx.media3.exoplayer.drm.a.a(bArr) : bArr;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x006e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0074 A[RETURN] */
    private static byte[] l(UUID uuid, byte[] bArr) {
        byte[] bArrE;
        e3.p.a aVarD;
        UUID uuid2 = androidx.media3.common.h.f9673e;
        if (uuid2.equals(uuid)) {
            byte[] bArrE2 = e3.p.e(bArr, uuid);
            if (bArrE2 != null) {
                bArr = bArrE2;
            }
            bArr = e3.p.a(uuid2, i(bArr));
        }
        if (o(uuid) && (aVarD = e3.p.d(bArr)) != null) {
            bArr = e3.p.b(androidx.media3.common.h.f9670b, aVarD.f59392d, aVarD.f59391c);
        }
        if (a1.f10038a < 23 && androidx.media3.common.h.f9672d.equals(uuid)) {
            bArrE = e3.p.e(bArr, uuid);
            if (bArrE != null) {
                return bArrE;
            }
        } else if (uuid2.equals(uuid) && "Amazon".equals(Build.MANUFACTURER)) {
            String str = Build.MODEL;
            if ("AFTB".equals(str) || "AFTS".equals(str) || "AFTM".equals(str) || "AFTT".equals(str)) {
                bArrE = e3.p.e(bArr, uuid);
                if (bArrE != null) {
                    return bArrE;
                }
            }
        }
        return bArr;
    }

    private static String m(UUID uuid, String str) {
        return (a1.f10038a < 26 && androidx.media3.common.h.f9671c.equals(uuid) && (MimeTypes.VIDEO_MP4.equals(str) || MimeTypes.AUDIO_MP4.equals(str))) ? C.CENC_TYPE_cenc : str;
    }

    private static UUID n(UUID uuid) {
        return o(uuid) ? androidx.media3.common.h.f9670b : uuid;
    }

    private static boolean o(UUID uuid) {
        return a1.f10038a < 27 && Objects.equals(uuid, androidx.media3.common.h.f9671c);
    }

    private static void q(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    private static DrmInitData.SchemeData s(UUID uuid, List list) {
        if (!androidx.media3.common.h.f9672d.equals(uuid)) {
            return (DrmInitData.SchemeData) list.get(0);
        }
        if (a1.f10038a >= 28 && list.size() > 1) {
            DrmInitData.SchemeData schemeData = (DrmInitData.SchemeData) list.get(0);
            int i10 = 0;
            int length = 0;
            while (true) {
                if (i10 >= list.size()) {
                    byte[] bArr = new byte[length];
                    int i11 = 0;
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        byte[] bArr2 = (byte[]) androidx.media3.common.util.a.e(((DrmInitData.SchemeData) list.get(i12)).data);
                        int length2 = bArr2.length;
                        System.arraycopy(bArr2, 0, bArr, i11, length2);
                        i11 += length2;
                    }
                    return schemeData.copyWithData(bArr);
                }
                DrmInitData.SchemeData schemeData2 = (DrmInitData.SchemeData) list.get(i10);
                byte[] bArr3 = (byte[]) androidx.media3.common.util.a.e(schemeData2.data);
                if (!Objects.equals(schemeData2.mimeType, schemeData.mimeType) || !Objects.equals(schemeData2.licenseServerUrl, schemeData.licenseServerUrl) || !e3.p.c(bArr3)) {
                    break;
                }
                length += bArr3.length;
                i10++;
            }
        }
        for (int i13 = 0; i13 < list.size(); i13++) {
            DrmInitData.SchemeData schemeData3 = (DrmInitData.SchemeData) list.get(i13);
            int iG = e3.p.g((byte[]) androidx.media3.common.util.a.e(schemeData3.data));
            int i14 = a1.f10038a;
            if (i14 < 23 && iG == 0) {
                return schemeData3;
            }
            if (i14 >= 23 && iG == 1) {
                return schemeData3;
            }
        }
        return (DrmInitData.SchemeData) list.get(0);
    }

    private boolean t() {
        if (!this.f11274a.equals(androidx.media3.common.h.f9672d)) {
            return this.f11274a.equals(androidx.media3.common.h.f9671c);
        }
        String strR = r("version");
        return (strR.startsWith("v5.") || strR.startsWith("14.") || strR.startsWith("15.") || strR.startsWith("16.0")) ? false : true;
    }

    public void u(b0.b bVar, MediaDrm mediaDrm, byte[] bArr, int i10, int i11, byte[] bArr2) {
        bVar.a(this, bArr, i10, i11, bArr2);
    }

    public static b0 v(UUID uuid) {
        try {
            return x(uuid);
        } catch (UnsupportedDrmException unused) {
            androidx.media3.common.util.u.c("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new y();
        }
    }

    private static boolean w() {
        return "ASUS_Z00AD".equals(Build.MODEL);
    }

    public static k0 x(UUID uuid) throws UnsupportedDrmException {
        try {
            return new k0(uuid);
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
    public boolean c(byte[] bArr, String str) throws Throwable {
        boolean zRequiresSecureDecoderComponent;
        if (a1.f10038a >= 31 && t()) {
            MediaDrm mediaDrm = this.f11275b;
            return a.a(mediaDrm, str, mediaDrm.getSecurityLevel(bArr));
        }
        MediaCrypto mediaCrypto = null;
        try {
            try {
                MediaCrypto mediaCrypto2 = new MediaCrypto(n(this.f11274a), bArr);
                try {
                    zRequiresSecureDecoderComponent = mediaCrypto2.requiresSecureDecoderComponent(str);
                    mediaCrypto2.release();
                } catch (MediaCryptoException unused) {
                    mediaCrypto = mediaCrypto2;
                    zRequiresSecureDecoderComponent = !this.f11274a.equals(androidx.media3.common.h.f9671c);
                    if (mediaCrypto != null) {
                        mediaCrypto.release();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    mediaCrypto = mediaCrypto2;
                    if (mediaCrypto != null) {
                        mediaCrypto.release();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (MediaCryptoException unused2) {
        }
        return zRequiresSecureDecoderComponent;
    }

    @Override
    public void closeSession(byte[] bArr) {
        this.f11275b.closeSession(bArr);
    }

    @Override
    public b0.a d(byte[] bArr, List list, int i10, HashMap map) throws NotProvisionedException {
        DrmInitData.SchemeData schemeDataS;
        byte[] bArrL;
        String strM;
        if (list != null) {
            schemeDataS = s(this.f11274a, list);
            bArrL = l(this.f11274a, (byte[]) androidx.media3.common.util.a.e(schemeDataS.data));
            strM = m(this.f11274a, schemeDataS.mimeType);
        } else {
            schemeDataS = null;
            bArrL = null;
            strM = null;
        }
        MediaDrm.KeyRequest keyRequest = this.f11275b.getKeyRequest(bArr, bArrL, strM, i10, map);
        byte[] bArrK = k(this.f11274a, keyRequest.getData());
        String strJ = j(keyRequest.getDefaultUrl());
        if (TextUtils.isEmpty(strJ) && schemeDataS != null && !TextUtils.isEmpty(schemeDataS.licenseServerUrl)) {
            strJ = schemeDataS.licenseServerUrl;
        }
        return new b0.a(bArrK, strJ, a1.f10038a >= 23 ? keyRequest.getRequestType() : Integer.MIN_VALUE);
    }

    @Override
    public void e(final b0.b bVar) {
        this.f11275b.setOnEventListener(bVar == null ? null : new MediaDrm.OnEventListener() {
            @Override
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i10, int i11, byte[] bArr2) {
                this.f11261a.u(bVar, mediaDrm, bArr, i10, i11, bArr2);
            }
        });
    }

    @Override
    public void f(byte[] bArr, f4 f4Var) {
        if (a1.f10038a >= 31) {
            try {
                a.b(this.f11275b, bArr, f4Var);
            } catch (UnsupportedOperationException unused) {
                androidx.media3.common.util.u.h("FrameworkMediaDrm", "setLogSessionId failed.");
            }
        }
    }

    @Override
    public b0.d getProvisionRequest() {
        MediaDrm.ProvisionRequest provisionRequest = this.f11275b.getProvisionRequest();
        return new b0.d(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override
    public byte[] openSession() {
        return this.f11275b.openSession();
    }

    @Override
    public c0 b(byte[] bArr) {
        return new c0(n(this.f11274a), bArr);
    }

    @Override
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        if (androidx.media3.common.h.f9671c.equals(this.f11274a)) {
            bArr2 = androidx.media3.exoplayer.drm.a.b(bArr2);
        }
        return this.f11275b.provideKeyResponse(bArr, bArr2);
    }

    @Override
    public void provideProvisionResponse(byte[] bArr) throws DeniedByServerException {
        this.f11275b.provideProvisionResponse(bArr);
    }

    @Override
    public Map queryKeyStatus(byte[] bArr) {
        return this.f11275b.queryKeyStatus(bArr);
    }

    public String r(String str) {
        return this.f11275b.getPropertyString(str);
    }

    @Override
    public synchronized void release() {
        int i10 = this.f11276c - 1;
        this.f11276c = i10;
        if (i10 == 0) {
            this.f11275b.release();
        }
    }

    @Override
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        this.f11275b.restoreKeys(bArr, bArr2);
    }
}
