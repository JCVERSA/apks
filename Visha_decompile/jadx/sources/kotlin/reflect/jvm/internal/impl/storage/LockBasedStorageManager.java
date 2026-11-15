package kotlin.reflect.jvm.internal.impl.storage;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.aq0;
import defpackage.bq0;
import defpackage.c74;
import defpackage.e74;
import defpackage.fn6;
import defpackage.gn6;
import defpackage.j1a;
import defpackage.nn9;
import defpackage.o37;
import defpackage.pe3;
import defpackage.vx9;
import defpackage.w93;
import defpackage.x17;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.utils.WrappedValues;
import org.mozilla.javascript.ES6Iterator;

public class LockBasedStorageManager implements vx9 {
    public static final String d = j1a.f1(LockBasedStorageManager.class.getCanonicalName(), Consts.DOT, "");
    public static final vx9 e = new a("NO_LOCKS", f.a, w93.b);
    public final kotlin.reflect.jvm.internal.impl.storage.a a;
    public final f b;
    public final String c;

    public enum NotValue {
        NOT_COMPUTED,
        COMPUTING,
        RECURSION_WAS_DETECTED
    }

    public static class a extends LockBasedStorageManager {
        public a(String str, f fVar, kotlin.reflect.jvm.internal.impl.storage.a aVar) {
            super(str, fVar, aVar, null);
        }

