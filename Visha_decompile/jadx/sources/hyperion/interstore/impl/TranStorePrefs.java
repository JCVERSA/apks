package hyperion.interstore.impl;

import android.content.Context;
import android.util.Log;
import androidx.databinding.ObservableArrayList;
import androidx.databinding.ObservableList;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesFactory;
import androidx.datastore.preferences.core.PreferencesKeys;
import androidx.datastore.preferences.core.PreferencesKt;
import com.transsion.security.aosp.hap.base.TranConstantsTmp;
import defpackage.af5;
import defpackage.dl0;
import defpackage.e74;
import defpackage.eo8;
import defpackage.i81;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.pw4;
import defpackage.pxa;
import defpackage.s74;
import defpackage.sz3;
import defpackage.un9;
import defpackage.wh1;
import defpackage.xq8;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.PropertyReference2Impl;

public final class TranStorePrefs implements pw4 {
    public static final af5[] f = {xq8.k(new PropertyReference2Impl(TranStorePrefs.class, "stringDataStore", "getStringDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};
    public final String a;
    public final String b;
    public final ObservableArrayList c;
    public final eo8 d;
    public DataStore e;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 6, 0})
    @nt1(c = "hyperion.interstore.impl.TranStorePrefs$1", f = "TranStorePrefs.kt", l = {45}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        public int label;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return TranStorePrefs.this.new AnonymousClass1(wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                TranStorePrefs tranStorePrefs = TranStorePrefs.this;
                String str = tranStorePrefs.b;
                this.label = 1;
                obj = tranStorePrefs.c(str, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            byte[] bArr = (byte[]) obj;
            if (bArr == null) {
                return null;
            }
            TranStorePrefs tranStorePrefs2 = TranStorePrefs.this;
            Object objA = pxa.a.a(bArr);
            if (objA instanceof ArrayList) {
                tranStorePrefs2.c.addAll((Collection) objA);
            }
            return zfb.a;
        }
    }

    public static final class Companion extends un9 {

        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        public class AnonymousClass1 extends FunctionReferenceImpl implements s74 {
            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

            public AnonymousClass1() {
                super(2, TranStorePrefs.class, MethodDecl.initName, "<init>(Landroid/content/Context;Ljava/lang/String;)V", 0);
            }

            @Override
            public final TranStorePrefs invoke(Context context, String str) {
                y45.j(context, "p0");
                y45.j(str, "p1");
                return new TranStorePrefs(context, str);
            }
        }

        public Companion() {
            super(AnonymousClass1.INSTANCE);
        }
    }

    static {
        new Companion();
    }

    public TranStorePrefs(Context context, String str) {
        y45.j(context, "context_");
        y45.j(str, "namespace");
        this.a = "StorePrefs";
        this.b = "1c1de458-c44b-11eb-8529-0242ac130003";
        ObservableArrayList observableArrayList = new ObservableArrayList();
        this.c = observableArrayList;
        this.d = PreferenceDataStoreDelegateKt.preferencesDataStore$default(str, new ReplaceFileCorruptionHandler(new e74() {
            {
                super(1);
            }

            @Override
            public final Preferences invoke(CorruptionException corruptionException) {
                y45.j(corruptionException, "it");
                Log.e(this.this$0.a, "something went wrong!! preferences corrupted!");
                return PreferencesFactory.createMutable(new Preferences.Pair[0]);
            }
        }), null, null, 12, null);
        this.e = g(context);
        dl0.b(null, new AnonymousClass1(null), 1, null);
        observableArrayList.addOnListChangedCallback(new ObservableList.OnListChangedCallback<ObservableList<String>>() {
            @Override
            public final void onChanged(ObservableList observableList) {
            }

            @Override
            public final void onItemRangeChanged(ObservableList observableList, int i, int i2) {
            }

            @Override
            public final void onItemRangeInserted(ObservableList observableList, int i, int i2) {
                dl0.b(null, new TranStorePrefs$2$onItemRangeInserted$1(observableList, TranStorePrefs.this, null), 1, null);
            }

            @Override
            public final void onItemRangeMoved(ObservableList observableList, int i, int i2, int i3) {
            }

            @Override
            public final void onItemRangeRemoved(ObservableList observableList, int i, int i2) {
                dl0.b(null, new TranStorePrefs$2$onItemRangeRemoved$1(observableList, TranStorePrefs.this, null), 1, null);
            }
        });
    }

    @Override
    public final Object a(String str, wh1 wh1Var) {
        final Preferences.Key<String> keyStringKey = PreferencesKeys.stringKey(str);
        final nz3 data = this.e.getData();
        return sz3.q(new nz3() {

            public static final class AnonymousClass2 implements oz3 {
                public final oz3 b;
                public final Preferences.Key c;

                @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
                @nt1(c = "hyperion.interstore.impl.TranStorePrefs$loadString$$inlined$map$1$2", f = "TranStorePrefs.kt", l = {224}, m = "emit")
                public static final class AnonymousClass1 extends ContinuationImpl {
                    public Object L$0;
                    public int label;
                    public Object result;

                    public AnonymousClass1(wh1 wh1Var) {
                        super(wh1Var);
                    }

                    @Override
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(oz3 oz3Var, Preferences.Key key) {
                    this.b = oz3Var;
                    this.c = key;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override
                public final Object emit(Object obj, wh1 wh1Var) {
                    AnonymousClass1 anonymousClass1;
                    if (wh1Var instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) wh1Var;
                        int i = anonymousClass1.label;
                        if ((i & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(wh1Var);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(wh1Var);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object objF = z45.f();
                    int i2 = anonymousClass1.label;
                    if (i2 == 0) {
                        c.b(obj2);
                        oz3 oz3Var = this.b;
                        Object obj3 = ((Preferences) obj).get(this.c);
                        anonymousClass1.label = 1;
                        if (oz3Var.emit(obj3, anonymousClass1) == objF) {
                            return objF;
                        }
                    } else {
                        if (i2 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        c.b(obj2);
                    }
                    return zfb.a;
                }
            }

            @Override
            public final Object collect(oz3 oz3Var, wh1 wh1Var2) {
                Object objCollect = data.collect(new AnonymousClass2(oz3Var, keyStringKey), wh1Var2);
                return objCollect == z45.f() ? objCollect : zfb.a;
            }
        }, wh1Var);
    }

    @Override
    public final Object b(wh1 wh1Var) {
        return i81.b1(this.c);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public final Object c(String str, wh1 wh1Var) {
        TranStorePrefs$loadBytes$1 tranStorePrefs$loadBytes$1;
        if (wh1Var instanceof TranStorePrefs$loadBytes$1) {
            tranStorePrefs$loadBytes$1 = (TranStorePrefs$loadBytes$1) wh1Var;
            int i = tranStorePrefs$loadBytes$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                tranStorePrefs$loadBytes$1.label = i - Integer.MIN_VALUE;
            } else {
                tranStorePrefs$loadBytes$1 = new TranStorePrefs$loadBytes$1(this, wh1Var);
            }
        } else {
            tranStorePrefs$loadBytes$1 = new TranStorePrefs$loadBytes$1(this, wh1Var);
        }
        Object objA = tranStorePrefs$loadBytes$1.result;
        Object objF = z45.f();
        int i2 = tranStorePrefs$loadBytes$1.label;
        if (i2 == 0) {
            c.b(objA);
            tranStorePrefs$loadBytes$1.label = 1;
            objA = a(str, tranStorePrefs$loadBytes$1);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(objA);
        }
        String str2 = (String) objA;
        if (str2 == null) {
            return null;
        }
        Charset charsetA = TranConstantsTmp.a.a();
        y45.i(charsetA, "ISO88591");
        byte[] bytes = str2.getBytes(charsetA);
        y45.i(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    @Override
    public final Object d(String str, byte[] bArr, wh1 wh1Var) {
        Charset charsetA = TranConstantsTmp.a.a();
        y45.i(charsetA, "ISO88591");
        Object objF = f(str, new String(bArr, charsetA), wh1Var);
        return objF == z45.f() ? objF : zfb.a;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0016 A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:3:0x0001, B:5:0x0005, B:7:0x0010, B:11:0x001b, B:14:0x0028, B:22:0x005a, B:15:0x0034, B:16:0x003b, B:17:0x003c, B:10:0x0016), top: B:27:0x0001 }] */
    @Override
    public final synchronized Object e(String str, wh1 wh1Var) {
        TranStorePrefs$remove$1 tranStorePrefs$remove$1;
        TranStorePrefs tranStorePrefs;
        try {
            if (wh1Var instanceof TranStorePrefs$remove$1) {
                tranStorePrefs$remove$1 = (TranStorePrefs$remove$1) wh1Var;
                int i = tranStorePrefs$remove$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    tranStorePrefs$remove$1.label = i - Integer.MIN_VALUE;
                } else {
                    tranStorePrefs$remove$1 = new TranStorePrefs$remove$1(this, wh1Var);
                }
            } else {
                tranStorePrefs$remove$1 = new TranStorePrefs$remove$1(this, wh1Var);
            }
            Object obj = tranStorePrefs$remove$1.result;
            Object objF = z45.f();
            int i2 = tranStorePrefs$remove$1.label;
            if (i2 == 0) {
                c.b(obj);
                Preferences.Key<String> keyStringKey = PreferencesKeys.stringKey(str);
                DataStore dataStore = this.e;
                TranStorePrefs$remove$2 tranStorePrefs$remove$2 = new TranStorePrefs$remove$2(keyStringKey, null);
                tranStorePrefs$remove$1.L$0 = this;
                tranStorePrefs$remove$1.L$1 = str;
                tranStorePrefs$remove$1.label = 1;
                if (PreferencesKt.edit(dataStore, tranStorePrefs$remove$2, tranStorePrefs$remove$1) == objF) {
                    return objF;
                }
                tranStorePrefs = this;
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = (String) tranStorePrefs$remove$1.L$1;
                tranStorePrefs = (TranStorePrefs) tranStorePrefs$remove$1.L$0;
                c.b(obj);
            }
            tranStorePrefs.c.remove(str);
            return zfb.a;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0016 A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:3:0x0001, B:5:0x0005, B:7:0x0010, B:11:0x001b, B:14:0x0028, B:22:0x004e, B:24:0x0057, B:25:0x005c, B:15:0x0034, B:16:0x003b, B:17:0x003c, B:10:0x0016), top: B:30:0x0001 }] */
    @Override
    public final synchronized Object f(String str, String str2, wh1 wh1Var) {
        TranStorePrefs$saveString$1 tranStorePrefs$saveString$1;
        TranStorePrefs tranStorePrefs;
        try {
            if (wh1Var instanceof TranStorePrefs$saveString$1) {
                tranStorePrefs$saveString$1 = (TranStorePrefs$saveString$1) wh1Var;
                int i = tranStorePrefs$saveString$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    tranStorePrefs$saveString$1.label = i - Integer.MIN_VALUE;
                } else {
                    tranStorePrefs$saveString$1 = new TranStorePrefs$saveString$1(this, wh1Var);
                }
            } else {
                tranStorePrefs$saveString$1 = new TranStorePrefs$saveString$1(this, wh1Var);
            }
            Object obj = tranStorePrefs$saveString$1.result;
            Object objF = z45.f();
            int i2 = tranStorePrefs$saveString$1.label;
            if (i2 == 0) {
                c.b(obj);
                tranStorePrefs$saveString$1.L$0 = this;
                tranStorePrefs$saveString$1.L$1 = str;
                tranStorePrefs$saveString$1.label = 1;
                if (h(str, str2, tranStorePrefs$saveString$1) == objF) {
                    return objF;
                }
                tranStorePrefs = this;
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = (String) tranStorePrefs$saveString$1.L$1;
                tranStorePrefs = (TranStorePrefs) tranStorePrefs$saveString$1.L$0;
                c.b(obj);
            }
            if (tranStorePrefs.c.indexOf(str) == -1) {
                tranStorePrefs.c.add(str);
            }
            return zfb.a;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final DataStore g(Context context) {
        return (DataStore) this.d.getValue(context, f[0]);
    }

    public final Object h(String str, String str2, wh1 wh1Var) {
        Object objEdit = PreferencesKt.edit(this.e, new TranStorePrefs$saveStringInner$2(PreferencesKeys.stringKey(str), str2, null), wh1Var);
        return objEdit == z45.f() ? objEdit : zfb.a;
    }

    public final Object i(String str, byte[] bArr, wh1 wh1Var) {
        Charset charsetA = TranConstantsTmp.a.a();
        y45.i(charsetA, "ISO88591");
        Object objH = h(str, new String(bArr, charsetA), wh1Var);
        return objH == z45.f() ? objH : zfb.a;
    }
}
