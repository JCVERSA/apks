package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.exoplayer2.drm.g;
import com.google.android.exoplayer2.drm.h;
import defpackage.blb;
import defpackage.c64;
import defpackage.hk8;
import defpackage.o64;
import defpackage.op5;
import defpackage.qw7;
import defpackage.rv0;
import defpackage.ta8;
import defpackage.to0;
import defpackage.tx0;
import defpackage.zi;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public final class h implements g {
    public static final g.f d = new g.f() {
        @Override
        public final g acquireExoMediaDrm(UUID uuid) {
            return h.r(uuid);
        }
    };
    public final UUID a;
    public final MediaDrm b;
    public int c;

    public static class a {
        @DoNotInline
        public static boolean a(MediaDrm mediaDrm, String str) {
            return mediaDrm.requiresSecureDecoder(str);
        }

        @DoNotInline
        public static void b(MediaDrm mediaDrm, byte[] bArr, ta8 ta8Var) {
            LogSessionId logSessionIdA = ta8Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            o64.a(zi.e(mediaDrm.getPlaybackComponent(bArr))).setLogSessionId(logSessionIdA);
        }
    }

    public h(UUID uuid) {
        zi.e(uuid);
        zi.b(!to0.b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.a = uuid;
        MediaDrm mediaDrm = new MediaDrm(j(uuid));
        this.b = mediaDrm;
        this.c = 1;
        if (to0.d.equals(uuid) && s()) {
            l(mediaDrm);
        }
    }

    public static byte[] f(byte[] bArr) {
        qw7 qw7Var = new qw7(bArr);
        int iP = qw7Var.p();
        short sR = qw7Var.r();
        short sR2 = qw7Var.r();
        if (sR != 1 || sR2 != 1) {
            op5.f("FrameworkMediaDrm", "Unexpected record count or type. Skipping LA_URL workaround.");
            return bArr;
        }
        short sR3 = qw7Var.r();
        Charset charset = rv0.e;
        String strA = qw7Var.A(sR3, charset);
        if (strA.contains("<LA_URL>")) {
            return bArr;
        }
        int iIndexOf = strA.indexOf("</DATA>");
        if (iIndexOf == -1) {
            op5.i("FrameworkMediaDrm", "Could not find the </DATA> tag. Skipping LA_URL workaround.");
        }
        String str = strA.substring(0, iIndexOf) + "<LA_URL>https://x</LA_URL>" + strA.substring(iIndexOf);
        int i = iP + 52;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.putShort(sR);
        byteBufferAllocate.putShort(sR2);
        byteBufferAllocate.putShort((short) (str.length() * 2));
        byteBufferAllocate.put(str.getBytes(charset));
        return byteBufferAllocate.array();
    }

    public static byte[] g(UUID uuid, byte[] bArr) {
        return to0.c.equals(uuid) ? tx0.a(bArr) : bArr;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0058  */
    /* JADX WARN: Code duplicated, block: B:27:0x005e A[RETURN] */
    public static byte[] h(UUID uuid, byte[] bArr) {
        byte[] bArrE;
        UUID uuid2 = to0.e;
        if (uuid2.equals(uuid)) {
            byte[] bArrE2 = hk8.e(bArr, uuid);
            if (bArrE2 != null) {
                bArr = bArrE2;
            }
            bArr = hk8.a(uuid2, f(bArr));
        }
        if (blb.a < 23 && to0.d.equals(uuid)) {
            bArrE = hk8.e(bArr, uuid);
            if (bArrE != null) {
                return bArrE;
            }
        } else if (uuid2.equals(uuid) && "Amazon".equals(blb.c)) {
            String str = blb.d;
            if ("AFTB".equals(str) || "AFTS".equals(str) || "AFTM".equals(str) || "AFTT".equals(str)) {
                bArrE = hk8.e(bArr, uuid);
                if (bArrE != null) {
                    return bArrE;
                }
            }
        }
        return bArr;
    }

    public static String i(UUID uuid, String str) {
        return (blb.a < 26 && to0.c.equals(uuid) && (MimeTypes.VIDEO_MP4.equals(str) || MimeTypes.AUDIO_MP4.equals(str))) ? C.CENC_TYPE_cenc : str;
    }

    public static UUID j(UUID uuid) {
        return (blb.a >= 27 || !to0.c.equals(uuid)) ? uuid : to0.b;
    }

    public static void l(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    public static DrmInitData.SchemeData n(UUID uuid, List list) {
        if (!to0.d.equals(uuid)) {
            return (DrmInitData.SchemeData) list.get(0);
        }
        if (blb.a >= 28 && list.size() > 1) {
            DrmInitData.SchemeData schemeData = (DrmInitData.SchemeData) list.get(0);
            int i = 0;
            int length = 0;
            while (true) {
                if (i >= list.size()) {
                    byte[] bArr = new byte[length];
                    int i2 = 0;
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        byte[] bArr2 = (byte[]) zi.e(((DrmInitData.SchemeData) list.get(i3)).data);
                        int length2 = bArr2.length;
                        System.arraycopy(bArr2, 0, bArr, i2, length2);
                        i2 += length2;
                    }
                    return schemeData.copyWithData(bArr);
                }
                DrmInitData.SchemeData schemeData2 = (DrmInitData.SchemeData) list.get(i);
                byte[] bArr3 = (byte[]) zi.e(schemeData2.data);
                if (!blb.c(schemeData2.mimeType, schemeData.mimeType) || !blb.c(schemeData2.licenseServerUrl, schemeData.licenseServerUrl) || !hk8.c(bArr3)) {
                    break;
                }
                length += bArr3.length;
                i++;
            }
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            DrmInitData.SchemeData schemeData3 = (DrmInitData.SchemeData) list.get(i4);
            int iG = hk8.g((byte[]) zi.e(schemeData3.data));
            int i5 = blb.a;
            if (i5 < 23 && iG == 0) {
                return schemeData3;
            }
            if (i5 >= 23 && iG == 1) {
                return schemeData3;
            }
        }
        return (DrmInitData.SchemeData) list.get(0);
    }

    public static g r(UUID uuid) {
        try {
            return t(uuid);
        } catch (UnsupportedDrmException unused) {
            op5.c("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + Consts.DOT);
            return new e();
        }
    }

    public static boolean s() {
        return "ASUS_Z00AD".equals(blb.d);
    }

    public static h t(UUID uuid) throws UnsupportedDrmException {
        try {
            return new h(uuid);
        } catch (UnsupportedSchemeException e) {
            throw new UnsupportedDrmException(1, e);
        } catch (Exception e2) {
            throw new UnsupportedDrmException(2, e2);
        }
    }

    @Override
    public void a(byte[] bArr, ta8 ta8Var) {
        if (blb.a >= 31) {
            try {
                a.b(this.b, bArr, ta8Var);
            } catch (UnsupportedOperationException unused) {
                op5.i("FrameworkMediaDrm", "setLogSessionId failed.");
            }
        }
    }

    @Override
    public void closeSession(byte[] bArr) {
        this.b.closeSession(bArr);
    }

    @Override
    public int getCryptoType() {
        return 2;
    }

    @Override
    public g.a getKeyRequest(byte[] bArr, List list, int i, HashMap map) throws NotProvisionedException {
        DrmInitData.SchemeData schemeDataN;
        byte[] bArrH;
        String strI;
        if (list != null) {
            schemeDataN = n(this.a, list);
            bArrH = h(this.a, (byte[]) zi.e(schemeDataN.data));
            strI = i(this.a, schemeDataN.mimeType);
        } else {
            schemeDataN = null;
            bArrH = null;
            strI = null;
        }
        MediaDrm.KeyRequest keyRequest = this.b.getKeyRequest(bArr, bArrH, strI, i, map);
        byte[] bArrG = g(this.a, keyRequest.getData());
        String defaultUrl = keyRequest.getDefaultUrl();
        if ("https://x".equals(defaultUrl)) {
            defaultUrl = "";
        }
        if (TextUtils.isEmpty(defaultUrl) && schemeDataN != null && !TextUtils.isEmpty(schemeDataN.licenseServerUrl)) {
            defaultUrl = schemeDataN.licenseServerUrl;
        }
        return new g.a(bArrG, defaultUrl, blb.a >= 23 ? keyRequest.getRequestType() : Integer.MIN_VALUE);
    }

    @Override
    public g.C0079g getProvisionRequest() {
        MediaDrm.ProvisionRequest provisionRequest = this.b.getProvisionRequest();
        return new g.C0079g(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override
    public c64 createCryptoConfig(byte[] bArr) {
        return new c64(j(this.a), bArr, blb.a < 21 && to0.d.equals(this.a) && "L3".equals(m("securityLevel")));
    }

    public String m(String str) {
        return this.b.getPropertyString(str);
    }

    public final void o(g.c cVar, MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
        cVar.a(this, bArr, i, i2, bArr2);
    }

    @Override
    public byte[] openSession() {
        return this.b.openSession();
    }

    public final void p(g.d dVar, MediaDrm mediaDrm, byte[] bArr, long j) {
        dVar.a(this, bArr, j);
    }

    @Override
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        if (to0.c.equals(this.a)) {
            bArr2 = tx0.b(bArr2);
        }
        return this.b.provideKeyResponse(bArr, bArr2);
    }

    @Override
    public void provideProvisionResponse(byte[] bArr) throws DeniedByServerException {
        this.b.provideProvisionResponse(bArr);
    }

    public final void q(g.e eVar, MediaDrm mediaDrm, byte[] bArr, List list, boolean z) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaDrm.KeyStatus keyStatus = (MediaDrm.KeyStatus) it.next();
            arrayList.add(new g.b(keyStatus.getStatusCode(), keyStatus.getKeyId()));
        }
        eVar.a(this, bArr, arrayList, z);
    }

    @Override
    public Map queryKeyStatus(byte[] bArr) {
        return this.b.queryKeyStatus(bArr);
    }

    @Override
    public synchronized void release() {
        int i = this.c - 1;
        this.c = i;
        if (i == 0) {
            this.b.release();
        }
    }

    @Override
    public boolean requiresSecureDecoder(byte[] bArr, String str) {
        if (blb.a >= 31) {
            return a.a(this.b, str);
        }
        try {
            MediaCrypto mediaCrypto = new MediaCrypto(this.a, bArr);
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
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        this.b.restoreKeys(bArr, bArr2);
    }

    @Override
    public void setOnEventListener(@Nullable final g.c cVar) {
        this.b.setOnEventListener(cVar == null ? null : new MediaDrm.OnEventListener() {
            @Override
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
                this.a.o(cVar, mediaDrm, bArr, i, i2, bArr2);
            }
        });
    }

    @Override
    @RequiresApi(23)
    public void setOnExpirationUpdateListener(@Nullable final g.d dVar) {
        if (blb.a < 23) {
            throw new UnsupportedOperationException();
        }
        this.b.setOnExpirationUpdateListener(dVar == null ? null : new MediaDrm.OnExpirationUpdateListener(dVar) {
            @Override
            public final void onExpirationUpdate(MediaDrm mediaDrm, byte[] bArr, long j) {
                this.a.p(null, mediaDrm, bArr, j);
            }
        }, (Handler) null);
    }

    @Override
    @RequiresApi(23)
    public void setOnKeyStatusChangeListener(@Nullable final g.e eVar) {
        if (blb.a < 23) {
            throw new UnsupportedOperationException();
        }
        this.b.setOnKeyStatusChangeListener(eVar == null ? null : new MediaDrm.OnKeyStatusChangeListener(eVar) {
            @Override
            public final void onKeyStatusChange(MediaDrm mediaDrm, byte[] bArr, List list, boolean z) {
                this.a.q(null, mediaDrm, bArr, list, z);
            }
        }, (Handler) null);
    }
}
