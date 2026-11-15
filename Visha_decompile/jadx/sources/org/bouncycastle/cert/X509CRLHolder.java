package org.bouncycastle.cert;

import defpackage.bk3;
import defpackage.cqc;
import defpackage.f1;
import defpackage.fb;
import defpackage.gb;
import defpackage.gk3;
import defpackage.gqc;
import defpackage.kd4;
import defpackage.kh1;
import defpackage.l1;
import defpackage.ld4;
import defpackage.ls0;
import defpackage.mca;
import defpackage.mna;
import defpackage.ns0;
import defpackage.o55;
import defpackage.oa;
import defpackage.p1;
import defpackage.y93;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Set;

public class X509CRLHolder implements y93, Serializable {
    private static final long serialVersionUID = 20170722001L;
    private transient gk3 extensions;
    private transient boolean isIndirect;
    private transient ld4 issuerName;
    private transient ns0 x509CRL;

    public X509CRLHolder(ns0 ns0Var) {
        init(ns0Var);
    }

    private void init(ns0 ns0Var) {
        this.x509CRL = ns0Var;
        gk3 gk3VarM = ns0Var.s().m();
        this.extensions = gk3VarM;
        this.isIndirect = isIndirectCRL(gk3VarM);
        this.issuerName = new ld4(new kd4(ns0Var.n()));
    }

    private static boolean isIndirectCRL(gk3 gk3Var) {
        bk3 bk3VarN;
        return (gk3Var == null || (bk3VarN = gk3Var.n(bk3.q)) == null || !o55.o(bk3VarN.q()).p()) ? false : true;
    }

    private static ns0 parseStream(InputStream inputStream) throws IOException {
        try {
            p1 p1VarD = new f1(inputStream, true).D();
            if (p1VarD != null) {
                return ns0.m(p1VarD);
            }
            throw new IOException("no content found");
        } catch (ClassCastException e) {
            throw new CertIOException("malformed data: " + e.getMessage(), e);
        } catch (IllegalArgumentException e2) {
            throw new CertIOException("malformed data: " + e2.getMessage(), e2);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        init(ns0.m(objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof X509CRLHolder) {
            return this.x509CRL.equals(((X509CRLHolder) obj).x509CRL);
        }
        return false;
    }

    public Set getCriticalExtensionOIDs() {
        return ls0.b(this.extensions);
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.x509CRL.getEncoded();
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

    public cqc getIssuer() {
        return cqc.o(this.x509CRL.n());
    }

    public Date getNextUpdate() {
        mna mnaVarO = this.x509CRL.o();
        if (mnaVarO != null) {
            return mnaVarO.m();
        }
        return null;
    }

    public Set getNonCriticalExtensionOIDs() {
        return ls0.d(this.extensions);
    }

    public gqc getRevokedCertificate(BigInteger bigInteger) {
        bk3 bk3VarN;
        ld4 ld4VarO = this.issuerName;
        Enumeration enumerationP = this.x509CRL.p();
        while (enumerationP.hasMoreElements()) {
            mca.b bVar = (mca.b) enumerationP.nextElement();
            if (bVar.o().C(bigInteger)) {
                return new gqc(bVar, this.isIndirect, ld4VarO);
            }
            if (this.isIndirect && bVar.p() && (bk3VarN = bVar.m().n(bk3.r)) != null) {
                ld4VarO = ld4.o(bk3VarN.q());
            }
        }
        return null;
    }

    public Collection getRevokedCertificates() {
        ArrayList arrayList = new ArrayList(this.x509CRL.q().length);
        ld4 ld4VarA = this.issuerName;
        Enumeration enumerationP = this.x509CRL.p();
        while (enumerationP.hasMoreElements()) {
            gqc gqcVar = new gqc((mca.b) enumerationP.nextElement(), this.isIndirect, ld4VarA);
            arrayList.add(gqcVar);
            ld4VarA = gqcVar.a();
        }
        return arrayList;
    }

    public Date getThisUpdate() {
        return this.x509CRL.t().m();
    }

    public boolean hasExtensions() {
        return this.extensions != null;
    }

    public int hashCode() {
        return this.x509CRL.hashCode();
    }

    public boolean isAlternativeSignatureValid(kh1 kh1Var) throws CertException {
        mca mcaVarS = this.x509CRL.s();
        fb fbVarM = fb.m(mcaVarS.m());
        gb.m(mcaVarS.m());
        try {
            kh1Var.a(oa.o(fbVarM.j()));
            throw null;
        } catch (Exception e) {
            throw new CertException("unable to process signature: " + e.getMessage(), e);
        }
    }

    public boolean isSignatureValid(kh1 kh1Var) throws CertException {
        mca mcaVarS = this.x509CRL.s();
        if (!ls0.e(mcaVarS.s(), this.x509CRL.r())) {
            throw new CertException("signature invalid - algorithm identifier mismatch");
        }
        try {
            kh1Var.a(mcaVarS.s());
            throw null;
        } catch (Exception e) {
            throw new CertException("unable to process signature: " + e.getMessage(), e);
        }
    }

    public ns0 toASN1Structure() {
        return this.x509CRL;
    }

    public X509CRLHolder(InputStream inputStream) throws IOException {
        this(parseStream(inputStream));
    }

    public X509CRLHolder(byte[] bArr) throws IOException {
        this(parseStream(new ByteArrayInputStream(bArr)));
    }
}
