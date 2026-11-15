package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.util.Base64;
import android.util.Pair;
import com.cloud.config.utils.XLogUtil;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;

final class t {

    public final j f25828a;

    public final Uri f25829b;

    public t(a aVar, Uri uri) {
        com.google.android.exoplayer2.util.a.a(aVar.f25653i.containsKey("control"));
        this.f25828a = b(aVar);
        this.f25829b = a(uri, (String) p0.j((String) aVar.f25653i.get("control")));
    }

    private static Uri a(Uri uri, String str) {
        Uri uri2 = Uri.parse(str);
        if (uri2.isAbsolute()) {
            return uri2;
        }
        return str.equals("*") ? uri : uri.buildUpon().appendEncodedPath(str).build();
    }

    /* JADX WARN: switch over string: strings are not added: [[audio/ac3], [audio/g711-alaw], [audio/g711-mlaw]] */
    static j b(a aVar) {
        int iD;
        p1.b bVar = new p1.b();
        int i10 = aVar.f25649e;
        if (i10 > 0) {
            bVar.G(i10);
        }
        a.c cVar = aVar.f25654j;
        int i11 = cVar.f25664a;
        String str = cVar.f25665b;
        String strA = j.a(str);
        bVar.e0(strA);
        int i12 = aVar.f25654j.f25666c;
        if (MimeTypes.BASE_TYPE_AUDIO.equals(aVar.f25645a)) {
            iD = d(aVar.f25654j.f25667d, strA);
            bVar.f0(i12).H(iD);
        } else {
            iD = -1;
        }
        ImmutableMap immutableMapA = aVar.a();
        switch (strA) {
            case "audio/mp4a-latm":
                com.google.android.exoplayer2.util.a.a(iD != -1);
                com.google.android.exoplayer2.util.a.a(!immutableMapA.isEmpty());
                e(bVar, immutableMapA, iD, i12);
                break;
            case "audio/3gpp":
            case "audio/amr-wb":
                com.google.android.exoplayer2.util.a.b(iD == 1, "Multi channel AMR is not currently supported.");
                com.google.android.exoplayer2.util.a.b(!immutableMapA.isEmpty(), "fmtp parameters must include octet-align.");
                com.google.android.exoplayer2.util.a.b(immutableMapA.containsKey("octet-align"), "Only octet aligned mode is currently supported.");
                com.google.android.exoplayer2.util.a.b(!immutableMapA.containsKey("interleaving"), "Interleaving mode is not currently supported.");
                break;
            case "audio/opus":
                com.google.android.exoplayer2.util.a.a(iD != -1);
                com.google.android.exoplayer2.util.a.b(i12 == 48000, "Invalid OPUS clock rate.");
                break;
            case "video/mp4v-es":
                com.google.android.exoplayer2.util.a.a(!immutableMapA.isEmpty());
                h(bVar, immutableMapA);
                break;
            case "video/3gpp":
                bVar.j0(352).Q(288);
                break;
            case "video/avc":
                com.google.android.exoplayer2.util.a.a(!immutableMapA.isEmpty());
                f(bVar, immutableMapA);
                break;
            case "video/hevc":
                com.google.android.exoplayer2.util.a.a(!immutableMapA.isEmpty());
                g(bVar, immutableMapA);
                break;
            case "video/x-vnd.on2.vp8":
                bVar.j0(Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE).Q(240);
                break;
            case "video/x-vnd.on2.vp9":
                bVar.j0(Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE).Q(240);
                break;
            case "audio/raw":
                bVar.Y(j.b(str));
                break;
        }
        com.google.android.exoplayer2.util.a.a(i12 > 0);
        return new j(bVar.E(), i11, i12, immutableMapA);
    }

