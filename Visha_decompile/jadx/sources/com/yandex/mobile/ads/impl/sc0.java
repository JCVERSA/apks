package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.media.metrics.LogSessionId;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.container.Mp4Box;
import com.alibaba.android.arouter.utils.Consts;
import com.yandex.mobile.ads.impl.l60;
import com.yandex.mobile.ads.impl.sc0;
import defpackage.y45;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.apache.commons.io.IOUtils;

@RequiresApi(18)
public final class sc0 implements l60 {
    private static final tc0 d = nm1.b();
    public static final l60.c e = new l60.c() {
        @Override
        public final l60 a(UUID uuid) {
            return sc0.b(uuid);
        }
    };
    private final UUID a;
    private final MediaDrm b;
    private int c;

    @RequiresApi(31)
    public static class a {
        @DoNotInline
        public static boolean a(MediaDrm mediaDrm, String str) {
            return mediaDrm.requiresSecureDecoder(str);
        }

        @DoNotInline
        public static void a(MediaDrm mediaDrm, byte[] bArr, mi1 mi1Var) {
            LogSessionId logSessionIdA = mi1Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            MediaDrm.PlaybackComponent playbackComponent = mediaDrm.getPlaybackComponent(bArr);
            playbackComponent.getClass();
            playbackComponent.setLogSessionId(logSessionIdA);
        }
    }

    private sc0(UUID uuid) throws UnsupportedSchemeException {
        hg.a(uuid);
        hg.a("Use C.CLEARKEY_UUID instead", !rm.b.equals(uuid));
        this.a = uuid;
        MediaDrm mediaDrm = new MediaDrm(a(uuid));
        this.b = mediaDrm;
        this.c = 1;
        if (rm.d.equals(uuid) && d()) {
            a(mediaDrm);
        }
    }

    @Override
    public final int b() {
        return 2;
    }

    @Override
    public final byte[] c() throws MediaDrmException {
        return this.b.openSession();
    }

    @Override
    public final synchronized void release() {
        int i = this.c - 1;
        this.c = i;
        if (i == 0) {
            this.b.release();
        }
    }

