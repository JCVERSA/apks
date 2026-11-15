package retrofit2;

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

public final class k0 {

    private final ConcurrentHashMap f71104a = new ConcurrentHashMap();

    final Call.Factory f71105b;

    final HttpUrl f71106c;

    final List f71107d;

    final int f71108e;

    final List f71109f;

    final int f71110g;

    final Executor f71111h;

    final boolean f71112i;

    class a implements InvocationHandler {

        private final Object[] f71113a = new Object[0];

        final Class f71114b;

        a(Class cls) {
            this.f71114b = cls;
        }

        @Override
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method.getDeclaringClass() == Object.class) {
                return method.invoke(this, objArr);
            }
            if (objArr == null) {
                objArr = this.f71113a;
            }
            d0 d0Var = b0.f71039b;
            return d0Var.c(method) ? d0Var.b(method, this.f71114b, obj, objArr) : k0.this.c(this.f71114b, method).a(obj, objArr);
        }
    }

    public static final class b {

        private Call.Factory f71116a;

        private HttpUrl f71117b;

        private final List f71118c = new ArrayList();

        private final List f71119d = new ArrayList();

        private Executor f71120e;

        private boolean f71121f;

        public b a(e.a aVar) {
            List list = this.f71119d;
            Objects.requireNonNull(aVar, "factory == null");
            list.add(aVar);
            return this;
        }

        public b b(k.a aVar) {
            List list = this.f71118c;
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
                this.f71117b = httpUrl;
                return this;
            }
            throw new IllegalArgumentException("baseUrl must end in /: " + httpUrl);
        }

        public k0 e() {
            if (this.f71117b == null) {
                throw new IllegalStateException("Base URL required.");
            }
            Call.Factory okHttpClient = this.f71116a;
            if (okHttpClient == null) {
                okHttpClient = new OkHttpClient();
            }
            Call.Factory factory = okHttpClient;
            Executor executor = this.f71120e;
            if (executor == null) {
                executor = b0.f71038a;
            }
            Executor executor2 = executor;
            c cVar = b0.f71040c;
            ArrayList arrayList = new ArrayList(this.f71119d);
            List listA = cVar.a(executor2);
            arrayList.addAll(listA);
            List listB = cVar.b();
            int size = listB.size();
            ArrayList arrayList2 = new ArrayList(this.f71118c.size() + 1 + size);
            arrayList2.add(new retrofit2.b());
            arrayList2.addAll(this.f71118c);
            arrayList2.addAll(listB);
            return new k0(factory, this.f71117b, Collections.unmodifiableList(arrayList2), size, Collections.unmodifiableList(arrayList), listA.size(), executor2, this.f71121f);
        }

        public b f(Call.Factory factory) {
            Objects.requireNonNull(factory, "factory == null");
            this.f71116a = factory;
            return this;
        }

        public b g(OkHttpClient okHttpClient) {
            Objects.requireNonNull(okHttpClient, "client == null");
            return f(okHttpClient);
        }
    }

    k0(Call.Factory factory, HttpUrl httpUrl, List list, int i10, List list2, int i11, Executor executor, boolean z10) {
        this.f71105b = factory;
        this.f71106c = httpUrl;
        this.f71107d = list;
        this.f71108e = i10;
        this.f71109f = list2;
        this.f71110g = i11;
        this.f71111h = executor;
        this.f71112i = z10;
    }

    private void j(Class cls) {
        if (!cls.isInterface()) {
            throw new IllegalArgumentException("API declarations must be interfaces.");
        }
        ArrayDeque arrayDeque = new ArrayDeque(1);
        arrayDeque.add(cls);
        while (!arrayDeque.isEmpty()) {
            Class cls2 = (Class) arrayDeque.removeFirst();
            if (cls2.getTypeParameters().length != 0) {
                StringBuilder sb2 = new StringBuilder("Type parameters are unsupported on ");
                sb2.append(cls2.getName());
                if (cls2 != cls) {
                    sb2.append(" which is an interface of ");
                    sb2.append(cls.getName());
                }
                throw new IllegalArgumentException(sb2.toString());
            }
            Collections.addAll(arrayDeque, cls2.getInterfaces());
        }
        if (this.f71112i) {
            d0 d0Var = b0.f71039b;
            for (Method method : cls.getDeclaredMethods()) {
                if (!d0Var.c(method) && !Modifier.isStatic(method.getModifiers()) && !method.isSynthetic()) {
                    c(cls, method);
                }
            }
        }
    }

    public e a(Type type, Annotation[] annotationArr) {
        return d(null, type, annotationArr);
    }

    public Object b(Class cls) {
        j(cls);
        return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(cls));
    }

    l0 c(Class cls, Method method) {
        l0 l0Var;
        Object objPutIfAbsent = this.f71104a.get(method);
        if (objPutIfAbsent instanceof l0) {
            return (l0) objPutIfAbsent;
        }
        if (objPutIfAbsent == null) {
            Object obj = new Object();
            synchronized (obj) {
                try {
                    objPutIfAbsent = this.f71104a.putIfAbsent(method, obj);
                    if (objPutIfAbsent == null) {
                        l0 l0VarB = l0.b(this, cls, method);
                        this.f71104a.put(method, l0VarB);
                        return l0VarB;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        synchronized (objPutIfAbsent) {
            l0Var = (l0) this.f71104a.get(method);
        }
        return l0Var;
    }

    public e d(e.a aVar, Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "returnType == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int iIndexOf = this.f71109f.indexOf(aVar) + 1;
        int size = this.f71109f.size();
        for (int i10 = iIndexOf; i10 < size; i10++) {
            e eVarA = ((e.a) this.f71109f.get(i10)).a(type, annotationArr, this);
            if (eVarA != null) {
                return eVarA;
            }
        }
        StringBuilder sb2 = new StringBuilder("Could not locate call adapter for ");
        sb2.append(type);
        sb2.append(".\n");
        if (aVar != null) {
            sb2.append("  Skipped:");
            for (int i11 = 0; i11 < iIndexOf; i11++) {
                sb2.append("\n   * ");
                sb2.append(((e.a) this.f71109f.get(i11)).getClass().getName());
            }
            sb2.append('\n');
        }
        sb2.append("  Tried:");
        int size2 = this.f71109f.size();
        while (iIndexOf < size2) {
            sb2.append("\n   * ");
            sb2.append(((e.a) this.f71109f.get(iIndexOf)).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb2.toString());
    }

    public k e(k.a aVar, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "parameterAnnotations == null");
        Objects.requireNonNull(annotationArr2, "methodAnnotations == null");
        int iIndexOf = this.f71107d.indexOf(aVar) + 1;
        int size = this.f71107d.size();
        for (int i10 = iIndexOf; i10 < size; i10++) {
            k kVarC = ((k.a) this.f71107d.get(i10)).c(type, annotationArr, annotationArr2, this);
            if (kVarC != null) {
                return kVarC;
            }
        }
        StringBuilder sb2 = new StringBuilder("Could not locate RequestBody converter for ");
        sb2.append(type);
        sb2.append(".\n");
        if (aVar != null) {
            sb2.append("  Skipped:");
            for (int i11 = 0; i11 < iIndexOf; i11++) {
                sb2.append("\n   * ");
                sb2.append(((k.a) this.f71107d.get(i11)).getClass().getName());
            }
            sb2.append('\n');
        }
        sb2.append("  Tried:");
        int size2 = this.f71107d.size();
        while (iIndexOf < size2) {
            sb2.append("\n   * ");
            sb2.append(((k.a) this.f71107d.get(iIndexOf)).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb2.toString());
    }

    public k f(k.a aVar, Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int iIndexOf = this.f71107d.indexOf(aVar) + 1;
        int size = this.f71107d.size();
        for (int i10 = iIndexOf; i10 < size; i10++) {
            k kVarD = ((k.a) this.f71107d.get(i10)).d(type, annotationArr, this);
            if (kVarD != null) {
                return kVarD;
            }
        }
        StringBuilder sb2 = new StringBuilder("Could not locate ResponseBody converter for ");
        sb2.append(type);
        sb2.append(".\n");
        if (aVar != null) {
            sb2.append("  Skipped:");
            for (int i11 = 0; i11 < iIndexOf; i11++) {
                sb2.append("\n   * ");
                sb2.append(((k.a) this.f71107d.get(i11)).getClass().getName());
            }
            sb2.append('\n');
        }
        sb2.append("  Tried:");
        int size2 = this.f71107d.size();
        while (iIndexOf < size2) {
            sb2.append("\n   * ");
            sb2.append(((k.a) this.f71107d.get(iIndexOf)).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb2.toString());
    }

    public k g(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return e(null, type, annotationArr, annotationArr2);
    }

    public k h(Type type, Annotation[] annotationArr) {
        return f(null, type, annotationArr);
    }

    public k i(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int size = this.f71107d.size();
        for (int i10 = 0; i10 < size; i10++) {
            k kVarE = ((k.a) this.f71107d.get(i10)).e(type, annotationArr, this);
            if (kVarE != null) {
                return kVarE;
            }
        }
        return retrofit2.b.d.f71035a;
    }
}
