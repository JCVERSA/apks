package org.bouncycastle.jcajce.provider.asymmetric.edec;

import defpackage.aqc;
import defpackage.bmb;
import defpackage.bqc;
import defpackage.ci;
import defpackage.dj;
import defpackage.g63;
import defpackage.m1;
import defpackage.og8;
import defpackage.qg8;
import defpackage.qi8;
import defpackage.t1;
import defpackage.wpc;
import defpackage.xpc;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.jcajce.interfaces.XDHPrivateKey;
import org.bouncycastle.jcajce.interfaces.XDHPublicKey;

public class BCXDHPrivateKey implements XDHPrivateKey {
    static final long serialVersionUID = 1;
    private final byte[] attributes;
    private final boolean hasPublicKey;
    transient int hashCode;
    transient dj xdhPrivateKey;
    transient dj xdhPublicKey;

    public BCXDHPrivateKey(dj djVar) {
        this.hasPublicKey = true;
        this.attributes = null;
        this.xdhPrivateKey = djVar;
        this.xdhPublicKey = djVar instanceof aqc ? ((aqc) djVar).b() : ((wpc) djVar).b();
        this.hashCode = calculateHashCode();
    }

    private int calculateHashCode() {
        dj djVar = this.xdhPublicKey;
        return (getAlgorithm().hashCode() * 31) + ci.v(djVar instanceof bqc ? ((bqc) djVar).getEncoded() : ((xpc) djVar).getEncoded());
    }

    private og8 getPrivateKeyInfo() {
        try {
            t1 t1VarY = t1.y(this.attributes);
            og8 og8VarA = qg8.a(this.xdhPrivateKey, t1VarY);
            return (!this.hasPublicKey || qi8.c("org.bouncycastle.pkcs8.v1_info_only")) ? new og8(og8VarA.p(), og8VarA.u(), t1VarY) : og8VarA;
        } catch (IOException unused) {
            return null;
        }
    }

    private void populateFromPrivateKeyInfo(og8 og8Var) throws IOException {
        dj djVarB;
        int iQ = og8Var.q();
        byte[] bArrZ = ((iQ == 32 || iQ == 56) ? og8Var.o() : m1.y(og8Var.u())).z();
        if (g63.c.s(og8Var.p().m())) {
            aqc aqcVar = new aqc(bArrZ);
            this.xdhPrivateKey = aqcVar;
            djVarB = aqcVar.b();
        } else {
            wpc wpcVar = new wpc(bArrZ);
            this.xdhPrivateKey = wpcVar;
            djVarB = wpcVar.b();
        }
        this.xdhPublicKey = djVarB;
        this.hashCode = calculateHashCode();
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        populateFromPrivateKeyInfo(og8.n((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public dj engineGetKeyParameters() {
        return this.xdhPrivateKey;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PrivateKey)) {
            return false;
        }
        PrivateKey privateKey = (PrivateKey) obj;
        og8 privateKeyInfo = getPrivateKeyInfo();
        og8 privateKeyInfo2 = privateKey instanceof BCXDHPrivateKey ? ((BCXDHPrivateKey) privateKey).getPrivateKeyInfo() : og8.n(privateKey.getEncoded());
        if (privateKeyInfo != null && privateKeyInfo2 != null) {
            try {
                return ci.o(privateKeyInfo.o().getEncoded(), privateKeyInfo2.o().getEncoded()) & ci.o(privateKeyInfo.p().getEncoded(), privateKeyInfo2.p().getEncoded());
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override
    public String getAlgorithm() {
        if (qi8.c("org.bouncycastle.emulate.oracle")) {
            return "XDH";
        }
        return this.xdhPrivateKey instanceof aqc ? "X448" : "X25519";
    }

    @Override
    public byte[] getEncoded() {
        try {
            og8 privateKeyInfo = getPrivateKeyInfo();
            if (privateKeyInfo == null) {
                return null;
            }
            return privateKeyInfo.getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public XDHPublicKey getPublicKey() {
        return new BCXDHPublicKey(this.xdhPublicKey);
    }

    public int hashCode() {
        return this.hashCode;
    }

    public String toString() {
        return bmb.c("Private Key", getAlgorithm(), this.xdhPublicKey);
    }

    public BCXDHPrivateKey(og8 og8Var) throws IOException {
        this.hasPublicKey = og8Var.t();
        this.attributes = og8Var.m() != null ? og8Var.m().getEncoded() : null;
        populateFromPrivateKeyInfo(og8Var);
    }
}
