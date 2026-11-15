package com.transsion.security.aosp.hap.base.interstore;

import android.security.keystore.KeyGenParameterSpec;
import android.util.Log;
import com.transsion.security.aosp.hap.base.TranConstantsTmp;
import defpackage.cya;
import defpackage.pw4;
import defpackage.qv0;
import defpackage.uwa;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.security.KeyStore;
import javax.crypto.KeyGenerator;
import kotlin.c;

public final class TranCipherStore implements pw4 {
    public final pw4 a;
    public volatile boolean b;

    public TranCipherStore(pw4 pw4Var) {
        y45.j(pw4Var, "plainStore");
        this.a = pw4Var;
        try {
            g();
        } catch (Exception e) {
            Log.e("TranCipherStore", y45.s("Keystore not worked rarely: ", e.getMessage()));
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object a(String str, wh1 wh1Var) {
        TranCipherStore$loadString$1 tranCipherStore$loadString$1;
        cya cyaVar;
        if (wh1Var instanceof TranCipherStore$loadString$1) {
            tranCipherStore$loadString$1 = (TranCipherStore$loadString$1) wh1Var;
            int i = tranCipherStore$loadString$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                tranCipherStore$loadString$1.label = i - Integer.MIN_VALUE;
            } else {
                tranCipherStore$loadString$1 = new TranCipherStore$loadString$1(this, wh1Var);
            }
        } else {
            tranCipherStore$loadString$1 = new TranCipherStore$loadString$1(this, wh1Var);
        }
        Object obj = tranCipherStore$loadString$1.result;
        Object objF = z45.f();
        int i2 = tranCipherStore$loadString$1.label;
        if (i2 == 0) {
            c.b(obj);
            cya cyaVar2 = cya.a;
            pw4 pw4Var = this.a;
            tranCipherStore$loadString$1.L$0 = cyaVar2;
            tranCipherStore$loadString$1.label = 1;
            Object objC = pw4Var.c(str, tranCipherStore$loadString$1);
            if (objC == objF) {
                return objF;
            }
            obj = objC;
            cyaVar = cyaVar2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            cyaVar = (cya) tranCipherStore$loadString$1.L$0;
            c.b(obj);
        }
        byte[] bArrC = cyaVar.c((byte[]) obj);
        if (bArrC == null) {
            return null;
        }
        return new String(bArrC, qv0.b);
    }

    @Override
    public Object b(wh1 wh1Var) {
        return this.a.b(wh1Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object c(String str, wh1 wh1Var) {
        TranCipherStore$loadBytes$1 tranCipherStore$loadBytes$1;
        cya cyaVar;
        if (wh1Var instanceof TranCipherStore$loadBytes$1) {
            tranCipherStore$loadBytes$1 = (TranCipherStore$loadBytes$1) wh1Var;
            int i = tranCipherStore$loadBytes$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                tranCipherStore$loadBytes$1.label = i - Integer.MIN_VALUE;
            } else {
                tranCipherStore$loadBytes$1 = new TranCipherStore$loadBytes$1(this, wh1Var);
            }
        } else {
            tranCipherStore$loadBytes$1 = new TranCipherStore$loadBytes$1(this, wh1Var);
        }
        Object obj = tranCipherStore$loadBytes$1.result;
        Object objF = z45.f();
        int i2 = tranCipherStore$loadBytes$1.label;
        if (i2 == 0) {
            c.b(obj);
            cya cyaVar2 = cya.a;
            pw4 pw4Var = this.a;
            tranCipherStore$loadBytes$1.L$0 = cyaVar2;
            tranCipherStore$loadBytes$1.label = 1;
            Object objC = pw4Var.c(str, tranCipherStore$loadBytes$1);
            if (objC == objF) {
                return objF;
            }
            obj = objC;
            cyaVar = cyaVar2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            cyaVar = (cya) tranCipherStore$loadBytes$1.L$0;
            c.b(obj);
        }
        return cyaVar.c((byte[]) obj);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object d(String str, byte[] bArr, wh1 wh1Var) {
        TranCipherStore$saveBytes$1 tranCipherStore$saveBytes$1;
        if (wh1Var instanceof TranCipherStore$saveBytes$1) {
            tranCipherStore$saveBytes$1 = (TranCipherStore$saveBytes$1) wh1Var;
            int i = tranCipherStore$saveBytes$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                tranCipherStore$saveBytes$1.label = i - Integer.MIN_VALUE;
            } else {
                tranCipherStore$saveBytes$1 = new TranCipherStore$saveBytes$1(this, wh1Var);
            }
        } else {
            tranCipherStore$saveBytes$1 = new TranCipherStore$saveBytes$1(this, wh1Var);
        }
        Object obj = tranCipherStore$saveBytes$1.result;
        Object objF = z45.f();
        int i2 = tranCipherStore$saveBytes$1.label;
        if (i2 == 0) {
            c.b(obj);
            g();
            byte[] bArrD = cya.a.d(bArr);
            if (bArrD != null) {
                pw4 pw4Var = this.a;
                tranCipherStore$saveBytes$1.label = 1;
                if (pw4Var.d(str, bArrD, tranCipherStore$saveBytes$1) == objF) {
                    return objF;
                }
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return zfb.a;
    }

    @Override
    public Object e(String str, wh1 wh1Var) {
        Object objE = this.a.e(str, wh1Var);
        return objE == z45.f() ? objE : zfb.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object f(String str, String str2, wh1 wh1Var) {
        TranCipherStore$saveString$1 tranCipherStore$saveString$1;
        if (wh1Var instanceof TranCipherStore$saveString$1) {
            tranCipherStore$saveString$1 = (TranCipherStore$saveString$1) wh1Var;
            int i = tranCipherStore$saveString$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                tranCipherStore$saveString$1.label = i - Integer.MIN_VALUE;
            } else {
                tranCipherStore$saveString$1 = new TranCipherStore$saveString$1(this, wh1Var);
            }
        } else {
            tranCipherStore$saveString$1 = new TranCipherStore$saveString$1(this, wh1Var);
        }
        Object obj = tranCipherStore$saveString$1.result;
        Object objF = z45.f();
        int i2 = tranCipherStore$saveString$1.label;
        if (i2 == 0) {
            c.b(obj);
            g();
            cya cyaVar = cya.a;
            byte[] bytes = str2.getBytes(qv0.b);
            y45.i(bytes, "this as java.lang.String).getBytes(charset)");
            byte[] bArrD = cyaVar.d(bytes);
            if (bArrD != null) {
                pw4 pw4Var = this.a;
                tranCipherStore$saveString$1.label = 1;
                if (pw4Var.d(str, bArrD, tranCipherStore$saveString$1) == objF) {
                    return objF;
                }
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return zfb.a;
    }

    public final void g() {
        if (this.b) {
            return;
        }
        synchronized (this) {
            if (this.b) {
                return;
            }
            TranConstantsTmp tranConstantsTmp = TranConstantsTmp.a;
            KeyStore keyStore = KeyStore.getInstance(tranConstantsTmp.b());
            keyStore.load(null);
            uwa uwaVar = uwa.a;
            if (keyStore.containsAlias(uwaVar.b())) {
                this.b = true;
                return;
            }
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", tranConstantsTmp.b());
            keyGenerator.init(new KeyGenParameterSpec.Builder(uwaVar.b(), 3).setBlockModes("CBC").setEncryptionPaddings("PKCS7Padding").setRandomizedEncryptionRequired(false).setKeySize(256).build());
            keyGenerator.generateKey();
        }
    }
}
