package com.mgtv.task.http;

import androidx.annotation.Nullable;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.internal.C$Gson$Types;
import com.mgtv.json.JsonInterface;
import com.mgtv.json.JsonVoid;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

public abstract class c<T> implements com.mgtv.task.d<HttpResponseObject> {
    private boolean a;
    private HttpTraceObject b;
    private T c;

    public T a(a aVar) throws Exception {
        return null;
    }

    public abstract void a(T t);

    public abstract void b(T t);

    @Override
    public void c() {
    }

    public HttpTraceObject e() {
        return this.b;
    }

    public String f() {
        return "list";
    }

    @Deprecated
    public void a(int i, int i2, @Nullable String str, @Nullable Throwable th) {
    }

    @Override
    public void b(HttpResponseObject httpResponseObject, Object obj, Throwable th) {
        this.b = (HttpTraceObject) obj;
    }

    @Override
    public boolean d() {
        return this.a;
    }

    public boolean a() {
        return false;
    }

    public T b(HttpResponseObject httpResponseObject) throws Exception {
        a aVar = httpResponseObject.channel;
        if (aVar != null) {
            return a(aVar);
        }
        return a(httpResponseObject.data);
    }

    @Override
    public void d(HttpResponseObject httpResponseObject, Object obj, Throwable th) {
        HttpTraceObject httpTraceObject = (HttpTraceObject) obj;
        this.b = httpTraceObject;
        int httpStatus = httpTraceObject.getHttpStatus();
        if (th != null || httpResponseObject == null) {
            return;
        }
        int code = httpResponseObject.getCode();
        if (httpStatus == 200 && (code == 200 || code == 0)) {
            try {
                this.c = b(httpResponseObject);
                return;
            } catch (Exception e) {
                this.b.setException(new HttpFormatException(e));
                return;
            }
        }
        try {
            this.c = b(httpResponseObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.b.setException(new BusinessCodeException());
    }

    @Override
    public void c(HttpResponseObject httpResponseObject) {
        int code;
        T t = this.c;
        if (t != null) {
            b(t);
            return;
        }
        HttpTraceObject httpTraceObject = this.b;
        if (httpTraceObject == null || httpTraceObject.getException() == null) {
            this.b = new HttpTraceObject();
            if (httpResponseObject.data != null) {
                try {
                    T tB = b(httpResponseObject);
                    this.c = tB;
                    if (tB != null && ((code = httpResponseObject.getCode()) == 200 || code == 0)) {
                        return;
                    }
                } catch (Exception unused) {
                }
            }
            this.b.setException(new HttpFormatException());
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public void a(HttpResponseObject httpResponseObject, Object obj, Throwable th) {
        HttpTraceObject httpTraceObject = (HttpTraceObject) obj;
        this.b = httpTraceObject;
        int httpStatus = httpTraceObject.getHttpStatus();
        if (th == null && httpResponseObject != null) {
            int code = httpResponseObject.getCode();
            String msg = httpResponseObject.getMsg();
            if (this.b.getException() != null) {
                a(this.c, httpStatus, code, msg, this.b.getException());
                return;
            }
            if (this.c == null && !a()) {
                HttpFormatException httpFormatException = new HttpFormatException();
                this.b.setException(httpFormatException);
                a(this.c, httpStatus, code, msg, httpFormatException);
                return;
            }
            a(this.c);
            return;
        }
        a(null, httpStatus, 0, null, th);
    }

    @Override
    public boolean c(HttpResponseObject httpResponseObject, Object obj, Throwable th) {
        return (th == null && httpResponseObject != null && httpResponseObject.getCode() == 200) ? false : true;
    }

    public T a(JsonElement jsonElement) throws Exception {
        if (jsonElement == null) {
            return null;
        }
        Type typeA = a(getClass());
        if (typeA == JsonVoid.class) {
            return (T) new JsonVoid() {
            };
        }
        if (typeA == String.class) {
            return (T) jsonElement.toString();
        }
        if (typeA == JsonObject.class) {
            return (T) jsonElement.getAsJsonObject();
        }
        if (typeA instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) typeA;
            Type rawType = parameterizedType.getRawType();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            if ((rawType instanceof Class) && ((Class) rawType).isAssignableFrom(List.class) && actualTypeArguments.length == 1) {
                Type type = actualTypeArguments[0];
                if ((type instanceof Class) && JsonInterface.class.isAssignableFrom((Class) type)) {
                    if (jsonElement.isJsonArray()) {
                        return (T) com.mgtv.json.a.a(jsonElement.getAsJsonArray(), actualTypeArguments[0]);
                    }
                    return (T) com.mgtv.json.a.a(jsonElement.getAsJsonObject().get(f()).getAsJsonArray(), actualTypeArguments[0]);
                }
            }
        }
        return (T) com.mgtv.json.a.a(jsonElement, typeA);
    }

    public static Type a(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        while (genericSuperclass instanceof Class) {
            if (genericSuperclass != Object.class) {
                genericSuperclass = ((Class) genericSuperclass).getGenericSuperclass();
            } else {
                throw new RuntimeException(cls.getName() + " extends " + cls.getSuperclass().getName() + ": missing type parameter.");
            }
        }
        return C$Gson$Types.canonicalize(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
    }

    public void a(@Nullable T t, int i, int i2, @Nullable String str, @Nullable Throwable th) {
        a(i, i2, str, th);
    }
}
