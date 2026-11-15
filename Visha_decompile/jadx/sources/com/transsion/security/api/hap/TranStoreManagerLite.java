package com.transsion.security.api.hap;

import android.content.Context;
import com.transsion.security.aosp.hap.base.impl.TranHapStoreManagerImpl;
import com.transsion.security.aosp.hap.base.interstore.TranCipherStore;
import defpackage.i5b;
import defpackage.jxa;
import defpackage.kxa;
import defpackage.s6d;
import defpackage.s74;
import defpackage.tn9;
import defpackage.twa;
import defpackage.uwa;
import defpackage.y45;
import hyperion.hap.IStoreManager;
import hyperion.interstore.impl.TranStorePrefs;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

public final class TranStoreManagerLite implements IStoreManager {
    public static final Companion b = new Companion();
    public final kxa a;

    public static final class Companion extends tn9 {

        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        public class AnonymousClass1 extends FunctionReferenceImpl implements s74 {
            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

            public AnonymousClass1() {
                super(2, TranStoreManagerLite.class, MethodDecl.initName, "<init>(Landroid/content/Context;Z)V", 0);
            }

            @Override
            public Object invoke(Object obj, Object obj2) {
                return invoke((Context) obj, ((Boolean) obj2).booleanValue());
            }

            public final TranStoreManagerLite invoke(Context context, boolean z) {
                y45.j(context, "p0");
                return new TranStoreManagerLite(context, z);
            }
        }

        public Companion() {
            super(AnonymousClass1.INSTANCE);
        }
    }

    public TranStoreManagerLite(Context context, boolean z) {
        new s6d();
        twa twaVar = new twa();
        i5b i5bVar = new i5b();
        uwa uwaVar = uwa.a;
        this.a = new kxa(context, jxa.a, new TranHapStoreManagerImpl(context, twaVar, i5bVar, new TranCipherStore(new TranStorePrefs(context, uwaVar.d())), new TranCipherStore(new TranStorePrefs(context, uwaVar.c()))), false, z, 8, null);
    }

    @Override
    public final List getKeys(int i) {
        return this.a.getKeys(i);
    }

    @Override
    public final byte[] loadByteArray(String str) {
        kxa kxaVar = this.a;
        y45.i(str, "loadByteArray(...)");
        return kxaVar.loadByteArray(str);
    }

    @Override
    public final void loadFile(String str, String str2) throws Exception {
        kxa kxaVar = this.a;
        y45.i(str, "loadFile(...)");
        y45.i(str2, "loadFile(...)");
        kxaVar.loadFile(str, str2);
    }

    @Override
    public final String loadString(String str) {
        kxa kxaVar = this.a;
        y45.i(str, "loadString(...)");
        return kxaVar.loadString(str);
    }

    @Override
    public final String loadStringPersist(String str) {
        kxa kxaVar = this.a;
        y45.i(str, "loadStringPersist(...)");
        return kxaVar.loadStringPersist(str);
    }

    @Override
    public final void remove(String str, int i) throws Exception {
        kxa kxaVar = this.a;
        y45.i(str, "remove(...)");
        kxaVar.remove(str, i);
    }

    @Override
    public final void saveByteArray(String str, byte[] bArr) throws Exception {
        kxa kxaVar = this.a;
        y45.i(str, "saveByteArray(...)");
        y45.i(bArr, "saveByteArray(...)");
        kxaVar.saveByteArray(str, bArr);
    }

    @Override
    public final void saveFile(String str, String str2) throws Exception {
        kxa kxaVar = this.a;
        y45.i(str, "saveFile(...)");
        y45.i(str2, "saveFile(...)");
        kxaVar.saveFile(str, str2);
    }

    @Override
    public final void saveString(String str, String str2) throws Exception {
        kxa kxaVar = this.a;
        y45.i(str, "saveString(...)");
        y45.i(str2, "saveString(...)");
        kxaVar.saveString(str, str2);
    }

    @Override
    public final void saveStringPersist(String str, String str2) throws Exception {
        kxa kxaVar = this.a;
        y45.i(str, "saveStringPersist(...)");
        y45.i(str2, "saveStringPersist(...)");
        kxaVar.saveStringPersist(str, str2);
    }
}
