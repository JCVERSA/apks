package org.bouncycastle.jcajce;

import defpackage.aq1;
import defpackage.l1;
import defpackage.oa;
import defpackage.og8;
import defpackage.qe3;
import defpackage.vp6;
import defpackage.y0;
import java.io.IOException;
import java.security.PrivateKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.jcajce.provider.asymmetric.compositesignatures.CompositeSignaturesConstants;
import org.bouncycastle.jcajce.provider.asymmetric.compositesignatures.a;

public class CompositePrivateKey implements PrivateKey {
    private l1 algorithmIdentifier;
    private final List<PrivateKey> keys;

    public CompositePrivateKey(l1 l1Var, PrivateKey... privateKeyArr) {
        this.algorithmIdentifier = l1Var;
        if (privateKeyArr == null || privateKeyArr.length == 0) {
            throw new IllegalArgumentException("at least one private key must be provided for the composite private key");
        }
        ArrayList arrayList = new ArrayList(privateKeyArr.length);
        for (PrivateKey privateKey : privateKeyArr) {
            arrayList.add(privateKey);
        }
        this.keys = Collections.unmodifiableList(arrayList);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CompositePrivateKey)) {
            return false;
        }
        CompositePrivateKey compositePrivateKey = (CompositePrivateKey) obj;
        return compositePrivateKey.getAlgorithmIdentifier().s(this.algorithmIdentifier) && this.keys.equals(compositePrivateKey.keys);
    }

    @Override
    public String getAlgorithm() {
        return ((CompositeSignaturesConstants.CompositeName) CompositeSignaturesConstants.d.get(this.algorithmIdentifier)).getId();
    }

    public l1 getAlgorithmIdentifier() {
        return this.algorithmIdentifier;
    }

    @Override
    public byte[] getEncoded() {
        y0 y0Var = new y0();
        for (int i = 0; i < this.keys.size(); i++) {
            y0Var.a(og8.n(this.keys.get(i).getEncoded()));
        }
        try {
            return new og8(new oa(this.algorithmIdentifier), new aq1(y0Var)).l("DER");
        } catch (IOException e) {
            throw new IllegalStateException("unable to encode composite private key: " + e.getMessage());
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public List<PrivateKey> getPrivateKeys() {
        return this.keys;
    }

    public int hashCode() {
        return this.keys.hashCode();
    }

    public CompositePrivateKey(og8 og8Var) {
        try {
            if (!Arrays.asList(CompositeSignaturesConstants.a).contains(og8Var.p().m())) {
                throw new IllegalStateException("Unable to create CompositePrivateKey from PrivateKeyInfo");
            }
            CompositePrivateKey compositePrivateKey = (CompositePrivateKey) new a().b(og8Var);
            if (compositePrivateKey == null) {
                throw new IllegalStateException("Unable to create CompositePrivateKey from PrivateKeyInfo");
            }
            this.keys = compositePrivateKey.getPrivateKeys();
            this.algorithmIdentifier = compositePrivateKey.getAlgorithmIdentifier();
        } catch (IOException e) {
            throw qe3.b(e.getMessage(), e);
        }
    }

    public CompositePrivateKey(PrivateKey... privateKeyArr) {
        this(vp6.Q, privateKeyArr);
    }
}
