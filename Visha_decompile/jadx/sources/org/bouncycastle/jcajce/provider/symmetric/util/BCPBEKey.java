package org.bouncycastle.jcajce.provider.symmetric.util;

import defpackage.ci;
import defpackage.cw0;
import defpackage.l1;
import defpackage.sf5;
import defpackage.tu7;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.PBEKeySpec;
import javax.security.auth.Destroyable;

public class BCPBEKey implements PBEKey, Destroyable {
    String algorithm;
    int digest;
    private final AtomicBoolean hasBeenDestroyed;
    private final int iterationCount;
    int ivSize;
    int keySize;
    l1 oid;
    private final cw0 param;
    private final char[] password;
    private final byte[] salt;
    boolean tryWrong;
    int type;

    public BCPBEKey(String str, l1 l1Var, int i, int i2, int i3, int i4, PBEKeySpec pBEKeySpec, cw0 cw0Var) {
        this.hasBeenDestroyed = new AtomicBoolean(false);
        this.tryWrong = false;
        this.algorithm = str;
        this.oid = l1Var;
        this.type = i;
        this.digest = i2;
        this.keySize = i3;
        this.ivSize = i4;
        this.password = pBEKeySpec.getPassword();
        this.iterationCount = pBEKeySpec.getIterationCount();
        this.salt = pBEKeySpec.getSalt();
        this.param = cw0Var;
    }

    public static void checkDestroyed(Destroyable destroyable) {
        if (destroyable.isDestroyed()) {
            throw new IllegalStateException("key has been destroyed");
        }
    }

    @Override
    public void destroy() {
        if (this.hasBeenDestroyed.getAndSet(true)) {
            return;
        }
        char[] cArr = this.password;
        if (cArr != null) {
            ci.t(cArr, (char) 0);
        }
        byte[] bArr = this.salt;
        if (bArr != null) {
            ci.s(bArr, (byte) 0);
        }
    }

    @Override
    public String getAlgorithm() {
        String str = this.algorithm;
        checkDestroyed(this);
        return str;
    }

    public int getDigest() {
        int i = this.digest;
        checkDestroyed(this);
        return i;
    }

    @Override
    public byte[] getEncoded() {
        byte[] bArrC;
        cw0 cw0Var = this.param;
        if (cw0Var != null) {
            bArrC = ((sf5) cw0Var).a();
        } else {
            int i = this.type;
            if (i == 2) {
                bArrC = tu7.a(this.password);
            } else {
                bArrC = i == 5 ? tu7.c(this.password) : tu7.b(this.password);
            }
        }
        checkDestroyed(this);
        return bArrC;
    }

    @Override
    public String getFormat() {
        checkDestroyed(this);
        return "RAW";
    }

    @Override
    public int getIterationCount() {
        int i = this.iterationCount;
        checkDestroyed(this);
        return i;
    }

    public int getIvSize() {
        int i = this.ivSize;
        checkDestroyed(this);
        return i;
    }

    public int getKeySize() {
        int i = this.keySize;
        checkDestroyed(this);
        return i;
    }

    public l1 getOID() {
        l1 l1Var = this.oid;
        checkDestroyed(this);
        return l1Var;
    }

    public cw0 getParam() {
        cw0 cw0Var = this.param;
        checkDestroyed(this);
        return cw0Var;
    }

    @Override
    public char[] getPassword() {
        char[] cArrG = ci.g(this.password);
        checkDestroyed(this);
        if (cArrG != null) {
            return cArrG;
        }
        throw new IllegalStateException("no password available");
    }

    @Override
    public byte[] getSalt() {
        byte[] bArrF = ci.f(this.salt);
        checkDestroyed(this);
        return bArrF;
    }

    public int getType() {
        int i = this.type;
        checkDestroyed(this);
        return i;
    }

    @Override
    public boolean isDestroyed() {
        return this.hasBeenDestroyed.get();
    }

    public void setTryWrongPKCS12Zero(boolean z) {
        this.tryWrong = z;
    }

    public boolean shouldTryWrongPKCS12() {
        return this.tryWrong;
    }

    public BCPBEKey(String str, cw0 cw0Var) {
        this.hasBeenDestroyed = new AtomicBoolean(false);
        this.tryWrong = false;
        this.algorithm = str;
        this.param = cw0Var;
        this.password = null;
        this.iterationCount = -1;
        this.salt = null;
    }
}