    private static byte[] c(String str) {
        byte[] bArrDecode = Base64.decode(str, 0);
        int length = bArrDecode.length;
        byte[] bArr = com.google.android.exoplayer2.util.x.f26892a;
        byte[] bArr2 = new byte[length + bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(bArrDecode, 0, bArr2, bArr.length, bArrDecode.length);
        return bArr2;
    }

    private static int d(int i10, String str) {
        if (i10 != -1) {
            return i10;
        }
        return str.equals(MimeTypes.AUDIO_AC3) ? 6 : 1;
    }

    private static void e(p1.b bVar, ImmutableMap immutableMap, int i10, int i11) {
        com.google.android.exoplayer2.util.a.a(immutableMap.containsKey("profile-level-id"));
        bVar.I("mp4a.40." + ((String) com.google.android.exoplayer2.util.a.e((String) immutableMap.get("profile-level-id"))));
        bVar.T(ImmutableList.of(com.google.android.exoplayer2.audio.a.a(i11, i10)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void f(p1.b bVar, ImmutableMap immutableMap) {
        com.google.android.exoplayer2.util.a.a(immutableMap.containsKey("sprop-parameter-sets"));
        String[] strArrS0 = p0.S0((String) com.google.android.exoplayer2.util.a.e((String) immutableMap.get("sprop-parameter-sets")), ",");
        com.google.android.exoplayer2.util.a.a(strArrS0.length == 2);
        ImmutableList immutableListOf = ImmutableList.of(c(strArrS0[0]), c(strArrS0[1]));
        bVar.T(immutableListOf);
        byte[] bArr = (byte[]) immutableListOf.get(0);
        com.google.android.exoplayer2.util.x.c cVarL = com.google.android.exoplayer2.util.x.l(bArr, com.google.android.exoplayer2.util.x.f26892a.length, bArr.length);
        bVar.a0(cVarL.f26916h);
        bVar.Q(cVarL.f26915g);
        bVar.j0(cVarL.f26914f);
        String str = (String) immutableMap.get("profile-level-id");
        if (str == null) {
            bVar.I(com.google.android.exoplayer2.util.f.a(cVarL.f26909a, cVarL.f26910b, cVarL.f26911c));
            return;
        }
        bVar.I("avc1." + str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void g(p1.b bVar, ImmutableMap immutableMap) {
        if (immutableMap.containsKey("sprop-max-don-diff")) {
            int i10 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e((String) immutableMap.get("sprop-max-don-diff")));
            com.google.android.exoplayer2.util.a.b(i10 == 0, "non-zero sprop-max-don-diff " + i10 + " is not supported");
        }
        com.google.android.exoplayer2.util.a.a(immutableMap.containsKey("sprop-vps"));
        String str = (String) com.google.android.exoplayer2.util.a.e((String) immutableMap.get("sprop-vps"));
        com.google.android.exoplayer2.util.a.a(immutableMap.containsKey("sprop-sps"));
        String str2 = (String) com.google.android.exoplayer2.util.a.e((String) immutableMap.get("sprop-sps"));
        com.google.android.exoplayer2.util.a.a(immutableMap.containsKey("sprop-pps"));
        ImmutableList immutableListOf = ImmutableList.of(c(str), c(str2), c((String) com.google.android.exoplayer2.util.a.e((String) immutableMap.get("sprop-pps"))));
        bVar.T(immutableListOf);
        byte[] bArr = (byte[]) immutableListOf.get(1);
        com.google.android.exoplayer2.util.x.a aVarH = com.google.android.exoplayer2.util.x.h(bArr, com.google.android.exoplayer2.util.x.f26892a.length, bArr.length);
        bVar.a0(aVarH.f26905j);
        bVar.Q(aVarH.f26904i).j0(aVarH.f26903h);
        bVar.I(com.google.android.exoplayer2.util.f.c(aVarH.f26896a, aVarH.f26897b, aVarH.f26898c, aVarH.f26899d, aVarH.f26900e, aVarH.f26901f));
    }

    private static void h(p1.b bVar, ImmutableMap immutableMap) {
        String str = (String) immutableMap.get(XLogUtil.TAG);
        if (str != null) {
            byte[] bArrJ = p0.J(str);
            bVar.T(ImmutableList.of(bArrJ));
            Pair pairF = com.google.android.exoplayer2.util.f.f(bArrJ);
            bVar.j0(((Integer) pairF.first).intValue()).Q(((Integer) pairF.second).intValue());
        } else {
            bVar.j0(352).Q(288);
        }
        String str2 = (String) immutableMap.get("profile-level-id");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("mp4v.");
        if (str2 == null) {
            str2 = "1";
        }
        sb2.append(str2);
        bVar.I(sb2.toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t.class != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        return this.f25828a.equals(tVar.f25828a) && this.f25829b.equals(tVar.f25829b);
    }

    public int hashCode() {
        return ((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f25828a.hashCode()) * 31) + this.f25829b.hashCode();
    }
}
