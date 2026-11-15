package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.util.Base64;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

final class l {

    public final int f25778a;

    public final String f25779b;

    public final String f25780c;

    public final String f25781d;

    public l(int i10, String str, String str2, String str3) {
        this.f25778a = i10;
        this.f25779b = str;
        this.f25780c = str2;
        this.f25781d = str3;
    }

    private String b(y.a aVar) {
        return p0.C("Basic %s", Base64.encodeToString(y.d(aVar.f25861a + ":" + aVar.f25862b), 0));
    }

    private String c(y.a aVar, Uri uri, int i10) throws ParserException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            String strT = y.t(i10);
            String strZ0 = p0.Z0(messageDigest.digest(y.d(aVar.f25861a + ":" + this.f25779b + ":" + aVar.f25862b)));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strT);
            sb2.append(":");
            sb2.append(uri);
            String strZ1 = p0.Z0(messageDigest.digest(y.d(strZ0 + ":" + this.f25780c + ":" + p0.Z0(messageDigest.digest(y.d(sb2.toString()))))));
            return this.f25781d.isEmpty() ? p0.C("Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\"", aVar.f25861a, this.f25779b, this.f25780c, uri, strZ1) : p0.C("Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\", opaque=\"%s\"", aVar.f25861a, this.f25779b, this.f25780c, uri, strZ1, this.f25781d);
        } catch (NoSuchAlgorithmException e10) {
            throw ParserException.createForManifestWithUnsupportedFeature(null, e10);
        }
    }

    public String a(y.a aVar, Uri uri, int i10) throws ParserException {
        int i11 = this.f25778a;
        if (i11 == 1) {
            return b(aVar);
        }
        if (i11 == 2) {
            return c(aVar, uri, i10);
        }
        throw ParserException.createForManifestWithUnsupportedFeature(null, new UnsupportedOperationException());
    }
}
