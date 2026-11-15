package com.mgadplus.netlib.base;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.internal.C$Gson$Types;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgadplus.netlib.json.JsonVoid;
import defpackage.a9d;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

public abstract class b<jsonclasstype> extends a9d {
    private long a;
    private long b;
    private String d;
    private jsonclasstype f;
    private String c = "";
    private boolean e = false;

    public abstract void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2);

    @Override
    public void a(e eVar) {
        if (eVar != null) {
            a(false);
            a(eVar.b());
        }
        if (eVar.e() != null) {
            a(eVar.a(), 0, eVar.e().getMessage(), eVar.e(), eVar.b());
            return;
        }
        if (eVar.a() != 200) {
            a(eVar.a(), 0, "http error" + eVar.a(), null, eVar.b());
            return;
        }
        if (((FzHttpResponseObject) eVar.d()).getCode() == 0 || ((FzHttpResponseObject) eVar.d()).getCode() == 200) {
            jsonclasstype jsonclasstype = this.f;
            if (jsonclasstype != null) {
                b(jsonclasstype);
                return;
            } else {
                a(eVar.a(), 0, "unknown error", null, eVar.b());
                return;
            }
        }
        a(eVar.a(), ((FzHttpResponseObject) eVar.d()).getCode(), "logic error cause code" + ((FzHttpResponseObject) eVar.d()).getCode(), null, eVar.b());
    }

    public abstract void b(@NonNull jsonclasstype jsonclasstype);

    public void d() {
        this.a = SystemClock.elapsedRealtime();
    }

    public long e() {
        return this.a;
    }

    public long f() {
        return this.b;
    }

    public String g() {
        return this.c;
    }

    public String h() {
        return this.d;
    }

    public boolean i() {
        return this.e;
    }

    @Override
    public void c(e eVar) {
        if (eVar.e() != null) {
            SourceKitLogger.a("mgmi", "exception task" + eVar.e().getMessage());
            return;
        }
        FzHttpResponseObject fzHttpResponseObject = (FzHttpResponseObject) eVar.d();
        if (eVar.a() == 200 && eVar.e() == null) {
            try {
                this.f = a(fzHttpResponseObject);
            } catch (Exception e) {
                eVar.a(e);
            }
        }
    }

    public long c() {
        return this.b - this.a;
    }

    private jsonclasstype a(@NonNull JsonElement jsonElement) {
        Type typeA = a(getClass());
        if (typeA == JsonVoid.class) {
            return (jsonclasstype) new JsonVoid() {
            };
        }
        if (typeA == String.class) {
            return (jsonclasstype) jsonElement.toString();
        }
        if (typeA == JsonObject.class) {
            return (jsonclasstype) jsonElement.getAsJsonObject();
        }
        if (typeA instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) typeA;
            Type rawType = parameterizedType.getRawType();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            if ((rawType instanceof Class) && ((Class) rawType).isAssignableFrom(List.class) && actualTypeArguments.length == 1) {
                Type type = actualTypeArguments[0];
                if ((type instanceof Class) && com.mgadplus.netlib.json.a.class.isAssignableFrom((Class) type)) {
                    if (jsonElement.isJsonArray()) {
                        return (jsonclasstype) com.mgadplus.netlib.json.b.a(jsonElement.getAsJsonArray(), actualTypeArguments[0]);
                    }
                    return (jsonclasstype) com.mgadplus.netlib.json.b.a(jsonElement.getAsJsonObject().get(b()).getAsJsonArray(), actualTypeArguments[0]);
                }
            }
        }
        return (jsonclasstype) com.mgadplus.netlib.json.b.b(jsonElement, typeA);
    }

    public String b() {
        return "list";
    }

    public jsonclasstype a(@NonNull FzHttpResponseObject fzHttpResponseObject) throws Exception {
        return a(fzHttpResponseObject.data);
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

    public void a(String str) {
        this.d = str;
    }

    public void a(boolean z) {
        this.e = z;
    }
}
