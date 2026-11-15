package com.yandex.div.evaluable.function;

import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import defpackage.e74;
import defpackage.i81;
import defpackage.k81;
import defpackage.vib;
import defpackage.y45;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.c;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class ArrayFunctionsKt {
    public static final void a(String str, List list, boolean z) {
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type org.json.JSONArray");
        int length = ((JSONArray) obj).length();
        Object obj2 = list.get(1);
        y45.h(obj2, "null cannot be cast to non-null type kotlin.Long");
        long jLongValue = ((Long) obj2).longValue();
        if (jLongValue < length) {
            return;
        }
        h(str, list, "Requested index (" + jLongValue + ") out of bounds array size (" + length + ").", z);
        throw new KotlinNothingValueException();
    }

    public static void b(String str, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        a(str, list, z);
    }

    public static final Object c(String str, List list, boolean z) throws JSONException {
        y45.j(str, "functionName");
        y45.j(list, "args");
        a(str, list, z);
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type org.json.JSONArray");
        Object obj2 = list.get(1);
        y45.h(obj2, "null cannot be cast to non-null type kotlin.Long");
        Object obj3 = ((JSONArray) obj).get((int) ((Long) obj2).longValue());
        y45.i(obj3, "array.get(index.toInt())");
        return obj3;
    }

    public static Object d(String str, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return c(str, list, z);
    }

    public static final Object e(String str, List list) {
        Object objM279constructorimpl;
        y45.j(str, "functionName");
        y45.j(list, "args");
        try {
            Result.Companion companion = Result.INSTANCE;
            b(str, list, false, 4, null);
            Object obj = list.get(0);
            y45.h(obj, "null cannot be cast to non-null type org.json.JSONArray");
            Object obj2 = list.get(1);
            y45.h(obj2, "null cannot be cast to non-null type kotlin.Long");
            objM279constructorimpl = Result.m279constructorimpl(((JSONArray) obj).get((int) ((Long) obj2).longValue()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            return null;
        }
        return objM279constructorimpl;
    }

    public static final k81 f(String str) {
        Object objM279constructorimpl;
        if (str == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(k81.c(k81.b.b(str)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        return (k81) (Result.m285isFailureimpl(objM279constructorimpl) ? null : objM279constructorimpl);
    }

    public static final String g(String str) {
        Object objM279constructorimpl;
        if (str == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(vib.a(vib.b.a(str)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        vib vibVar = (vib) objM279constructorimpl;
        if (vibVar != null) {
            return vibVar.g();
        }
        return null;
    }

    public static final Void h(String str, List list, String str2, boolean z) {
        y45.j(str, "functionName");
        y45.j(list, "args");
        y45.j(str2, "message");
        k("array", str, list, str2, z);
        throw new KotlinNothingValueException();
    }

    public static Void i(String str, List list, String str2, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        return h(str, list, str2, z);
    }

    public static final void j(String str, List list, EvaluableType evaluableType, Object obj, boolean z) {
        String simpleName;
        y45.j(str, "functionName");
        y45.j(list, "args");
        y45.j(evaluableType, "expected");
        y45.j(obj, "actual");
        if (y45.e(obj, JSONObject.NULL)) {
            simpleName = "Null";
        } else if (obj instanceof Number) {
            simpleName = DataTypes.OBJ_NUMBER;
        } else if (obj instanceof JSONObject) {
            simpleName = "Dict";
        } else {
            simpleName = obj instanceof JSONArray ? "Array" : obj.getClass().getSimpleName();
        }
        h(str, list, "Incorrect value type: expected " + evaluableType.getTypeName() + ", got " + simpleName + '.', z);
        throw new KotlinNothingValueException();
    }

    public static final Void k(String str, String str2, List list, String str3, boolean z) {
        String str4;
        y45.j(str, "type");
        y45.j(str2, "functionName");
        y45.j(list, "args");
        y45.j(str3, "message");
        if (z) {
            str4 = "";
        } else {
            str4 = '<' + str + ">, ";
        }
        EvaluableExceptionKt.e(i81.y0(list.subList(1, list.size()), null, str2 + '(' + str4, ")", 0, null, new e74() {
            @Override
            public final CharSequence invoke(Object obj) {
                y45.j(obj, "it");
                return EvaluableExceptionKt.i(obj);
            }
        }, 25, null), str3, null, 4, null);
        throw new KotlinNothingValueException();
    }

    public static Void l(String str, String str2, List list, String str3, boolean z, int i, Object obj) {
        if ((i & 16) != 0) {
            z = false;
        }
        return k(str, str2, list, str3, z);
    }
}
