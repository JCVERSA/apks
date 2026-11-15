package com.transsion.security.api.hap;

import android.content.Context;
import com.transsion.security.aosp.hap.base.auth.impl.TranHapKeyStoreLite;
import com.transsion.security.aosp.hap.base.impl.TranHapCryptoManagerV2Impl;
import defpackage.b3d;
import defpackage.i5b;
import defpackage.jxa;
import defpackage.kxa;
import defpackage.s6d;
import defpackage.s74;
import defpackage.tn9;
import defpackage.twa;
import defpackage.uwa;
import defpackage.y45;
import hyperion.hap.ICryptoManager;
import hyperion.interstore.impl.TranStorePrefs;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

public final class TranCryptoManagerLite implements ICryptoManager {
    public static final Companion b = new Companion();
    public final kxa a;

    public static final class Companion extends tn9 {

        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        public class AnonymousClass1 extends FunctionReferenceImpl implements s74 {
            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

            public AnonymousClass1() {
                super(2, TranCryptoManagerLite.class, MethodDecl.initName, "<init>(Landroid/content/Context;Z)V", 0);
            }

            @Override
            public Object invoke(Object obj, Object obj2) {
                return invoke((Context) obj, ((Boolean) obj2).booleanValue());
            }

            public final TranCryptoManagerLite invoke(Context context, boolean z) {
                y45.j(context, "p0");
                return new TranCryptoManagerLite(context, z);
            }
        }

        public Companion() {
            super(AnonymousClass1.INSTANCE);
        }
    }

    public TranCryptoManagerLite(Context context, boolean z) {
        new s6d();
        TranStorePrefs tranStorePrefs = new TranStorePrefs(context, uwa.a.a());
        this.a = new kxa(context, jxa.a, new TranHapCryptoManagerV2Impl(context, new twa(), new i5b(), tranStorePrefs, new TranHapKeyStoreLite(tranStorePrefs), b3d.a), false, z, 8, null);
    }

    @Override
    public final List aliases() {
        return this.a.aliases();
    }

    @Override
    public final byte[] decrypt(String str, byte[] bArr) {
        return this.a.decrypt(str, bArr);
    }

    @Override
    public final byte[] encrypt(String str, byte[] bArr) {
        return this.a.encrypt(str, bArr);
    }

    @Override
    public final byte[] exportKey(String str) {
        return this.a.exportKey(str);
    }

    @Override
    public final void generateKey(String str, int i) throws Exception {
        kxa kxaVar = this.a;
        y45.i(str, "generateKey(...)");
        kxaVar.generateKey(str, i);
    }

    @Override
    public final byte[] getImportKeyAAD(int i) {
        return this.a.getImportKeyAAD(i);
    }

    @Override
    public final void importKey(String str, int i, String str2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) throws Exception {
        kxa kxaVar = this.a;
        y45.i(str, "importKey(...)");
        y45.i(str2, "importKey(...)");
        y45.i(bArr, "importKey(...)");
        y45.i(bArr2, "importKey(...)");
        y45.i(bArr3, "importKey(...)");
        y45.i(bArr4, "importKey(...)");
        y45.i(bArr5, "importKey(...)");
        kxaVar.importKey(str, i, str2, bArr, bArr2, bArr3, bArr4, bArr5);
    }

    @Override
    public final void removeKey(String str) throws Exception {
        kxa kxaVar = this.a;
        y45.i(str, "removeKey(...)");
        kxaVar.removeKey(str);
    }

    @Override
    public final byte[] sign(String str, byte[] bArr) {
        return this.a.sign(str, bArr);
    }

    @Override
    public final void updateKey(String str, int i) throws Exception {
        kxa kxaVar = this.a;
        y45.i(str, "updateKey(...)");
        kxaVar.updateKey(str, i);
    }

    @Override
    public final boolean verify(String str, byte[] bArr, byte[] bArr2) {
        return this.a.verify(str, bArr, bArr2);
    }
}
