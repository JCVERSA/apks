package org.bouncycastle.jcajce;

import defpackage.aq1;
import defpackage.l1;
import defpackage.oa;
import defpackage.s1a;
import defpackage.vp6;
import defpackage.y0;
import java.io.IOException;
import java.security.PublicKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.jcajce.provider.asymmetric.compositesignatures.CompositeSignaturesConstants;
import org.bouncycastle.jcajce.provider.asymmetric.compositesignatures.a;

public class CompositePublicKey implements PublicKey {
    private final l1 algorithmIdentifier;
    private final List<PublicKey> keys;

    public CompositePublicKey(l1 l1Var, PublicKey... publicKeyArr) {
        this.algorithmIdentifier = l1Var;
        if (publicKeyArr == null || publicKeyArr.length == 0) {
            throw new IllegalArgumentException("at least one public key must be provided for the composite public key");
        }
        ArrayList arrayList = new ArrayList(publicKeyArr.length);
        for (PublicKey publicKey : publicKeyArr) {
            arrayList.add(publicKey);
        }
        this.keys = Collections.unmodifiableList(arrayList);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CompositePublicKey)) {
            return false;
        }
        CompositePublicKey compositePublicKey = (CompositePublicKey) obj;
        return compositePublicKey.getAlgorithmIdentifier().s(this.algorithmIdentifier) && this.keys.equals(compositePublicKey.keys);
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
            y0Var.a(this.algorithmIdentifier.s(vp6.Q) ? s1a.n(this.keys.get(i).getEncoded()) : s1a.n(this.keys.get(i).getEncoded()).o());
        }
        try {
            return new s1a(new oa(this.algorithmIdentifier), new aq1(y0Var)).l("DER");
        } catch (IOException e) {
            throw new IllegalStateException("unable to encode composite public key: " + e.getMessage());
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public List<PublicKey> getPublicKeys() {
        return this.keys;
    }

    public int hashCode() {
        return this.keys.hashCode();
    }

    public CompositePublicKey(s1a s1aVar) {
        try {
            if (!Arrays.asList(CompositeSignaturesConstants.a).contains(s1aVar.m().m())) {
                throw new IllegalStateException("unable to create CompositePublicKey from SubjectPublicKeyInfo");
            }
            CompositePublicKey compositePublicKey = (CompositePublicKey) new a().a(s1aVar);
            if (compositePublicKey == null) {
                throw new IllegalStateException("unable to create CompositePublicKey from SubjectPublicKeyInfo");
            }
            this.keys = compositePublicKey.getPublicKeys();
            this.algorithmIdentifier = compositePublicKey.getAlgorithmIdentifier();
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage(), e);
        }
    }

    public CompositePublicKey(PublicKey... publicKeyArr) {
        this(vp6.Q, publicKeyArr);
    }
}
