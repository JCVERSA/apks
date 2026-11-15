package org.bouncycastle.pqc.jcajce.interfaces;

import java.security.PrivateKey;

public interface XMSSPrivateKey extends PrivateKey {
    XMSSPrivateKey extractKeyShard(int i);

    int getHeight();

    long getIndex();

    String getTreeDigest();

    long getUsagesRemaining();
}
