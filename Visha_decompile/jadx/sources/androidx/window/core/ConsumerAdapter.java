package androidx.window.core;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import androidx.annotation.CheckResult;
import androidx.window.reflection.WindowExtensionsConstants;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import defpackage.de5;
import defpackage.e74;
import defpackage.ge5;
import defpackage.y45;
import defpackage.zfb;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0001\u0018\u00002\u00020\u0001:\u0002'(B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ;\u0010\u000f\u001a\u00020\u0001\"\b\b\u0000\u0010\t*\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0006H\u0000¢\u0006\u0004\b\u0011\u0010\bJI\u0010\u0016\u001a\u00020\r\"\b\b\u0000\u0010\t*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0015\u001a\u00020\u00142\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u0016\u0010\u0017J[\u0010\u001d\u001a\u00020\u001c\"\b\b\u0000\u0010\t*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001a2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\fH\u0007¢\u0006\u0004\b\u001d\u0010\u001eJS\u0010\u001f\u001a\u00020\u001c\"\b\b\u0000\u0010\t*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00142\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\fH\u0007¢\u0006\u0004\b\u001f\u0010 J[\u0010\u001d\u001a\u00020\u001c\"\b\b\u0000\u0010\t*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020!2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\fH\u0007¢\u0006\u0004\b\u001d\u0010#JQ\u0010$\u001a\u00020\r\"\b\b\u0000\u0010\t*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001a2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b$\u0010%R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010&¨\u0006)"}, d2 = {"Landroidx/window/core/ConsumerAdapter;", "", "Ljava/lang/ClassLoader;", "loader", MethodDecl.initName, "(Ljava/lang/ClassLoader;)V", "Ljava/lang/Class;", "unsafeConsumerClass", "()Ljava/lang/Class;", "T", "Lde5;", "clazz", "Lkotlin/Function1;", "Lzfb;", "consumer", "buildConsumer", "(Lde5;Le74;)Ljava/lang/Object;", "consumerClassOrNull$window_release", "consumerClassOrNull", "obj", "", "methodName", "addConsumer", "(Ljava/lang/Object;Lde5;Ljava/lang/String;Le74;)V", "addMethodName", "removeMethodName", "Landroid/app/Activity;", "activity", "Landroidx/window/core/ConsumerAdapter$Subscription;", "createSubscription", "(Ljava/lang/Object;Lde5;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Le74;)Landroidx/window/core/ConsumerAdapter$Subscription;", "createSubscriptionNoActivity", "(Ljava/lang/Object;Lde5;Ljava/lang/String;Ljava/lang/String;Le74;)Landroidx/window/core/ConsumerAdapter$Subscription;", "Landroid/content/Context;", "context", "(Ljava/lang/Object;Lde5;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Le74;)Landroidx/window/core/ConsumerAdapter$Subscription;", "createConsumer", "(Ljava/lang/Object;Lde5;Ljava/lang/String;Landroid/app/Activity;Le74;)V", "Ljava/lang/ClassLoader;", "ConsumerHandler", "Subscription", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"BanUncheckedReflection"})
public final class ConsumerAdapter {
    private final ClassLoader loader;

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B)\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nJ%\u0010\u000f\u001a\u00020\u000e*\u00020\u000b2\u0010\u0010\r\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J%\u0010\u0011\u001a\u00020\u000e*\u00020\u000b2\u0010\u0010\r\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0011\u0010\u0010J%\u0010\u0012\u001a\u00020\u000e*\u00020\u000b2\u0010\u0010\r\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0012\u0010\u0010J%\u0010\u0013\u001a\u00020\u000e*\u00020\u000b2\u0010\u0010\r\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0013\u0010\u0010J2\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u000b2\u0010\u0010\u0016\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\fH\u0096\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00028\u0000¢\u0006\u0004\b\u001a\u0010\u001bR\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u001cR \u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001d¨\u0006\u001e"}, d2 = {"Landroidx/window/core/ConsumerAdapter$ConsumerHandler;", "", "T", "Ljava/lang/reflect/InvocationHandler;", "Lde5;", "clazz", "Lkotlin/Function1;", "Lzfb;", "consumer", MethodDecl.initName, "(Lde5;Le74;)V", "Ljava/lang/reflect/Method;", "", "args", "", "isEquals", "(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z", "isHashCode", "isAccept", "isToString", "obj", "method", "parameters", "invoke", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, "invokeAccept", "(Ljava/lang/Object;)V", "Lde5;", "Le74;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class ConsumerHandler<T> implements InvocationHandler {
        private final de5 clazz;
        private final e74 consumer;

        public ConsumerHandler(de5 de5Var, e74 e74Var) {
            y45.j(de5Var, "clazz");
            y45.j(e74Var, "consumer");
            this.clazz = de5Var;
            this.consumer = e74Var;
        }

        private final boolean isAccept(Method method, Object[] objArr) {
            return y45.e(method.getName(), "accept") && objArr != null && objArr.length == 1;
        }

        private final boolean isEquals(Method method, Object[] objArr) {
            return y45.e(method.getName(), "equals") && method.getReturnType().equals(Boolean.TYPE) && objArr != null && objArr.length == 1;
        }

        private final boolean isHashCode(Method method, Object[] objArr) {
            return y45.e(method.getName(), "hashCode") && method.getReturnType().equals(Integer.TYPE) && objArr == null;
        }

        private final boolean isToString(Method method, Object[] objArr) {
            return y45.e(method.getName(), "toString") && method.getReturnType().equals(String.class) && objArr == null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object invoke(Object obj, Method method, Object[] parameters) {
            y45.j(obj, "obj");
            y45.j(method, "method");
            if (isAccept(method, parameters)) {
                invokeAccept(ge5.a(this.clazz, parameters != null ? parameters[0] : null));
                return zfb.a;
            }
            if (isEquals(method, parameters)) {
                return Boolean.valueOf(obj == (parameters != null ? parameters[0] : null));
            }
            if (isHashCode(method, parameters)) {
                return Integer.valueOf(this.consumer.hashCode());
            }
            if (isToString(method, parameters)) {
                return this.consumer.toString();
            }
            throw new UnsupportedOperationException("Unexpected method call object:" + obj + ", method: " + method + ", args: " + parameters);
        }

        public final void invokeAccept(T parameter) {
            y45.j(parameter, MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD);
            this.consumer.invoke(parameter);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Landroidx/window/core/ConsumerAdapter$Subscription;", "", "Lzfb;", "dispose", "()V", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public interface Subscription {
        void dispose();
    }

    public ConsumerAdapter(ClassLoader classLoader) {
        y45.j(classLoader, "loader");
        this.loader = classLoader;
    }

    private final <T> Object buildConsumer(de5 clazz, e74 consumer) {
        Object objNewProxyInstance = Proxy.newProxyInstance(this.loader, new Class[]{unsafeConsumerClass()}, new ConsumerHandler(clazz, consumer));
        y45.i(objNewProxyInstance, "newProxyInstance(loader,…onsumerClass()), handler)");
        return objNewProxyInstance;
    }

    private final Class<?> unsafeConsumerClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.JAVA_CONSUMER);
        y45.i(clsLoadClass, "loader.loadClass(\"java.util.function.Consumer\")");
        return clsLoadClass;
    }

    public final <T> void addConsumer(Object obj, de5 clazz, String methodName, e74 consumer) throws IllegalAccessException, InvocationTargetException {
        y45.j(obj, "obj");
        y45.j(clazz, "clazz");
        y45.j(methodName, "methodName");
        y45.j(consumer, "consumer");
        obj.getClass().getMethod(methodName, unsafeConsumerClass()).invoke(obj, buildConsumer(clazz, consumer));
    }

    public final Class<?> consumerClassOrNull$window_release() {
        try {
            return unsafeConsumerClass();
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public final <T> void createConsumer(Object obj, de5 clazz, String addMethodName, Activity activity, e74 consumer) throws IllegalAccessException, InvocationTargetException {
        y45.j(obj, "obj");
        y45.j(clazz, "clazz");
        y45.j(addMethodName, "addMethodName");
        y45.j(activity, "activity");
        y45.j(consumer, "consumer");
        obj.getClass().getMethod(addMethodName, Activity.class, unsafeConsumerClass()).invoke(obj, activity, buildConsumer(clazz, consumer));
    }

    @CheckResult
    public final <T> Subscription createSubscription(final Object obj, de5 clazz, String addMethodName, String removeMethodName, Activity activity, e74 consumer) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        y45.j(obj, "obj");
        y45.j(clazz, "clazz");
        y45.j(addMethodName, "addMethodName");
        y45.j(removeMethodName, "removeMethodName");
        y45.j(activity, "activity");
        y45.j(consumer, "consumer");
        final Object objBuildConsumer = buildConsumer(clazz, consumer);
        obj.getClass().getMethod(addMethodName, Activity.class, unsafeConsumerClass()).invoke(obj, activity, objBuildConsumer);
        final Method method = obj.getClass().getMethod(removeMethodName, unsafeConsumerClass());
        return new Subscription() {
            @Override
            public void dispose() throws IllegalAccessException, InvocationTargetException {
                method.invoke(obj, objBuildConsumer);
            }
        };
    }

    @CheckResult
    public final <T> Subscription createSubscriptionNoActivity(final Object obj, de5 clazz, String addMethodName, String removeMethodName, e74 consumer) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        y45.j(obj, "obj");
        y45.j(clazz, "clazz");
        y45.j(addMethodName, "addMethodName");
        y45.j(removeMethodName, "removeMethodName");
        y45.j(consumer, "consumer");
        final Object objBuildConsumer = buildConsumer(clazz, consumer);
        obj.getClass().getMethod(addMethodName, unsafeConsumerClass()).invoke(obj, objBuildConsumer);
        final Method method = obj.getClass().getMethod(removeMethodName, unsafeConsumerClass());
        return new Subscription() {
            @Override
            public void dispose() throws IllegalAccessException, InvocationTargetException {
                method.invoke(obj, objBuildConsumer);
            }
        };
    }

    @CheckResult
    public final <T> Subscription createSubscription(final Object obj, de5 clazz, String addMethodName, String removeMethodName, Context context, e74 consumer) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        y45.j(obj, "obj");
        y45.j(clazz, "clazz");
        y45.j(addMethodName, "addMethodName");
        y45.j(removeMethodName, "removeMethodName");
        y45.j(context, "context");
        y45.j(consumer, "consumer");
        final Object objBuildConsumer = buildConsumer(clazz, consumer);
        obj.getClass().getMethod(addMethodName, Context.class, unsafeConsumerClass()).invoke(obj, context, objBuildConsumer);
        final Method method = obj.getClass().getMethod(removeMethodName, unsafeConsumerClass());
        return new Subscription() {
            @Override
            public void dispose() throws IllegalAccessException, InvocationTargetException {
                method.invoke(obj, objBuildConsumer);
            }
        };
    }
}