        public static void j(int i) {
            String str = i != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 1 ? 3 : 2];
            if (i != 1) {
                objArr[0] = "source";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1";
            }
            if (i != 1) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1";
            } else {
                objArr[1] = "recursionDetectedDefault";
            }
            if (i != 1) {
                objArr[2] = "recursionDetectedDefault";
            }
            String str2 = String.format(str, objArr);
            if (i == 1) {
                throw new IllegalStateException(str2);
            }
        }

        @Override
        public n p(String str, Object obj) {
            if (str == null) {
                j(0);
            }
            n nVarA = n.a();
            if (nVarA == null) {
                j(1);
            }
            return nVarA;
        }
    }

    public class b extends j {
        public final Object e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(LockBasedStorageManager lockBasedStorageManager, c74 c74Var, Object obj) {
            super(lockBasedStorageManager, c74Var);
            this.e = obj;
        }

        private static void a(int i) {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$4", "recursionDetected"));
        }

        @Override
        public n c(boolean z) {
            n nVarD = n.d(this.e);
            if (nVarD == null) {
                a(0);
            }
            return nVarD;
        }
    }

    public class c extends k {
        public final e74 f;
        public final e74 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(LockBasedStorageManager lockBasedStorageManager, c74 c74Var, e74 e74Var, e74 e74Var2) {
            super(lockBasedStorageManager, c74Var);
            this.f = e74Var;
            this.g = e74Var2;
        }

        private static void a(int i) {
            String str = i != 2 ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[i != 2 ? 2 : 3];
            if (i != 2) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
            } else {
                objArr[0] = ES6Iterator.VALUE_PROPERTY;
            }
            if (i != 2) {
                objArr[1] = "recursionDetected";
            } else {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
            }
            if (i == 2) {
                objArr[2] = "doPostCompute";
            }
            String str2 = String.format(str, objArr);
            if (i == 2) {
                throw new IllegalArgumentException(str2);
            }
        }

        @Override
        public n c(boolean z) {
            e74 e74Var = this.f;
            if (e74Var == null) {
                n nVarC = super.c(z);
                if (nVarC == null) {
                    a(0);
                }
                return nVarC;
            }
            n nVarD = n.d(e74Var.invoke(Boolean.valueOf(z)));
            if (nVarD == null) {
                a(1);
            }
            return nVarD;
        }

        @Override
        public void f(Object obj) {
            if (obj == null) {
                a(2);
            }
            this.g.invoke(obj);
        }
    }

    public static class d extends e implements aq0 {
        public d(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap concurrentMap, a aVar) {
            this(lockBasedStorageManager, concurrentMap);
        }

        private static void b(int i) {
            String str = i != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 3 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i == 2) {
                objArr[0] = "computation";
            } else if (i != 3) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
            }
            if (i != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
            } else {
                objArr[1] = "computeIfAbsent";
            }
            if (i == 2) {
                objArr[2] = "computeIfAbsent";
            } else if (i != 3) {
                objArr[2] = MethodDecl.initName;
            }
            String str2 = String.format(str, objArr);
            if (i == 3) {
                throw new IllegalStateException(str2);
            }
        }

        @Override
        public Object a(Object obj, c74 c74Var) {
            if (c74Var == null) {
                b(2);
            }
            Object objA = super.a(obj, c74Var);
            if (objA == null) {
                b(3);
            }
            return objA;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap concurrentMap) {
            super(lockBasedStorageManager, concurrentMap, null);
            if (lockBasedStorageManager == null) {
                b(0);
            }
            if (concurrentMap == null) {
                b(1);
            }
        }
    }

    public static class e extends l implements bq0 {

        public class a implements e74 {
            @Override
            public Object invoke(g gVar) {
                return gVar.b.invoke();
            }
        }

        public e(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap concurrentMap, a aVar) {
            this(lockBasedStorageManager, concurrentMap);
        }

        private static void b(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "computation";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction";
            if (i != 2) {
                objArr[2] = MethodDecl.initName;
            } else {
                objArr[2] = "computeIfAbsent";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        public Object a(Object obj, c74 c74Var) {
            if (c74Var == null) {
                b(2);
            }
            return invoke(new g(obj, c74Var));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap concurrentMap) {
            super(lockBasedStorageManager, concurrentMap, new a());
            if (lockBasedStorageManager == null) {
                b(0);
            }
            if (concurrentMap == null) {
                b(1);
            }
        }
    }

    public interface f {
        public static final f a = new a();

        public static class a implements f {
            public static void a(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "throwable", "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy$1", "handleException"));
            }

            @Override
            public RuntimeException handleException(Throwable th) {
                if (th == null) {
                    a(0);
                }
                throw pe3.b(th);
            }
        }

        RuntimeException handleException(Throwable th);
    }

    public static class g {
        public final Object a;
        public final c74 b;

        public g(Object obj, c74 c74Var) {
            this.a = obj;
            this.b = c74Var;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.a.equals(((g) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    public static class h implements o37 {
        public final LockBasedStorageManager b;
        public final c74 c;
        public volatile Object d;

        public h(LockBasedStorageManager lockBasedStorageManager, c74 c74Var) {
            if (lockBasedStorageManager == null) {
                a(0);
            }
            if (c74Var == null) {
                a(1);
            }
            this.d = NotValue.NOT_COMPUTED;
            this.b = lockBasedStorageManager;
            this.c = c74Var;
        }

        private static void a(int i) {
            String str = (i == 2 || i == 3) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 2 || i == 3) ? 2 : 3];
            if (i == 1) {
                objArr[0] = "computable";
            } else if (i == 2 || i == 3) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[0] = "storageManager";
            }
            if (i == 2) {
                objArr[1] = "recursionDetected";
            } else if (i != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[1] = "renderDebugInformation";
            }
            if (i != 2 && i != 3) {
                objArr[2] = MethodDecl.initName;
            }
            String str2 = String.format(str, objArr);
            if (i != 2 && i != 3) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        public void b(Object obj) {
        }

        public n c(boolean z) {
            n nVarP = this.b.p("in a lazy value", null);
            if (nVarP == null) {
                a(2);
            }
            return nVarP;
        }

        public boolean d() {
            return (this.d == NotValue.NOT_COMPUTED || this.d == NotValue.COMPUTING) ? false : true;
        }

        /* JADX WARN: Code duplicated, block: B:19:0x003e A[Catch: all -> 0x0024, TryCatch #1 {all -> 0x0024, blocks: (B:7:0x0012, B:9:0x0018, B:14:0x0026, B:16:0x002a, B:18:0x0039, B:19:0x003e, B:21:0x0042, B:23:0x004d, B:24:0x0052, B:28:0x0061, B:30:0x0067, B:32:0x006d, B:33:0x0073, B:34:0x007d, B:35:0x007e, B:36:0x0084, B:25:0x0054), top: B:41:0x0012, inners: #0 }] */
        /* JADX WARN: Code duplicated, block: B:21:0x0042 A[Catch: all -> 0x0024, TryCatch #1 {all -> 0x0024, blocks: (B:7:0x0012, B:9:0x0018, B:14:0x0026, B:16:0x002a, B:18:0x0039, B:19:0x003e, B:21:0x0042, B:23:0x004d, B:24:0x0052, B:28:0x0061, B:30:0x0067, B:32:0x006d, B:33:0x0073, B:34:0x007d, B:35:0x007e, B:36:0x0084, B:25:0x0054), top: B:41:0x0012, inners: #0 }] */
        /* JADX WARN: Code duplicated, block: B:23:0x004d A[Catch: all -> 0x0024, TryCatch #1 {all -> 0x0024, blocks: (B:7:0x0012, B:9:0x0018, B:14:0x0026, B:16:0x002a, B:18:0x0039, B:19:0x003e, B:21:0x0042, B:23:0x004d, B:24:0x0052, B:28:0x0061, B:30:0x0067, B:32:0x006d, B:33:0x0073, B:34:0x007d, B:35:0x007e, B:36:0x0084, B:25:0x0054), top: B:41:0x0012, inners: #0 }] */
        /* JADX WARN: Code duplicated, block: B:24:0x0052 A[Catch: all -> 0x0024, TRY_LEAVE, TryCatch #1 {all -> 0x0024, blocks: (B:7:0x0012, B:9:0x0018, B:14:0x0026, B:16:0x002a, B:18:0x0039, B:19:0x003e, B:21:0x0042, B:23:0x004d, B:24:0x0052, B:28:0x0061, B:30:0x0067, B:32:0x006d, B:33:0x0073, B:34:0x007d, B:35:0x007e, B:36:0x0084, B:25:0x0054), top: B:41:0x0012, inners: #0 }] */
        @Override
        public Object invoke() {
            Object objInvoke;
            n nVarC;
            Object obj = this.d;
            if (!(obj instanceof NotValue)) {
                return WrappedValues.f(obj);
            }
            this.b.a.lock();
            try {
                Object obj2 = this.d;
                if (obj2 instanceof NotValue) {
                    NotValue notValue = NotValue.COMPUTING;
                    if (obj2 == notValue) {
                        this.d = NotValue.RECURSION_WAS_DETECTED;
                        n nVarC2 = c(true);
                        if (!nVarC2.c()) {
                            objInvoke = nVarC2.b();
                        } else if (obj2 == NotValue.RECURSION_WAS_DETECTED) {
                            nVarC = c(false);
                            if (nVarC.c()) {
                                this.d = notValue;
                                try {
                                    objInvoke = this.c.invoke();
                                    b(objInvoke);
                                    this.d = objInvoke;
                                } catch (Throwable th) {
                                    if (pe3.a(th)) {
                                        this.d = NotValue.NOT_COMPUTED;
                                        throw th;
                                    }
                                    if (this.d == NotValue.COMPUTING) {
                                        this.d = WrappedValues.c(th);
                                    }
                                    throw this.b.b.handleException(th);
                                }
                            } else {
                                objInvoke = nVarC.b();
                            }
                        } else {
                            this.d = notValue;
                            objInvoke = this.c.invoke();
                            b(objInvoke);
                            this.d = objInvoke;
                        }
                    } else if (obj2 == NotValue.RECURSION_WAS_DETECTED) {
                        nVarC = c(false);
                        if (nVarC.c()) {
                            objInvoke = nVarC.b();
                        } else {
                            this.d = notValue;
                            objInvoke = this.c.invoke();
                            b(objInvoke);
                            this.d = objInvoke;
                        }
                    } else {
                        this.d = notValue;
                        objInvoke = this.c.invoke();
                        b(objInvoke);
                        this.d = objInvoke;
                    }
                } else {
                    objInvoke = WrappedValues.f(obj2);
                }
                this.b.a.unlock();
                return objInvoke;
            } catch (Throwable th2) {
                this.b.a.unlock();
                throw th2;
            }
        }
    }

    public static abstract class i extends h {
        public volatile nn9 e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(LockBasedStorageManager lockBasedStorageManager, c74 c74Var) {
            super(lockBasedStorageManager, c74Var);
            if (lockBasedStorageManager == null) {
                a(0);
            }
            if (c74Var == null) {
                a(1);
            }
            this.e = null;
        }

        private static void a(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "computable";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute";
            objArr[2] = MethodDecl.initName;
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override
        public final void b(Object obj) {
            this.e = new nn9(obj);
            try {
                f(obj);
            } finally {
                this.e = null;
            }
        }

        public abstract void f(Object obj);

        @Override
        public Object invoke() {
            nn9 nn9Var = this.e;
            return (nn9Var == null || !nn9Var.b()) ? super.invoke() : nn9Var.a();
        }
    }

    public static class j extends h implements x17 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(LockBasedStorageManager lockBasedStorageManager, c74 c74Var) {
            super(lockBasedStorageManager, c74Var);
            if (lockBasedStorageManager == null) {
                a(0);
            }
            if (c74Var == null) {
                a(1);
            }
        }

        private static void a(int i) {
            String str = i != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 2 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "computable";
            } else if (i != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue";
            }
            if (i != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue";
            } else {
                objArr[1] = "invoke";
            }
            if (i != 2) {
                objArr[2] = MethodDecl.initName;
            }
            String str2 = String.format(str, objArr);
            if (i == 2) {
                throw new IllegalStateException(str2);
            }
        }

        @Override
        public Object invoke() {
            Object objInvoke = super.invoke();
            if (objInvoke == null) {
                a(2);
            }
            return objInvoke;
        }
    }

    public static abstract class k extends i implements x17 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(LockBasedStorageManager lockBasedStorageManager, c74 c74Var) {
            super(lockBasedStorageManager, c74Var);
            if (lockBasedStorageManager == null) {
                a(0);
            }
            if (c74Var == null) {
                a(1);
            }
        }

        private static void a(int i) {
            String str = i != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 2 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "computable";
            } else if (i != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            }
            if (i != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            } else {
                objArr[1] = "invoke";
            }
            if (i != 2) {
                objArr[2] = MethodDecl.initName;
            }
            String str2 = String.format(str, objArr);
            if (i == 2) {
                throw new IllegalStateException(str2);
            }
        }

        @Override
        public Object invoke() {
            Object objInvoke = super.invoke();
            if (objInvoke == null) {
                a(2);
            }
            return objInvoke;
        }
    }

    public static class l implements gn6 {
        public final LockBasedStorageManager b;
        public final ConcurrentMap c;
        public final e74 d;

        public l(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap concurrentMap, e74 e74Var) {
            if (lockBasedStorageManager == null) {
                b(0);
            }
            if (concurrentMap == null) {
                b(1);
            }
            if (e74Var == null) {
                b(2);
            }
            this.b = lockBasedStorageManager;
            this.c = concurrentMap;
            this.d = e74Var;
        }

        private static void b(int i) {
            String str = (i == 3 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 3 || i == 4) ? 2 : 3];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i == 2) {
                objArr[0] = "compute";
            } else if (i == 3 || i == 4) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
            } else {
                objArr[0] = "storageManager";
            }
            if (i == 3) {
                objArr[1] = "recursionDetected";
            } else if (i != 4) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
            } else {
                objArr[1] = "raceCondition";
            }
            if (i != 3 && i != 4) {
                objArr[2] = MethodDecl.initName;
            }
            String str2 = String.format(str, objArr);
            if (i != 3 && i != 4) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        public final AssertionError c(Object obj, Object obj2) {
            AssertionError assertionError = (AssertionError) LockBasedStorageManager.q(new AssertionError("Race condition detected on input " + obj + ". Old value is " + obj2 + " under " + this.b));
            if (assertionError == null) {
                b(4);
            }
            return assertionError;
        }

        @Override
        public boolean e(Object obj) {
            Object obj2 = this.c.get(obj);
            return (obj2 == null || obj2 == NotValue.COMPUTING) ? false : true;
        }

        public n f(Object obj, boolean z) {
            n nVarP = this.b.p("", obj);
            if (nVarP == null) {
                b(3);
            }
            return nVarP;
        }

        /* JADX WARN: Code duplicated, block: B:18:0x003e A[Catch: all -> 0x003b, PHI: r0
          0x003e: PHI (r0v6 java.lang.Object) = (r0v5 java.lang.Object), (r0v13 java.lang.Object) binds: [B:10:0x0020, B:12:0x002d] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #0 {all -> 0x003b, blocks: (B:9:0x0018, B:11:0x0022, B:13:0x002f, B:18:0x003e, B:20:0x0042, B:22:0x004d, B:24:0x0054, B:34:0x007f, B:37:0x0087, B:39:0x0095, B:40:0x0099, B:41:0x009a, B:42:0x00a4, B:43:0x00a5, B:44:0x00af, B:45:0x00b0, B:46:0x00b7, B:27:0x005a, B:31:0x0079, B:32:0x007d), top: B:49:0x0018, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:20:0x0042 A[Catch: all -> 0x003b, TryCatch #0 {all -> 0x003b, blocks: (B:9:0x0018, B:11:0x0022, B:13:0x002f, B:18:0x003e, B:20:0x0042, B:22:0x004d, B:24:0x0054, B:34:0x007f, B:37:0x0087, B:39:0x0095, B:40:0x0099, B:41:0x009a, B:42:0x00a4, B:43:0x00a5, B:44:0x00af, B:45:0x00b0, B:46:0x00b7, B:27:0x005a, B:31:0x0079, B:32:0x007d), top: B:49:0x0018, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:22:0x004d A[Catch: all -> 0x003b, TryCatch #0 {all -> 0x003b, blocks: (B:9:0x0018, B:11:0x0022, B:13:0x002f, B:18:0x003e, B:20:0x0042, B:22:0x004d, B:24:0x0054, B:34:0x007f, B:37:0x0087, B:39:0x0095, B:40:0x0099, B:41:0x009a, B:42:0x00a4, B:43:0x00a5, B:44:0x00af, B:45:0x00b0, B:46:0x00b7, B:27:0x005a, B:31:0x0079, B:32:0x007d), top: B:49:0x0018, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:23:0x0052 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:24:0x0054 A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #0 {all -> 0x003b, blocks: (B:9:0x0018, B:11:0x0022, B:13:0x002f, B:18:0x003e, B:20:0x0042, B:22:0x004d, B:24:0x0054, B:34:0x007f, B:37:0x0087, B:39:0x0095, B:40:0x0099, B:41:0x009a, B:42:0x00a4, B:43:0x00a5, B:44:0x00af, B:45:0x00b0, B:46:0x00b7, B:27:0x005a, B:31:0x0079, B:32:0x007d), top: B:49:0x0018, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:26:0x0059  */
        /* JADX WARN: Code duplicated, block: B:29:0x0071  */
        /* JADX WARN: Code duplicated, block: B:31:0x0079 A[Catch: all -> 0x007e, TRY_ENTER, TryCatch #1 {all -> 0x007e, blocks: (B:27:0x005a, B:31:0x0079, B:32:0x007d), top: B:50:0x005a, outer: #0 }] */
        @Override
        public Object invoke(Object obj) {
            AssertionError assertionErrorC;
            Object objInvoke;
            Object objPut;
            Object objD;
            n nVarF;
            Object obj2 = this.c.get(obj);
            if (obj2 != null && obj2 != NotValue.COMPUTING) {
                return WrappedValues.d(obj2);
            }
            this.b.a.lock();
            try {
                Object obj3 = this.c.get(obj);
                NotValue notValue = NotValue.COMPUTING;
                if (obj3 == notValue) {
                    obj3 = NotValue.RECURSION_WAS_DETECTED;
                    n nVarF2 = f(obj, true);
                    if (!nVarF2.c()) {
                        objD = nVarF2.b();
                    } else if (obj3 == NotValue.RECURSION_WAS_DETECTED) {
                        nVarF = f(obj, false);
                        if (!nVarF.c()) {
                            objD = nVarF.b();
                        } else {
                            if (obj3 != null) {
                                assertionErrorC = null;
                                try {
                                    this.c.put(obj, notValue);
                                    objInvoke = this.d.invoke(obj);
                                    objPut = this.c.put(obj, WrappedValues.b(objInvoke));
                                    if (objPut == notValue) {
                                        this.b.a.unlock();
                                        return objInvoke;
                                    }
                                    assertionErrorC = c(obj, objPut);
                                    throw assertionErrorC;
                                } catch (Throwable th) {
                                    if (pe3.a(th)) {
                                        this.c.remove(obj);
                                        throw th;
                                    }
                                    if (th == assertionErrorC) {
                                        throw this.b.b.handleException(th);
                                    }
                                    Object objPut2 = this.c.put(obj, WrappedValues.c(th));
                                    if (objPut2 != NotValue.COMPUTING) {
                                        throw c(obj, objPut2);
                                    }
                                    throw this.b.b.handleException(th);
                                }
                            }
                            objD = WrappedValues.d(obj3);
                        }
                    } else {
                        if (obj3 != null) {
                            assertionErrorC = null;
                            this.c.put(obj, notValue);
                            objInvoke = this.d.invoke(obj);
                            objPut = this.c.put(obj, WrappedValues.b(objInvoke));
                            if (objPut == notValue) {
                                this.b.a.unlock();
                                return objInvoke;
                            }
                            assertionErrorC = c(obj, objPut);
                            throw assertionErrorC;
                        }
                        objD = WrappedValues.d(obj3);
                    }
                } else if (obj3 == NotValue.RECURSION_WAS_DETECTED) {
                    nVarF = f(obj, false);
                    if (!nVarF.c()) {
                        objD = nVarF.b();
                    } else {
                        if (obj3 != null) {
                            assertionErrorC = null;
                            this.c.put(obj, notValue);
                            objInvoke = this.d.invoke(obj);
                            objPut = this.c.put(obj, WrappedValues.b(objInvoke));
                            if (objPut == notValue) {
                                this.b.a.unlock();
                                return objInvoke;
                            }
                            assertionErrorC = c(obj, objPut);
                            throw assertionErrorC;
                        }
                        objD = WrappedValues.d(obj3);
                    }
                } else {
                    if (obj3 != null) {
                        assertionErrorC = null;
                        this.c.put(obj, notValue);
                        objInvoke = this.d.invoke(obj);
                        objPut = this.c.put(obj, WrappedValues.b(objInvoke));
                        if (objPut == notValue) {
                            this.b.a.unlock();
                            return objInvoke;
                        }
                        assertionErrorC = c(obj, objPut);
                        throw assertionErrorC;
                    }
                    objD = WrappedValues.d(obj3);
                }
                this.b.a.unlock();
                return objD;
            } catch (Throwable th2) {
                this.b.a.unlock();
                throw th2;
            }
        }
    }

    public static class m extends l implements fn6 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap concurrentMap, e74 e74Var) {
            super(lockBasedStorageManager, concurrentMap, e74Var);
            if (lockBasedStorageManager == null) {
                b(0);
            }
            if (concurrentMap == null) {
                b(1);
            }
            if (e74Var == null) {
                b(2);
            }
        }

        private static void b(int i) {
            String str = i != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 3 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i == 2) {
                objArr[0] = "compute";
            } else if (i != 3) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull";
            }
            if (i != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull";
            } else {
                objArr[1] = "invoke";
            }
            if (i != 3) {
                objArr[2] = MethodDecl.initName;
            }
            String str2 = String.format(str, objArr);
            if (i == 3) {
                throw new IllegalStateException(str2);
            }
        }

        @Override
        public Object invoke(Object obj) {
            Object objInvoke = super.invoke(obj);
            if (objInvoke == null) {
                b(3);
            }
            return objInvoke;
        }
    }

    public static class n {
        public final Object a;
        public final boolean b;

        public n(Object obj, boolean z) {
            this.a = obj;
            this.b = z;
        }

        public static n a() {
            return new n(null, true);
        }

        public static n d(Object obj) {
            return new n(obj, false);
        }

        public Object b() {
            return this.a;
        }

        public boolean c() {
            return this.b;
        }

        public String toString() {
            return c() ? "FALL_THROUGH" : String.valueOf(this.a);
        }
    }

    public LockBasedStorageManager(String str, f fVar, kotlin.reflect.jvm.internal.impl.storage.a aVar, a aVar2) {
        this(str, fVar, aVar);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0065  */
    private static void j(int i2) {
        String str = (i2 == 10 || i2 == 13 || i2 == 20 || i2 == 37) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i2 == 10 || i2 == 13 || i2 == 20 || i2 == 37) ? 2 : 3];
        if (i2 == 1 || i2 == 3 || i2 == 5) {
            objArr[0] = "exceptionHandlingStrategy";
        } else if (i2 != 6) {
            switch (i2) {
                case 8:
                    objArr[0] = "exceptionHandlingStrategy";
                    break;
                case 9:
                case 11:
                case 14:
                case 16:
                case 19:
                case 21:
                    objArr[0] = "compute";
                    break;
                case 10:
                case 13:
                case 20:
                case 37:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager";
                    break;
                case 12:
                case 17:
                case 25:
                case 27:
                    objArr[0] = "onRecursiveCall";
                    break;
                case 15:
                case 18:
                case 22:
                    objArr[0] = "map";
                    break;
                case 23:
                case 24:
                case 26:
                case 28:
                case 30:
                case 31:
                case 32:
                case 34:
                    objArr[0] = "computable";
                    break;
                case 29:
                case 33:
                    objArr[0] = "postCompute";
                    break;
                case 35:
                    objArr[0] = "source";
                    break;
                case 36:
                    objArr[0] = "throwable";
                    break;
                default:
                    objArr[0] = "debugText";
                    break;
            }
        } else {
            objArr[0] = "lock";
        }
        if (i2 == 10 || i2 == 13) {
            objArr[1] = "createMemoizedFunction";
        } else if (i2 == 20) {
            objArr[1] = "createMemoizedFunctionWithNullableValues";
        } else if (i2 != 37) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager";
        } else {
            objArr[1] = "sanitizeStackTrace";
        }
        switch (i2) {
            case 4:
            case 5:
            case 6:
                objArr[2] = MethodDecl.initName;
                break;
            case 7:
            case 8:
                objArr[2] = "replaceExceptionHandling";
                break;
            case 9:
            case 11:
            case 12:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createMemoizedFunction";
                break;
            case 10:
            case 13:
            case 20:
            case 37:
                break;
            case 19:
            case 21:
            case 22:
                objArr[2] = "createMemoizedFunctionWithNullableValues";
                break;
            case 23:
            case 24:
            case 25:
                objArr[2] = "createLazyValue";
                break;
            case 26:
            case 27:
                objArr[2] = "createRecursionTolerantLazyValue";
                break;
            case 28:
            case 29:
                objArr[2] = "createLazyValueWithPostCompute";
                break;
            case 30:
                objArr[2] = "createNullableLazyValue";
                break;
            case 31:
                objArr[2] = "createRecursionTolerantNullableLazyValue";
                break;
            case 32:
            case 33:
                objArr[2] = "createNullableLazyValueWithPostCompute";
                break;
            case 34:
                objArr[2] = "compute";
                break;
            case 35:
                objArr[2] = "recursionDetectedDefault";
                break;
            case 36:
                objArr[2] = "sanitizeStackTrace";
                break;
            default:
                objArr[2] = "createWithExceptionHandling";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 != 10 && i2 != 13 && i2 != 20 && i2 != 37) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static ConcurrentMap m() {
        return new ConcurrentHashMap(3, 1.0f, 2);
    }

    public static Throwable q(Throwable th) {
        if (th == null) {
            j(36);
        }
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        int i2 = 0;
        while (i2 < length) {
            if (!stackTrace[i2].getClassName().startsWith(d)) {
                List listSubList = Arrays.asList(stackTrace).subList(i2, length);
                th.setStackTrace((StackTraceElement[]) listSubList.toArray(new StackTraceElement[listSubList.size()]));
                return th;
            }
            i2++;
        }
        i2 = -1;
        List listSubList2 = Arrays.asList(stackTrace).subList(i2, length);
        th.setStackTrace((StackTraceElement[]) listSubList2.toArray(new StackTraceElement[listSubList2.size()]));
        return th;
    }

    @Override
    public gn6 a(e74 e74Var) {
        if (e74Var == null) {
            j(19);
        }
        gn6 gn6VarO = o(e74Var, m());
        if (gn6VarO == null) {
            j(20);
        }
        return gn6VarO;
    }

    @Override
    public o37 b(c74 c74Var) {
        if (c74Var == null) {
            j(30);
        }
        return new h(this, c74Var);
    }

    @Override
    public x17 c(c74 c74Var) {
        if (c74Var == null) {
            j(23);
        }
        return new j(this, c74Var);
    }

    @Override
    public x17 d(c74 c74Var, e74 e74Var, e74 e74Var2) {
        if (c74Var == null) {
            j(28);
        }
        if (e74Var2 == null) {
            j(29);
        }
        return new c(this, c74Var, e74Var, e74Var2);
    }

    @Override
    public aq0 e() {
        return new d(this, m(), null);
    }

    @Override
    public bq0 f() {
        return new e(this, m(), null);
    }

    @Override
    public Object g(c74 c74Var) {
        if (c74Var == null) {
            j(34);
        }
        this.a.lock();
        try {
            Object objInvoke = c74Var.invoke();
            this.a.unlock();
            return objInvoke;
        } catch (Throwable th) {
            try {
                throw this.b.handleException(th);
            } catch (Throwable th2) {
                this.a.unlock();
                throw th2;
            }
        }
    }

    @Override
    public x17 h(c74 c74Var, Object obj) {
        if (c74Var == null) {
            j(26);
        }
        if (obj == null) {
            j(27);
        }
        return new b(this, c74Var, obj);
    }

    @Override
    public fn6 i(e74 e74Var) {
        if (e74Var == null) {
            j(9);
        }
        fn6 fn6VarN = n(e74Var, m());
        if (fn6VarN == null) {
            j(10);
        }
        return fn6VarN;
    }

    public fn6 n(e74 e74Var, ConcurrentMap concurrentMap) {
        if (e74Var == null) {
            j(14);
        }
        if (concurrentMap == null) {
            j(15);
        }
        return new m(this, concurrentMap, e74Var);
    }

    public gn6 o(e74 e74Var, ConcurrentMap concurrentMap) {
        if (e74Var == null) {
            j(21);
        }
        if (concurrentMap == null) {
            j(22);
        }
        return new l(this, concurrentMap, e74Var);
    }

    public n p(String str, Object obj) {
        String str2;
        if (str == null) {
            j(35);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Recursion detected ");
        sb.append(str);
        if (obj == null) {
            str2 = "";
        } else {
            str2 = "on input: " + obj;
        }
        sb.append(str2);
        sb.append(" under ");
        sb.append(this);
        throw ((AssertionError) q(new AssertionError(sb.toString())));
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + " (" + this.c + ")";
    }

    public LockBasedStorageManager(String str, f fVar, kotlin.reflect.jvm.internal.impl.storage.a aVar) {
        if (str == null) {
            j(4);
        }
        if (fVar == null) {
            j(5);
        }
        if (aVar == null) {
            j(6);
        }
        this.a = aVar;
        this.b = fVar;
        this.c = str;
    }

    public LockBasedStorageManager(String str) {
        this(str, (Runnable) null, (e74) null);
    }

    public LockBasedStorageManager(String str, Runnable runnable, e74 e74Var) {
        this(str, f.a, kotlin.reflect.jvm.internal.impl.storage.a.a.a(runnable, e74Var));
    }
}
