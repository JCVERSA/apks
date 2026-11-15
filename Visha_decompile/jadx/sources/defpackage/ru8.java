package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;

public final class ru8 {
    public final ConcurrentHashMap a = new ConcurrentHashMap();
    public final Call.Factory b;
    public final HttpUrl c;
    public final List d;
    public final int e;
    public final List f;
    public final int g;
    public final Executor h;
    public final boolean i;

    public class a implements InvocationHandler {
        public final Object[] b = new Object[0];
        public final Class c;

        public a(Class cls) {
            this.c = cls;
        }

        @Override
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method.getDeclaringClass() == Object.class) {
                return method.invoke(this, objArr);
            }
            if (objArr == null) {
                objArr = this.b;
            }
            yq8 yq8Var = u18.b;
            return yq8Var.c(method) ? yq8Var.b(method, this.c, obj, objArr) : ru8.this.c(this.c, method).a(obj, objArr);
        }
    }

    public static final class b {
        public Call.Factory a;
        public HttpUrl b;
        public final List c = new ArrayList();
        public final List d = new ArrayList();
        public Executor e;
        public boolean f;

        public b a(lq0.a aVar) {
            List list = this.d;
            Objects.requireNonNull(aVar, "factory == null");
            list.add(aVar);
            return this;
        }

        public b b(si1.a aVar) {
            List list = this.c;
            Objects.requireNonNull(aVar, "factory == null");
            list.add(aVar);
            return this;
        }

        public b c(String str) {
            Objects.requireNonNull(str, "baseUrl == null");
            return d(HttpUrl.get(str));
        }

        public b d(HttpUrl httpUrl) {
            Objects.requireNonNull(httpUrl, "baseUrl == null");
            List<String> listPathSegments = httpUrl.pathSegments();
            if ("".equals(listPathSegments.get(listPathSegments.size() - 1))) {
                this.b = httpUrl;
                return this;
            }
            throw new IllegalArgumentException("baseUrl must end in /: " + httpUrl);
        }

        public ru8 e() {
            if (this.b == null) {
                throw new IllegalStateException("Base URL required.");
            }
            Call.Factory okHttpClient = this.a;
            if (okHttpClient == null) {
                okHttpClient = new OkHttpClient();
            }
            Call.Factory factory = okHttpClient;
            Executor executor = this.e;
            if (executor == null) {
                executor = u18.a;
            }
            Executor executor2 = executor;
            gl0 gl0Var = u18.c;
            ArrayList arrayList = new ArrayList(this.d);
            List listA = gl0Var.a(executor2);
            arrayList.addAll(listA);
            List listB = gl0Var.b();
            int size = listB.size();
            ArrayList arrayList2 = new ArrayList(this.c.size() + 1 + size);
            arrayList2.add(new fl0());
            arrayList2.addAll(this.c);
            arrayList2.addAll(listB);
            return new ru8(factory, this.b, Collections.unmodifiableList(arrayList2), size, Collections.unmodifiableList(arrayList), listA.size(), executor2, this.f);
        }

        public b f(Call.Factory factory) {
            Objects.requireNonNull(factory, "factory == null");
            this.a = factory;
            return this;
        }

        public b g(OkHttpClient okHttpClient) {
            Objects.requireNonNull(okHttpClient, "client == null");
            return f(okHttpClient);
        }
    }

    public ru8(Call.Factory factory, HttpUrl httpUrl, List list, int i, List list2, int i2, Executor executor, boolean z) {
        this.b = factory;
        this.c = httpUrl;
        this.d = list;
        this.e = i;
        this.f = list2;
        this.g = i2;
        this.h = executor;
        this.i = z;
    }

    public lq0 a(Type type, Annotation[] annotationArr) {
        return d(null, type, annotationArr);
    }

    public Object b(Class cls) {
        j(cls);
        return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(cls));
    }

    public fe9 c(Class cls, Method method) {
        while (true) {
            Object objPutIfAbsent = this.a.get(method);
            if (objPutIfAbsent instanceof fe9) {
                return (fe9) objPutIfAbsent;
            }
            if (objPutIfAbsent == null) {
                Object obj = new Object();
                synchronized (obj) {
                    try {
                        objPutIfAbsent = this.a.putIfAbsent(method, obj);
                        if (objPutIfAbsent == null) {
                            try {
                                fe9 fe9VarB = fe9.b(this, cls, method);
                                this.a.put(method, fe9VarB);
                                return fe9VarB;
                            } catch (Throwable th) {
                                this.a.remove(method);
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            synchronized (objPutIfAbsent) {
                try {
                    Object obj2 = this.a.get(method);
                    if (obj2 != null) {
                        return (fe9) obj2;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    public lq0 d(lq0.a aVar, Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "returnType == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int iIndexOf = this.f.indexOf(aVar) + 1;
        int size = this.f.size();
        for (int i = iIndexOf; i < size; i++) {
            lq0 lq0Var = ((lq0.a) this.f.get(i)).get(type, annotationArr, this);
            if (lq0Var != null) {
                return lq0Var;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < iIndexOf; i2++) {
                sb.append("\n   * ");
                sb.append(((lq0.a) this.f.get(i2)).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(((lq0.a) this.f.get(iIndexOf)).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public si1 e(si1.a aVar, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "parameterAnnotations == null");
        Objects.requireNonNull(annotationArr2, "methodAnnotations == null");
        int iIndexOf = this.d.indexOf(aVar) + 1;
        int size = this.d.size();
        for (int i = iIndexOf; i < size; i++) {
            si1 si1VarRequestBodyConverter = ((si1.a) this.d.get(i)).requestBodyConverter(type, annotationArr, annotationArr2, this);
            if (si1VarRequestBodyConverter != null) {
                return si1VarRequestBodyConverter;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < iIndexOf; i2++) {
                sb.append("\n   * ");
                sb.append(((si1.a) this.d.get(i2)).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.d.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(((si1.a) this.d.get(iIndexOf)).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public si1 f(si1.a aVar, Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int iIndexOf = this.d.indexOf(aVar) + 1;
        int size = this.d.size();
        for (int i = iIndexOf; i < size; i++) {
            si1 si1VarResponseBodyConverter = ((si1.a) this.d.get(i)).responseBodyConverter(type, annotationArr, this);
            if (si1VarResponseBodyConverter != null) {
                return si1VarResponseBodyConverter;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < iIndexOf; i2++) {
                sb.append("\n   * ");
                sb.append(((si1.a) this.d.get(i2)).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.d.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(((si1.a) this.d.get(iIndexOf)).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public si1 g(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return e(null, type, annotationArr, annotationArr2);
    }

    public si1 h(Type type, Annotation[] annotationArr) {
        return f(null, type, annotationArr);
    }

    public si1 i(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int size = this.d.size();
        for (int i = 0; i < size; i++) {
            si1 si1VarStringConverter = ((si1.a) this.d.get(i)).stringConverter(type, annotationArr, this);
            if (si1VarStringConverter != null) {
                return si1VarStringConverter;
            }
        }
        return fl0.d.a;
    }

    public final void j(Class cls) {
        if (!cls.isInterface()) {
            throw new IllegalArgumentException("API declarations must be interfaces.");
        }
        ArrayDeque arrayDeque = new ArrayDeque(1);
        arrayDeque.add(cls);
        while (!arrayDeque.isEmpty()) {
            Class cls2 = (Class) arrayDeque.removeFirst();
            if (cls2.getTypeParameters().length != 0) {
                StringBuilder sb = new StringBuilder("Type parameters are unsupported on ");
                sb.append(cls2.getName());
                if (cls2 != cls) {
                    sb.append(" which is an interface of ");
                    sb.append(cls.getName());
                }
                throw new IllegalArgumentException(sb.toString());
            }
            Collections.addAll(arrayDeque, cls2.getInterfaces());
        }
        if (this.i) {
            yq8 yq8Var = u18.b;
            for (Method method : cls.getDeclaredMethods()) {
                if (!yq8Var.c(method) && !Modifier.isStatic(method.getModifiers()) && !method.isSynthetic()) {
                    c(cls, method);
                }
            }
        }
    }
}
