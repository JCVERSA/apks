package org.bouncycastle.cert;

import defpackage.bk3;
import defpackage.bl;
import defpackage.el;
import defpackage.gk3;
import defpackage.gl;
import defpackage.hl;
import defpackage.il;
import defpackage.jl;
import defpackage.kh1;
import defpackage.l1;
import defpackage.ls0;
import defpackage.oa;
import defpackage.s1;
import defpackage.y93;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

public class X509AttributeCertificateHolder implements y93, Serializable {
    private static el[] EMPTY_ARRAY = new el[0];
    private static final long serialVersionUID = 20170722001L;
    private transient gl attrCert;
    private transient gk3 extensions;

    public X509AttributeCertificateHolder(gl glVar) {
        init(glVar);
    }

    private void init(gl glVar) {
        this.attrCert = glVar;
        this.extensions = glVar.m().o();
    }

    private static gl parseBytes(byte[] bArr) throws IOException {
        try {
            return gl.n(ls0.f(bArr));
        } catch (ClassCastException e) {
            throw new CertIOException("malformed data: " + e.getMessage(), e);
        } catch (IllegalArgumentException e2) {
            throw new CertIOException("malformed data: " + e2.getMessage(), e2);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        init(gl.n(objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof X509AttributeCertificateHolder) {
            return this.attrCert.equals(((X509AttributeCertificateHolder) obj).attrCert);
        }
        return false;
    }

    public el[] getAttributes() {
        s1 s1VarN = this.attrCert.m().n();
        el[] elVarArr = new el[s1VarN.size()];
        for (int i = 0; i != s1VarN.size(); i++) {
            elVarArr[i] = el.n(s1VarN.A(i));
        }
        return elVarArr;
    }

    public Set getCriticalExtensionOIDs() {
        return ls0.b(this.extensions);
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.attrCert.getEncoded();
    }

    public bk3 getExtension(l1 l1Var) {
        gk3 gk3Var = this.extensions;
        if (gk3Var != null) {
            return gk3Var.n(l1Var);
        }
        return null;
    }

    public List getExtensionOIDs() {
        return ls0.c(this.extensions);
    }

    public gk3 getExtensions() {
        return this.extensions;
    }

    public hl getHolder() {
        return new hl((s1) this.attrCert.m().p().j());
    }

    public jl getIssuer() {
        return new jl(this.attrCert.m().r());
    }

    public boolean[] getIssuerUniqueID() {
        return ls0.a(this.attrCert.m().s());
    }

    public Set getNonCriticalExtensionOIDs() {
        return ls0.d(this.extensions);
    }

    public Date getNotAfter() {
        return ls0.g(this.attrCert.m().m().n());
    }

    public Date getNotBefore() {
        return ls0.g(this.attrCert.m().m().o());
    }

    public BigInteger getSerialNumber() {
        return this.attrCert.m().t().A();
    }

    public byte[] getSignature() {
        return this.attrCert.p().A();
    }

    public oa getSignatureAlgorithm() {
        return this.attrCert.o();
    }

    public int getVersion() {
        return this.attrCert.m().v().F() + 1;
    }

    public boolean hasExtensions() {
        return this.extensions != null;
    }

    public int hashCode() {
        return this.attrCert.hashCode();
    }

    public boolean isSignatureValid(kh1 kh1Var) throws CertException {
        il ilVarM = this.attrCert.m();
        if (!ls0.e(ilVarM.u(), this.attrCert.o())) {
            throw new CertException("signature invalid - algorithm identifier mismatch");
        }
        try {
            kh1Var.a(ilVarM.u());
            throw null;
        } catch (Exception e) {
            throw new CertException("unable to process signature: " + e.getMessage(), e);
        }
    }

    public boolean isValidOn(Date date) {
        bl blVarM = this.attrCert.m().m();
        return (date.before(ls0.g(blVarM.o())) || date.after(ls0.g(blVarM.n()))) ? false : true;
    }

    public gl toASN1Structure() {
        return this.attrCert;
    }

    public X509AttributeCertificateHolder(byte[] bArr) throws IOException {
        this(parseBytes(bArr));
    }

    public el[] getAttributes(l1 l1Var) {
        s1 s1VarN = this.attrCert.m().n();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i != s1VarN.size(); i++) {
            el elVarN = el.n(s1VarN.A(i));
            if (elVarN.m().s(l1Var)) {
                arrayList.add(elVarN);
            }
        }
        return arrayList.size() == 0 ? EMPTY_ARRAY : (el[]) arrayList.toArray(new el[arrayList.size()]);
    }
}
