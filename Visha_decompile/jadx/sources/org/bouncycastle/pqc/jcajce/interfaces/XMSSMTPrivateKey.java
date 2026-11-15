package org.bouncycastle.pqc.jcajce.interfaces;

import java.security.PrivateKey;

public interface XMSSMTPrivateKey extends PrivateKey {
    XMSSMTPrivateKey extractKeyShard(int i);

    int getHeight();

    long getIndex();

    int getLayers();

    String getTreeDigest();

    long getUsagesRemaining();
}
