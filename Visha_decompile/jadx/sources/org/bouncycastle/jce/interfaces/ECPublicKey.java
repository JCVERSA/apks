package org.bouncycastle.jce.interfaces;

import defpackage.h53;
import defpackage.i53;
import java.security.PublicKey;

public interface ECPublicKey extends PublicKey {
    h53 getParameters();

    i53 getQ();
}
