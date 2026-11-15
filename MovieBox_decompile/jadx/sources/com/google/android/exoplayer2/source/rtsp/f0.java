package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.n0;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class f0 {

    public final long f25711a;

    public final int f25712b;

    public final Uri f25713c;

    private f0(long j10, int i10, Uri uri) {
        this.f25711a = j10;
        this.f25712b = i10;
        this.f25713c = uri;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0069  */
    public static ImmutableList a(String str, Uri uri) throws ParserException {
        byte b10;
        ImmutableList.a aVar = new ImmutableList.a();
        String[] strArrS0 = p0.S0(str, ",");
        int length = strArrS0.length;
        int i10 = 0;
        int i11 = 0;
        while (i11 < length) {
            String str2 = strArrS0[i11];
            String[] strArrS1 = p0.S0(str2, ";");
            int length2 = strArrS1.length;
            int i12 = i10;
            Uri uriB = null;
            int i13 = -1;
            long j10 = C.TIME_UNSET;
            while (i12 < length2) {
                String str3 = strArrS1[i12];
                try {
                    String[] strArrT0 = p0.T0(str3, UrlUtils.EQUAL_MARK);
                    String str4 = strArrT0[i10];
                    String str5 = strArrT0[1];
                    int iHashCode = str4.hashCode();
                    String[] strArr = strArrS0;
                    if (iHashCode != 113759) {
                        if (iHashCode != 116079) {
                            if (iHashCode == 1524180539 && str4.equals("rtptime")) {
                                b10 = 2;
                            } else {
                                b10 = -1;
                            }
                        } else if (str4.equals("url")) {
                            b10 = 0;
                        } else {
                            b10 = -1;
                        }
                    } else if (str4.equals("seq")) {
                        b10 = 1;
                    } else {
                        b10 = -1;
                    }
                    if (b10 == 0) {
                        uriB = b(str5, uri);
                    } else if (b10 == 1) {
                        i13 = Integer.parseInt(str5);
                    } else {
                        if (b10 != 2) {
                            throw ParserException.createForMalformedManifest(str4, null);
                        }
                        j10 = Long.parseLong(str5);
                    }
                    i12++;
                    strArrS0 = strArr;
                    i10 = 0;
                } catch (Exception e10) {
                    throw ParserException.createForMalformedManifest(str3, e10);
                }
            }
            String[] strArr2 = strArrS0;
            if (uriB != null && uriB.getScheme() != null) {
                long j11 = j10;
                if (i13 != -1 || j11 != C.TIME_UNSET) {
                    aVar.a(new f0(j11, i13, uriB));
                    i11++;
                    strArrS0 = strArr2;
                    i10 = 0;
                }
            }
            throw ParserException.createForMalformedManifest(str2, null);
        }
        return aVar.e();
    }

    static Uri b(String str, Uri uri) {
        com.google.android.exoplayer2.util.a.a(((String) com.google.android.exoplayer2.util.a.e(uri.getScheme())).equals("rtsp"));
        Uri uri2 = Uri.parse(str);
        if (uri2.isAbsolute()) {
            return uri2;
        }
        Uri uri3 = Uri.parse("rtsp://" + str);
        String string = uri.toString();
        if (((String) com.google.android.exoplayer2.util.a.e(uri3.getHost())).equals(uri.getHost())) {
            return uri3;
        }
        if (string.endsWith("/")) {
            return n0.e(string, str);
        }
        return n0.e(string + "/", str);
    }
}
