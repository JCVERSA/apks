package org.bouncycastle.tsp.cms;

import defpackage.tna;

public class ImprintDigestInvalidException extends Exception {
    private tna token;

    public ImprintDigestInvalidException(String str, tna tnaVar) {
        super(str);
    }

    public tna getTimeStampToken() {
        return null;
    }
}
