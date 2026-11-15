package org.bouncycastle.pqc.jcajce.provider.gmss;

import defpackage.av7;
import defpackage.cw0;
import defpackage.ea4;
import defpackage.fa4;
import defpackage.jp4;
import defpackage.l1;
import java.security.PublicKey;

public class BCGMSSPublicKey implements cw0, PublicKey {
    private static final long serialVersionUID = 1;
    private ea4 gmssParameterSet;
    private ea4 gmssParams;
    private byte[] publicKeyBytes;

    public BCGMSSPublicKey(fa4 fa4Var) {
        throw null;
    }

    @Override
    public String getAlgorithm() {
        return "GMSS";
    }

    @Override
    public byte[] getEncoded() {
        l1 l1Var = av7.a;
        throw null;
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public ea4 getParameterSet() {
        return null;
    }

    public byte[] getPublicKeyBytes() {
        return this.publicKeyBytes;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("GMSS public key : ");
        sb.append(new String(jp4.d(this.publicKeyBytes)));
        sb.append("\nHeight of Trees: \n");
        throw null;
    }

    public BCGMSSPublicKey(byte[] bArr, ea4 ea4Var) {
        this.publicKeyBytes = bArr;
    }
}
