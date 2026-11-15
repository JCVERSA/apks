package org.bouncycastle.pqc.jcajce.provider.mceliece;

import defpackage.cw0;
import defpackage.dj;
import defpackage.t96;
import defpackage.tc8;
import defpackage.u08;
import defpackage.u94;
import defpackage.x94;
import java.security.PrivateKey;

public class BCMcEliecePrivateKey implements cw0, PrivateKey {
    private static final long serialVersionUID = 1;
    private t96 params;

    public BCMcEliecePrivateKey(t96 t96Var) {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BCMcEliecePrivateKey)) {
            return false;
        }
        BCMcEliecePrivateKey bCMcEliecePrivateKey = (BCMcEliecePrivateKey) obj;
        return getN() == bCMcEliecePrivateKey.getN() && getK() == bCMcEliecePrivateKey.getK() && getField().equals(bCMcEliecePrivateKey.getField()) && getGoppaPoly().equals(bCMcEliecePrivateKey.getGoppaPoly()) && getSInv().equals(bCMcEliecePrivateKey.getSInv()) && getP1().equals(bCMcEliecePrivateKey.getP1()) && getP2().equals(bCMcEliecePrivateKey.getP2());
    }

    @Override
    public String getAlgorithm() {
        return "McEliece";
    }

    @Override
    public byte[] getEncoded() {
        throw null;
    }

    public x94 getField() {
        throw null;
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public tc8 getGoppaPoly() {
        throw null;
    }

    public u94 getH() {
        throw null;
    }

    public int getK() {
        throw null;
    }

    public dj getKeyParams() {
        return null;
    }

    public int getN() {
        throw null;
    }

    public u08 getP1() {
        throw null;
    }

    public u08 getP2() {
        throw null;
    }

    public tc8[] getQInv() {
        throw null;
    }

    public u94 getSInv() {
        throw null;
    }

    public int hashCode() {
        throw null;
    }
}
