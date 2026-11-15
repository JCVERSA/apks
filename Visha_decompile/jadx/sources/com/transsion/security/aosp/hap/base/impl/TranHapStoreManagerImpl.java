package com.transsion.security.aosp.hap.base.impl;

import android.content.Context;
import defpackage.dl0;
import defpackage.mw4;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.pw4;
import defpackage.qw4;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.y71;
import defpackage.z45;
import defpackage.zfb;
import hyperion.hap.IStoreManager;
import java.util.List;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import org.mozilla.javascript.ES6Iterator;

public final class TranHapStoreManagerImpl implements IStoreManager {
    public final Context a;
    public final mw4 b;
    public final qw4 c;
    public final pw4 d;
    public final pw4 e;
    public final String f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lnk1;", "", "", "<anonymous>", "(Lnk1;)Ljava/util/List;"}, k = 3, mv = {1, 6, 0})
    @nt1(c = "com.transsion.security.aosp.hap.base.impl.TranHapStoreManagerImpl$getKeys$1", f = "TranHapStoreManagerImpl.kt", l = {115, 118}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final int $location;
        int label;
        final TranHapStoreManagerImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(int i, TranHapStoreManagerImpl tranHapStoreManagerImpl, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$location = i;
            this.this$0 = tranHapStoreManagerImpl;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.$location, this.this$0, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super List<String>> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    c.b(obj);
                    return (List) obj;
                }
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                return (List) obj;
            }
            c.b(obj);
            int i2 = this.$location;
            if (1 == i2) {
                pw4 pw4VarB = this.this$0.b();
                this.label = 1;
                obj = pw4VarB.b(this);
                if (obj == objF) {
                    return objF;
                }
                return (List) obj;
            }
            if (2 != i2) {
                return y71.k();
            }
            pw4 pw4VarA = this.this$0.a();
            this.label = 2;
            obj = pw4VarA.b(this);
            if (obj == objF) {
                return objF;
            }
            return (List) obj;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "", "<anonymous>", "(Lnk1;)[B"}, k = 3, mv = {1, 6, 0})
    @nt1(c = "com.transsion.security.aosp.hap.base.impl.TranHapStoreManagerImpl$loadByteArray$1", f = "TranHapStoreManagerImpl.kt", l = {73}, m = "invokeSuspend")
    public static final class C23801 extends SuspendLambda implements s74 {
        final String $name;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23801(String str, wh1<? super C23801> wh1Var) {
            super(2, wh1Var);
            this.$name = str;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return TranHapStoreManagerImpl.this.new C23801(this.$name, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super byte[]> wh1Var) {
            return ((C23801) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                pw4 pw4VarB = TranHapStoreManagerImpl.this.b();
                String str = this.$name;
                this.label = 1;
                obj = pw4VarB.c(str, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return obj;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "", "<anonymous>", "(Lnk1;)Ljava/lang/String;"}, k = 3, mv = {1, 6, 0})
    @nt1(c = "com.transsion.security.aosp.hap.base.impl.TranHapStoreManagerImpl$loadString$1", f = "TranHapStoreManagerImpl.kt", l = {39}, m = "invokeSuspend")
    public static final class C23811 extends SuspendLambda implements s74 {
        final String $name;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23811(String str, wh1<? super C23811> wh1Var) {
            super(2, wh1Var);
            this.$name = str;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return TranHapStoreManagerImpl.this.new C23811(this.$name, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super String> wh1Var) {
            return ((C23811) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                pw4 pw4VarB = TranHapStoreManagerImpl.this.b();
                String str = this.$name;
                this.label = 1;
                obj = pw4VarB.a(str, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return obj;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "", "<anonymous>", "(Lnk1;)Ljava/lang/String;"}, k = 3, mv = {1, 6, 0})
    @nt1(c = "com.transsion.security.aosp.hap.base.impl.TranHapStoreManagerImpl$loadStringPersist$1", f = "TranHapStoreManagerImpl.kt", l = {58}, m = "invokeSuspend")
    public static final class C23821 extends SuspendLambda implements s74 {
        final String $name;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23821(String str, wh1<? super C23821> wh1Var) {
            super(2, wh1Var);
            this.$name = str;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return TranHapStoreManagerImpl.this.new C23821(this.$name, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super String> wh1Var) {
            return ((C23821) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                pw4 pw4VarA = TranHapStoreManagerImpl.this.a();
                String str = this.$name;
                this.label = 1;
                obj = pw4VarA.a(str, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return obj;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 6, 0})
    @nt1(c = "com.transsion.security.aosp.hap.base.impl.TranHapStoreManagerImpl$saveByteArray$1", f = "TranHapStoreManagerImpl.kt", l = {65}, m = "invokeSuspend")
    public static final class C23831 extends SuspendLambda implements s74 {
        final String $name;
        final byte[] $value;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23831(String str, byte[] bArr, wh1<? super C23831> wh1Var) {
            super(2, wh1Var);
            this.$name = str;
            this.$value = bArr;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return TranHapStoreManagerImpl.this.new C23831(this.$name, this.$value, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((C23831) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                pw4 pw4VarB = TranHapStoreManagerImpl.this.b();
                String str = this.$name;
                byte[] bArr = this.$value;
                this.label = 1;
                if (pw4VarB.d(str, bArr, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 6, 0})
    @nt1(c = "com.transsion.security.aosp.hap.base.impl.TranHapStoreManagerImpl$saveString$1", f = "TranHapStoreManagerImpl.kt", l = {31}, m = "invokeSuspend")
    public static final class C23841 extends SuspendLambda implements s74 {
        final String $name;
        final String $value;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23841(String str, String str2, wh1<? super C23841> wh1Var) {
            super(2, wh1Var);
            this.$name = str;
            this.$value = str2;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return TranHapStoreManagerImpl.this.new C23841(this.$name, this.$value, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((C23841) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                pw4 pw4VarB = TranHapStoreManagerImpl.this.b();
                String str = this.$name;
                String str2 = this.$value;
                this.label = 1;
                if (pw4VarB.f(str, str2, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 6, 0})
    @nt1(c = "com.transsion.security.aosp.hap.base.impl.TranHapStoreManagerImpl$saveStringPersist$1", f = "TranHapStoreManagerImpl.kt", l = {49}, m = "invokeSuspend")
    public static final class C23851 extends SuspendLambda implements s74 {
        final String $name;
        final String $value;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23851(String str, String str2, wh1<? super C23851> wh1Var) {
            super(2, wh1Var);
            this.$name = str;
            this.$value = str2;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return TranHapStoreManagerImpl.this.new C23851(this.$name, this.$value, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((C23851) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                pw4 pw4VarA = TranHapStoreManagerImpl.this.a();
                String str = this.$name;
                String str2 = this.$value;
                this.label = 1;
                if (pw4VarA.f(str, str2, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    public TranHapStoreManagerImpl(Context context, mw4 mw4Var, qw4 qw4Var, pw4 pw4Var, pw4 pw4Var2) {
        y45.j(context, "context");
        y45.j(mw4Var, "authStatus");
        y45.j(qw4Var, "usageDelegate");
        y45.j(pw4Var, "secureDelegate");
        y45.j(pw4Var2, "persistDelegate");
        this.a = context;
        this.b = mw4Var;
        this.c = qw4Var;
        this.d = pw4Var;
        this.e = pw4Var2;
        this.f = "TranHapStoreManagerImpl";
    }

    public final pw4 a() {
        return this.e;
    }

    public final pw4 b() {
        return this.d;
    }

    @Override
    public List getKeys(int i) {
        this.b.a();
        if (2 == i) {
            this.b.c();
        }
        return (List) dl0.b(null, new AnonymousClass1(i, this, null), 1, null);
    }

    @Override
    public byte[] loadByteArray(String str) {
        y45.j(str, "name");
        this.b.a();
        return (byte[]) dl0.b(null, new C23801(str, null), 1, null);
    }

    @Override
    public void loadFile(String str, String str2) {
        y45.j(str, "name");
        y45.j(str2, "toPath");
        this.b.a();
        throw new NotImplementedError(null, 1, null);
    }

    @Override
    public String loadString(String str) {
        y45.j(str, "name");
        this.b.a();
        return (String) dl0.b(null, new C23811(str, null), 1, null);
    }

    @Override
    public String loadStringPersist(String str) {
        y45.j(str, "name");
        this.b.a();
        this.b.c();
        return (String) dl0.b(null, new C23821(str, null), 1, null);
    }

    @Override
    public void remove(String str, int i) {
        y45.j(str, "name");
        this.b.a();
        if (2 == i) {
            this.b.c();
        }
        if (1 == i) {
            dl0.b(null, new TranHapStoreManagerImpl$remove$1$1(this, str, null), 1, null);
        } else if (2 == i) {
            dl0.b(null, new TranHapStoreManagerImpl$remove$2$1(this, str, null), 1, null);
        }
    }

    @Override
    public void saveByteArray(String str, byte[] bArr) {
        y45.j(str, "name");
        y45.j(bArr, ES6Iterator.VALUE_PROPERTY);
        this.b.a();
        this.c.a(new String[]{str}, null, null, new byte[][]{bArr});
        dl0.b(null, new C23831(str, bArr, null), 1, null);
    }

    @Override
    public void saveFile(String str, String str2) {
        y45.j(str, "name");
        y45.j(str2, "fromPath");
        this.b.a();
        throw new NotImplementedError(null, 1, null);
    }

    @Override
    public void saveString(String str, String str2) {
        y45.j(str, "name");
        y45.j(str2, ES6Iterator.VALUE_PROPERTY);
        this.b.a();
        qw4.a.b(this.c, new String[]{str}, new String[]{str2}, null, null, 12, null);
        dl0.b(null, new C23841(str, str2, null), 1, null);
    }

    @Override
    public void saveStringPersist(String str, String str2) {
        y45.j(str, "name");
        y45.j(str2, ES6Iterator.VALUE_PROPERTY);
        this.b.a();
        this.b.c();
        qw4.a.b(this.c, new String[]{str}, null, new String[]{str2}, null, 8, null);
        this.b.b(getKeys(2));
        dl0.b(null, new C23851(str, str2, null), 1, null);
    }
}
