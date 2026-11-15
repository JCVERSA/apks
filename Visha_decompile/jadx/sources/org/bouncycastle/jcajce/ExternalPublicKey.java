package org.bouncycastle.jcajce;

import defpackage.b40;
import defpackage.ci;
import defpackage.kd4;
import defpackage.kk3;
import defpackage.oa;
import defpackage.s1a;
import defpackage.sn6;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.PublicKey;

public class ExternalPublicKey implements PublicKey {
    private final byte[] digest;
    private final oa digestAlg;
    private final kd4 location;

    public ExternalPublicKey(kk3 kk3Var) {
        this(kk3Var.o(), kk3Var.m(), kk3Var.n());
    }

    @Override
    public String getAlgorithm() {
        return "ExternalKey";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return new s1a(new oa(b40.L1), new kk3(this.location, this.digestAlg, this.digest)).l("DER");
        } catch (IOException e) {
            throw new IllegalStateException("unable to encode composite key: " + e.getMessage());
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public ExternalPublicKey(kd4 kd4Var, oa oaVar, byte[] bArr) {
        this.location = kd4Var;
        this.digestAlg = oaVar;
        this.digest = ci.f(bArr);
    }

    public ExternalPublicKey(PublicKey publicKey, kd4 kd4Var, MessageDigest messageDigest) {
        this(kd4Var, sn6.a(messageDigest.getAlgorithm()), messageDigest.digest(publicKey.getEncoded()));
    }
}
