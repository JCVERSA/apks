package androidx.window.reflection;

import android.util.Log;
import androidx.media3.exoplayer.offline.DownloadService;
import defpackage.c74;
import defpackage.de5;
import defpackage.ed5;
import defpackage.y45;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\u000b\u001a\u00020\u00072\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0001¢\u0006\u0004\b\t\u0010\nJ!\u0010\u0010\u001a\u00020\u00072\u0010\u0010\r\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\f0\u0006H\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0016\u001a\u00020\u0007*\u00020\u00112\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u0012H\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0016\u001a\u00020\u0007*\u00020\u00112\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\fH\u0000¢\u0006\u0004\b\u0014\u0010\u0017J'\u0010\u001c\u001a\u00020\u00072\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\f2\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\fH\u0000¢\u0006\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u00020\u0007*\u00020\u00118@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Landroidx/window/reflection/ReflectionUtils;", "", MethodDecl.initName, "()V", "", "errorMessage", "Lkotlin/Function0;", "", "block", "validateReflection$window_release", "(Ljava/lang/String;Lc74;)Z", "validateReflection", "Ljava/lang/Class;", "classLoader", "checkIsPresent$window_release", "(Lc74;)Z", "checkIsPresent", "Ljava/lang/reflect/Method;", "Lde5;", "clazz", "doesReturn$window_release", "(Ljava/lang/reflect/Method;Lde5;)Z", "doesReturn", "(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z", "implementation", DownloadService.KEY_REQUIREMENTS, "validateImplementation$window_release", "(Ljava/lang/Class;Ljava/lang/Class;)Z", "validateImplementation", "isPublic$window_release", "(Ljava/lang/reflect/Method;)Z", "isPublic", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ReflectionUtils {
    public static final ReflectionUtils INSTANCE = new ReflectionUtils();

    private ReflectionUtils() {
    }

    public static final boolean validateReflection$window_release(String errorMessage, c74 block) {
        y45.j(block, "block");
        try {
            boolean zBooleanValue = ((Boolean) block.invoke()).booleanValue();
            if (!zBooleanValue && errorMessage != null) {
                Log.e("ReflectionGuard", errorMessage);
            }
            return zBooleanValue;
        } catch (ClassNotFoundException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("ClassNotFound: ");
            if (errorMessage == null) {
                errorMessage = "";
            }
            sb.append(errorMessage);
            Log.e("ReflectionGuard", sb.toString());
            return false;
        } catch (NoSuchMethodException unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("NoSuchMethod: ");
            if (errorMessage == null) {
                errorMessage = "";
            }
            sb2.append(errorMessage);
            Log.e("ReflectionGuard", sb2.toString());
            return false;
        }
    }

    public static boolean validateReflection$window_release$default(String str, c74 c74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return validateReflection$window_release(str, c74Var);
    }

    public final boolean checkIsPresent$window_release(c74 classLoader) {
        y45.j(classLoader, "classLoader");
        try {
            classLoader.invoke();
            return true;
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
            return false;
        }
    }

    public final boolean doesReturn$window_release(Method method, de5 de5Var) {
        y45.j(method, "<this>");
        y45.j(de5Var, "clazz");
        return doesReturn$window_release(method, ed5.b(de5Var));
    }

    public final boolean isPublic$window_release(Method method) {
        y45.j(method, "<this>");
        return Modifier.isPublic(method.getModifiers());
    }

    public final boolean validateImplementation$window_release(final Class<?> implementation, Class<?> requirements) {
        y45.j(implementation, "implementation");
        y45.j(requirements, DownloadService.KEY_REQUIREMENTS);
        Method[] methods = requirements.getMethods();
        y45.i(methods, "requirements.methods");
        for (final Method method : methods) {
            if (!validateReflection$window_release(implementation.getName() + '#' + method.getName() + " is not valid", new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0039  */
                @Override
                public final Boolean invoke() throws NoSuchMethodException {
                    boolean z;
                    Class<?> cls = implementation;
                    String name = method.getName();
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    Method method2 = cls.getMethod(name, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length));
                    ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
                    y45.i(method2, "implementedMethod");
                    if (reflectionUtils.isPublic$window_release(method2)) {
                        Class<?> returnType = method.getReturnType();
                        y45.i(returnType, "it.returnType");
                        if (reflectionUtils.doesReturn$window_release(method2, returnType)) {
                            z = true;
                        } else {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                    return Boolean.valueOf(z);
                }
            })) {
                return false;
            }
        }
        return true;
    }

    public final boolean doesReturn$window_release(Method method, Class<?> cls) {
        y45.j(method, "<this>");
        y45.j(cls, "clazz");
        return method.getReturnType().equals(cls);
    }
}