    private static void a(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    @Override
    public final void b(byte[] bArr) {
        this.b.closeSession(bArr);
    }

    @Override
    public final void c(byte[] bArr) throws DeniedByServerException {
        this.b.provideProvisionResponse(bArr);
    }

    @Override
    public final fv d(byte[] bArr) throws MediaCryptoException {
        return new rc0(a(this.a), bArr, f92.a < 21 && rm.d.equals(this.a) && "L3".equals(this.b.getPropertyString("securityLevel")));
    }

    public static l60 b(UUID uuid) {
        try {
            return c(uuid);
        } catch (l82 unused) {
            et0.b("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + Consts.DOT);
            return new p40();
        }
    }

    public static sc0 c(UUID uuid) throws l82 {
        try {
            return new sc0(uuid);
        } catch (UnsupportedSchemeException e2) {
            throw new l82(e2);
        } catch (Exception e3) {
            throw new l82(e3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:121:0x00ae A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x008f  */
    /* JADX WARN: Code duplicated, block: B:81:0x0209  */
    /* JADX WARN: Code duplicated, block: B:83:0x020f  */
    @Override
    @SuppressLint({"WrongConstant"})
    public final l60.a a(byte[] bArr, @Nullable List<f40.b> list, int i, @Nullable HashMap<String, String> map) throws NotProvisionedException {
        f40.b bVar;
        byte[] bArr2;
        String str;
        int i2;
        int i3;
        byte[] bArrA;
        if (list != null) {
            if (!rm.d.equals(this.a)) {
                bVar = list.get(0);
            } else if (f92.a < 28 || list.size() <= 1) {
                i2 = 0;
                while (true) {
                    if (i2 < list.size()) {
                        f40.b bVar2 = list.get(i2);
                        byte[] bArr3 = bVar2.f;
                        bArr3.getClass();
                        int iD = zm1.d(bArr3);
                        i3 = f92.a;
                        if ((i3 >= 23 && iD == 0) || (i3 >= 23 && iD == 1)) {
                            bVar = bVar2;
                            break;
                        }
                    } else {
                        bVar = list.get(0);
                        break;
                    }
                }
            } else {
                f40.b bVar3 = list.get(0);
                int i4 = 0;
                int length = 0;
                while (true) {
                    if (i4 < list.size()) {
                        f40.b bVar4 = list.get(i4);
                        byte[] bArr4 = bVar4.f;
                        bArr4.getClass();
                        if (!f92.a(bVar4.e, bVar3.e) || !f92.a(bVar4.d, bVar3.d) || !zm1.a(bArr4)) {
                            i2 = 0;
                            while (true) {
                                if (i2 < list.size()) {
                                    f40.b bVar5 = list.get(i2);
                                    byte[] bArr5 = bVar5.f;
                                    bArr5.getClass();
                                    int iD2 = zm1.d(bArr5);
                                    i3 = f92.a;
                                    i2 = i3 >= 23 ? i2 + 1 : i2 + 1;
                                    bVar = bVar5;
                                    break;
                                }
                                bVar = list.get(0);
                                break;
                            }
                        }
                        length += bArr4.length;
                        i4++;
                    } else {
                        byte[] bArr6 = new byte[length];
                        int i5 = 0;
                        for (int i6 = 0; i6 < list.size(); i6++) {
                            byte[] bArr7 = list.get(i6).f;
                            bArr7.getClass();
                            int length2 = bArr7.length;
                            System.arraycopy(bArr7, 0, bArr6, i5, length2);
                            i5 += length2;
                        }
                        bVar = new f40.b(bVar3.c, bVar3.d, bVar3.e, bArr6);
                    }
                }
            }
            UUID uuid = this.a;
            byte[] bArrArray = bVar.f;
            bArrArray.getClass();
            UUID uuid2 = rm.e;
            if (uuid2.equals(uuid)) {
                byte[] bArrA2 = zm1.a(uuid, bArrArray);
                if (bArrA2 != null) {
                    bArrArray = bArrA2;
                }
                ag1 ag1Var = new ag1(bArrArray);
                int iK = ag1Var.k();
                short sM = ag1Var.m();
                short sM2 = ag1Var.m();
                if (sM == 1 && sM2 == 1) {
                    short sM3 = ag1Var.m();
                    Charset charset = lo.d;
                    String strA = ag1Var.a(sM3, charset);
                    if (!strA.contains("<LA_URL>")) {
                        int iIndexOf = strA.indexOf("</DATA>");
                        if (iIndexOf == -1) {
                            et0.d("FrameworkMediaDrm", "Could not find the </DATA> tag. Skipping LA_URL workaround.");
                        }
                        String str2 = strA.substring(0, iIndexOf) + "<LA_URL>https://x</LA_URL>" + strA.substring(iIndexOf);
                        int i7 = iK + 52;
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i7);
                        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
                        byteBufferAllocate.putInt(i7);
                        byteBufferAllocate.putShort(sM);
                        byteBufferAllocate.putShort(sM2);
                        byteBufferAllocate.putShort((short) (str2.length() * 2));
                        byteBufferAllocate.put(str2.getBytes(charset));
                        bArrArray = byteBufferAllocate.array();
                    }
                } else {
                    et0.c("FrameworkMediaDrm", "Unexpected record count or type. Skipping LA_URL workaround.");
                }
                int length3 = (bArrArray != null ? bArrArray.length : 0) + 32;
                ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(length3);
                byteBufferAllocate2.putInt(length3);
                byteBufferAllocate2.putInt(Mp4Box.TYPE_pssh);
                byteBufferAllocate2.putInt(0);
                byteBufferAllocate2.putLong(uuid2.getMostSignificantBits());
                byteBufferAllocate2.putLong(uuid2.getLeastSignificantBits());
                if (bArrArray != null && bArrArray.length != 0) {
                    byteBufferAllocate2.putInt(bArrArray.length);
                    byteBufferAllocate2.put(bArrArray);
                }
                bArrArray = byteBufferAllocate2.array();
            }
            int i8 = f92.a;
            if (i8 >= 23 || !rm.d.equals(uuid)) {
                if (uuid2.equals(uuid)) {
                    d.getClass();
                    byte[] bArrDecode = Base64.decode("QW1hem9u", 0);
                    y45.i(bArrDecode, "decode(...)");
                    Charset charset2 = defpackage.qv0.b;
                    if (new String(bArrDecode, charset2).equals(f92.c)) {
                        byte[] bArrDecode2 = Base64.decode("QUZUQg==", 0);
                        y45.i(bArrDecode2, "decode(...)");
                        String str3 = new String(bArrDecode2, charset2);
                        String str4 = f92.d;
                        if (!str3.equals(str4)) {
                            byte[] bArrDecode3 = Base64.decode("QUZUUw==", 0);
                            y45.i(bArrDecode3, "decode(...)");
                            if (!new String(bArrDecode3, charset2).equals(str4)) {
                                byte[] bArrDecode4 = Base64.decode("QUZUTQ==", 0);
                                y45.i(bArrDecode4, "decode(...)");
                                if (!new String(bArrDecode4, charset2).equals(str4)) {
                                    byte[] bArrDecode5 = Base64.decode("QUZUVA==", 0);
                                    y45.i(bArrDecode5, "decode(...)");
                                    if (new String(bArrDecode5, charset2).equals(str4)) {
                                        bArrA = zm1.a(uuid, bArrArray);
                                        if (bArrA != null) {
                                            bArrArray = bArrA;
                                        }
                                    }
                                } else {
                                    bArrA = zm1.a(uuid, bArrArray);
                                    if (bArrA != null) {
                                        bArrArray = bArrA;
                                    }
                                }
                            } else {
                                bArrA = zm1.a(uuid, bArrArray);
                                if (bArrA != null) {
                                    bArrArray = bArrA;
                                }
                            }
                        } else {
                            bArrA = zm1.a(uuid, bArrArray);
                            if (bArrA != null) {
                                bArrArray = bArrA;
                            }
                        }
                    }
                }
            } else {
                bArrA = zm1.a(uuid, bArrArray);
                if (bArrA != null) {
                    bArrArray = bArrA;
                }
            }
            UUID uuid3 = this.a;
            String str5 = bVar.e;
            if (i8 < 26 && rm.c.equals(uuid3) && (MimeTypes.VIDEO_MP4.equals(str5) || MimeTypes.AUDIO_MP4.equals(str5))) {
                str5 = C.CENC_TYPE_cenc;
            }
            byte[] bArr8 = bArrArray;
            str = str5;
            bArr2 = bArr8;
        } else {
            bVar = null;
            bArr2 = null;
            str = null;
        }
        MediaDrm.KeyRequest keyRequest = this.b.getKeyRequest(bArr, bArr2, str, i, map);
        UUID uuid4 = this.a;
        byte[] data = keyRequest.getData();
        if (rm.c.equals(uuid4) && f92.a < 27) {
            Charset charset3 = lo.c;
            data = new String(data, charset3).replace('+', '-').replace(IOUtils.DIR_SEPARATOR_UNIX, '_').getBytes(charset3);
        }
        String defaultUrl = keyRequest.getDefaultUrl();
        if ("https://x".equals(defaultUrl)) {
            defaultUrl = "";
        }
        if (TextUtils.isEmpty(defaultUrl) && bVar != null && !TextUtils.isEmpty(bVar.d)) {
            defaultUrl = bVar.d;
        }
        if (f92.a >= 23) {
            keyRequest.getRequestType();
        }
        return new l60.a(defaultUrl, data);
    }

    @Override
    @Nullable
    public final byte[] b(byte[] bArr, byte[] bArr2) throws DeniedByServerException, NotProvisionedException {
        if (rm.c.equals(this.a)) {
            bArr2 = qo.a(bArr2);
        }
        return this.b.provideKeyResponse(bArr, bArr2);
    }

    private static boolean d() {
        return d.a().equals(f92.d);
    }

    @Override
    public final l60.d a() {
        MediaDrm.ProvisionRequest provisionRequest = this.b.getProvisionRequest();
        return new l60.d(provisionRequest.getDefaultUrl(), provisionRequest.getData());
    }

    public void a(l60.b bVar, MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
        sz.c cVar = sz.this.y;
        cVar.getClass();
        cVar.obtainMessage(i, bArr).sendToTarget();
    }

    @Override
    public final Map<String, String> a(byte[] bArr) {
        return this.b.queryKeyStatus(bArr);
    }

    @Override
    public final void a(byte[] bArr, byte[] bArr2) {
        this.b.restoreKeys(bArr, bArr2);
    }

    @Override
    public final void a(@Nullable final l60.b bVar) {
        this.b.setOnEventListener(new MediaDrm.OnEventListener() {
            @Override
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
                this.a.a(bVar, mediaDrm, bArr, i, i2, bArr2);
            }
        });
    }

    @Override
    public final void a(byte[] bArr, mi1 mi1Var) {
        if (f92.a >= 31) {
            try {
                a.a(this.b, bArr, mi1Var);
            } catch (UnsupportedOperationException unused) {
                et0.d("FrameworkMediaDrm", "setLogSessionId failed.");
            }
        }
    }

    @Override
    public final boolean a(String str, byte[] bArr) {
        if (f92.a >= 31) {
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

    private static UUID a(UUID uuid) {
        return (f92.a >= 27 || !rm.c.equals(uuid)) ? uuid : rm.b;
    }
}
