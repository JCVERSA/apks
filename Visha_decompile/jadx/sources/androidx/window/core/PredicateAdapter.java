package androidx.window.core;

import android.annotation.SuppressLint;
import android.util.Pair;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import defpackage.de5;
import defpackage.e74;
import defpackage.ge5;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u0001:\u0003\u001a\u001b\u001cB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0006H\u0000¢\u0006\u0004\b\t\u0010\bJ9\u0010\u0011\u001a\u00020\u0001\"\b\b\u0000\u0010\u000b*\u00020\u00012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0004\b\u0011\u0010\u0012JW\u0010\u0017\u001a\u00020\u0001\"\b\b\u0000\u0010\u000b*\u00020\u0001\"\b\b\u0001\u0010\u0013*\u00020\u00012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\f2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00010\f2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u000f0\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0019¨\u0006\u001d"}, d2 = {"Landroidx/window/core/PredicateAdapter;", "", "Ljava/lang/ClassLoader;", "loader", MethodDecl.initName, "(Ljava/lang/ClassLoader;)V", "Ljava/lang/Class;", "predicateClassOrThrow", "()Ljava/lang/Class;", "predicateClassOrNull$window_release", "predicateClassOrNull", "T", "Lde5;", "clazz", "Lkotlin/Function1;", "", "predicate", "buildPredicate", "(Lde5;Le74;)Ljava/lang/Object;", "U", "firstClazz", "secondClazz", "Lkotlin/Function2;", "buildPairPredicate", "(Lde5;Lde5;Ls74;)Ljava/lang/Object;", "Ljava/lang/ClassLoader;", "BaseHandler", "PairPredicateStubHandler", "PredicateStubHandler", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"BanUncheckedReflection"})
public final class PredicateAdapter {
    private final ClassLoader loader;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\b\"\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0006\u0010\u0007J2\u0010\r\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\t2\u0010\u0010\f\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\u000bH\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00028\u0000H&¢\u0006\u0004\b\u0011\u0010\u0012J%\u0010\u0014\u001a\u00020\u0010*\u00020\t2\u0010\u0010\u0013\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\u000bH\u0004¢\u0006\u0004\b\u0014\u0010\u0015J%\u0010\u0016\u001a\u00020\u0010*\u00020\t2\u0010\u0010\u0013\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\u000bH\u0004¢\u0006\u0004\b\u0016\u0010\u0015J%\u0010\u0017\u001a\u00020\u0010*\u00020\t2\u0010\u0010\u0013\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\u000bH\u0004¢\u0006\u0004\b\u0017\u0010\u0015J%\u0010\u0018\u001a\u00020\u0010*\u00020\t2\u0010\u0010\u0013\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\u000bH\u0004¢\u0006\u0004\b\u0018\u0010\u0015R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0019¨\u0006\u001a"}, d2 = {"Landroidx/window/core/PredicateAdapter$BaseHandler;", "", "T", "Ljava/lang/reflect/InvocationHandler;", "Lde5;", "clazz", MethodDecl.initName, "(Lde5;)V", "obj", "Ljava/lang/reflect/Method;", "method", "", "parameters", "invoke", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, "", "invokeTest", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "args", "isEquals", "(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z", "isHashCode", "isTest", "isToString", "Lde5;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static abstract class BaseHandler<T> implements InvocationHandler {
        private final de5 clazz;

        public BaseHandler(de5 de5Var) {
            y45.j(de5Var, "clazz");
            this.clazz = de5Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object invoke(Object obj, Method method, Object[] parameters) {
            y45.j(obj, "obj");
            y45.j(method, "method");
            if (isTest(method, parameters)) {
                return Boolean.valueOf(invokeTest(obj, ge5.a(this.clazz, parameters != null ? parameters[0] : null)));
            }
            if (isEquals(method, parameters)) {
                Object obj2 = parameters != null ? parameters[0] : null;
                y45.g(obj2);
                return Boolean.valueOf(obj == obj2);
            }
            if (isHashCode(method, parameters)) {
                return Integer.valueOf(hashCode());
            }
            if (isToString(method, parameters)) {
                return toString();
            }
            throw new UnsupportedOperationException("Unexpected method call object:" + obj + ", method: " + method + ", args: " + parameters);
        }

        public abstract boolean invokeTest(Object obj, T parameter);

        public final boolean isEquals(Method method, Object[] objArr) {
            y45.j(method, "<this>");
            return y45.e(method.getName(), "equals") && method.getReturnType().equals(Boolean.TYPE) && objArr != null && objArr.length == 1;
        }

        public final boolean isHashCode(Method method, Object[] objArr) {
            y45.j(method, "<this>");
            return y45.e(method.getName(), "hashCode") && method.getReturnType().equals(Integer.TYPE) && objArr == null;
        }

        public final boolean isTest(Method method, Object[] objArr) {
            y45.j(method, "<this>");
            return y45.e(method.getName(), "test") && method.getReturnType().equals(Boolean.TYPE) && objArr != null && objArr.length == 1;
        }

        public final boolean isToString(Method method, Object[] objArr) {
            y45.j(method, "<this>");
            return y45.e(method.getName(), "toString") && method.getReturnType().equals(String.class) && objArr == null;
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u0010\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00050\u0004B=\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\f\u0010\rJ'\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00012\u000e\u0010\u000f\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0018R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0018R&\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0019¨\u0006\u001a"}, d2 = {"Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;", "", "T", "U", "Landroidx/window/core/PredicateAdapter$BaseHandler;", "Landroid/util/Pair;", "Lde5;", "clazzT", "clazzU", "Lkotlin/Function2;", "", "predicate", MethodDecl.initName, "(Lde5;Lde5;Ls74;)V", "obj", MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, "invokeTest", "(Ljava/lang/Object;Landroid/util/Pair;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Lde5;", "Ls74;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class PairPredicateStubHandler<T, U> extends BaseHandler<Pair<?, ?>> {
        private final de5 clazzT;
        private final de5 clazzU;
        private final s74 predicate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PairPredicateStubHandler(de5 de5Var, de5 de5Var2, s74 s74Var) {
            super(xq8.b(Pair.class));
            y45.j(de5Var, "clazzT");
            y45.j(de5Var2, "clazzU");
            y45.j(s74Var, "predicate");
            this.clazzT = de5Var;
            this.clazzU = de5Var2;
            this.predicate = s74Var;
        }

        public int hashCode() {
            return this.predicate.hashCode();
        }

        public String toString() {
            return this.predicate.toString();
        }

        @Override
        public boolean invokeTest(Object obj, Pair<?, ?> parameter) {
            y45.j(obj, "obj");
            y45.j(parameter, MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD);
            return ((Boolean) this.predicate.invoke(ge5.a(this.clazzT, parameter.first), ge5.a(this.clazzU, parameter.second))).booleanValue();
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B)\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\r\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R \u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0015¨\u0006\u0016"}, d2 = {"Landroidx/window/core/PredicateAdapter$PredicateStubHandler;", "", "T", "Landroidx/window/core/PredicateAdapter$BaseHandler;", "Lde5;", "clazzT", "Lkotlin/Function1;", "", "predicate", MethodDecl.initName, "(Lde5;Le74;)V", "obj", MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, "invokeTest", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Le74;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class PredicateStubHandler<T> extends BaseHandler<T> {
        private final e74 predicate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PredicateStubHandler(de5 de5Var, e74 e74Var) {
            super(de5Var);
            y45.j(de5Var, "clazzT");
            y45.j(e74Var, "predicate");
            this.predicate = e74Var;
        }

        public int hashCode() {
            return this.predicate.hashCode();
        }

        @Override
        public boolean invokeTest(Object obj, T parameter) {
            y45.j(obj, "obj");
            y45.j(parameter, MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD);
            return ((Boolean) this.predicate.invoke(parameter)).booleanValue();
        }

        public String toString() {
            return this.predicate.toString();
        }
    }

    public PredicateAdapter(ClassLoader classLoader) {
        y45.j(classLoader, "loader");
        this.loader = classLoader;
    }

    private final Class<?> predicateClassOrThrow() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass("java.util.function.Predicate");
        y45.i(clsLoadClass, "loader.loadClass(\"java.util.function.Predicate\")");
        return clsLoadClass;
    }

    public final <T, U> Object buildPairPredicate(de5 firstClazz, de5 secondClazz, s74 predicate) {
        y45.j(firstClazz, "firstClazz");
        y45.j(secondClazz, "secondClazz");
        y45.j(predicate, "predicate");
        Object objNewProxyInstance = Proxy.newProxyInstance(this.loader, new Class[]{predicateClassOrThrow()}, new PairPredicateStubHandler(firstClazz, secondClazz, predicate));
        y45.i(objNewProxyInstance, "newProxyInstance(loader,…row()), predicateHandler)");
        return objNewProxyInstance;
    }

    public final <T> Object buildPredicate(de5 clazz, e74 predicate) {
        y45.j(clazz, "clazz");
        y45.j(predicate, "predicate");
        Object objNewProxyInstance = Proxy.newProxyInstance(this.loader, new Class[]{predicateClassOrThrow()}, new PredicateStubHandler(clazz, predicate));
        y45.i(objNewProxyInstance, "newProxyInstance(loader,…row()), predicateHandler)");
        return objNewProxyInstance;
    }

    public final Class<?> predicateClassOrNull$window_release() {
        try {
            return predicateClassOrThrow();
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
