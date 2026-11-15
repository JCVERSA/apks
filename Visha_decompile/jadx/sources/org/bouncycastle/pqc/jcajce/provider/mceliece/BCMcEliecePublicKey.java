package org.bouncycastle.pqc.jcajce.provider.mceliece;

import defpackage.dj;
import defpackage.u94;
import defpackage.u96;
import java.security.PublicKey;

public class BCMcEliecePublicKey implements PublicKey {
    private static final long serialVersionUID = 1;
    private u96 params;

    public BCMcEliecePublicKey(u96 u96Var) {
    }

    public boolean equals(Object obj) {
        if (obj instanceof BCMcEliecePublicKey) {
            throw null;
        }
        return false;
    }

    @Override
    public String getAlgorithm() {
        return "McEliece";
    }

    @Override
    public byte[] getEncoded() {
        throw null;
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public u94 getG() {
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

    public int getT() {
        throw null;
    }

    public int hashCode() {
        throw null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("McEliecePublicKey:\n");
        sb.append(" length of the code         : ");
        throw null;
    }
}
