package org.bouncycastle.cert.jcajce;

import defpackage.ns0;
import java.security.cert.CRLException;
import java.security.cert.X509CRL;
import org.bouncycastle.cert.X509CRLHolder;

public class JcaX509CRLHolder extends X509CRLHolder {
    public JcaX509CRLHolder(X509CRL x509crl) throws CRLException {
        super(ns0.m(x509crl.getEncoded()));
    }
}
