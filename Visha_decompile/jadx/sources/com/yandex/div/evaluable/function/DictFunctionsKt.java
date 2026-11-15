package com.yandex.div.evaluable.function;

import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import defpackage.e74;
import defpackage.i81;
import defpackage.y45;
import defpackage.zfb;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.c;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class DictFunctionsKt {
    public static final Object a(String str, List list, boolean z) {
        Object objM279constructorimpl;
        Object objM279constructorimpl2;
        y45.j(str, "functionName");
        y45.j(list, "args");
        JSONObject jSONObject = (JSONObject) i81.o0(list);
        int size = list.size() - 1;
        for (int i = 1; i < size; i++) {
            Object obj = list.get(i);
            y45.h(obj, "null cannot be cast to non-null type kotlin.String");
            String str2 = (String) obj;
            try {
                Result.Companion companion = Result.INSTANCE;
                y45.g(jSONObject);
                Object objOpt = jSONObject.opt(str2);
                jSONObject = objOpt instanceof JSONObject ? (JSONObject) objOpt : null;
                objM279constructorimpl2 = Result.m279constructorimpl(zfb.a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl2 = Result.m279constructorimpl(c.a(th));
            }
            if (Result.m282exceptionOrNullimpl(objM279constructorimpl2) != null) {
                f(str, list, str2, z);
                throw new KotlinNothingValueException();
            }
        }
        Object objA0 = i81.A0(list);
        y45.h(objA0, "null cannot be cast to non-null type kotlin.String");
        String str3 = (String) objA0;
        try {
            Result.Companion companion3 = Result.INSTANCE;
            y45.g(jSONObject);
            objM279constructorimpl = Result.m279constructorimpl(jSONObject.get(str3));
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th2));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) == null) {
            y45.i(objM279constructorimpl, "runCatching { dict!!.get…propName, isMethod)\n    }");
            return objM279constructorimpl;
        }
        f(str, list, str3, z);
        throw new KotlinNothingValueException();
    }

    public static final Object b(List list, Object obj, boolean z) {
        y45.j(list, "args");
        y45.j(obj, "fallback");
        int i = !z ? 1 : 0;
        Object obj2 = list.get(i);
        JSONObject jSONObjectOptJSONObject = obj2 instanceof JSONObject ? (JSONObject) obj2 : null;
        if (jSONObjectOptJSONObject == null) {
            return obj;
        }
        int size = list.size() - 1;
        for (int i2 = i + 1; i2 < size; i2++) {
            Object obj3 = list.get(i2);
            y45.h(obj3, "null cannot be cast to non-null type kotlin.String");
            jSONObjectOptJSONObject = jSONObjectOptJSONObject.optJSONObject((String) obj3);
            if (jSONObjectOptJSONObject == null) {
                return obj;
            }
        }
        Object objA0 = i81.A0(list);
        y45.h(objA0, "null cannot be cast to non-null type kotlin.String");
        return jSONObjectOptJSONObject.opt((String) objA0);
    }

    public static Object c(List list, Object obj, boolean z, int i, Object obj2) {
        if ((i & 4) != 0) {
            z = false;
        }
        return b(list, obj, z);
    }

    public static final Void d(String str, List list, String str2) {
        y45.j(str, "functionName");
        y45.j(list, "args");
        y45.j(str2, "message");
        ArrayFunctionsKt.l("dict", str, list, str2, false, 16, null);
        throw new KotlinNothingValueException();
    }

    public static final Void e(String str, List list, String str2, boolean z) {
        y45.j(str, "functionName");
        y45.j(list, "args");
        y45.j(str2, "message");
        String str3 = z ? "" : "<dict>, ";
        EvaluableExceptionKt.e(i81.y0(list.subList(1, list.size()), null, str + '(' + str3, ")", 0, null, new e74() {
            @Override
            public final CharSequence invoke(Object obj) {
                y45.j(obj, "it");
                return EvaluableExceptionKt.i(obj);
            }
        }, 25, null), str2, null, 4, null);
        throw new KotlinNothingValueException();
    }

    public static final Void f(String str, List list, String str2, boolean z) {
        e(str, list, "Missing property \"" + str2 + "\" in the dict.", z);
        throw new KotlinNothingValueException();
    }

    public static final Void g(String str, List list, EvaluableType evaluableType, Object obj, boolean z) {
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
        e(str, list, "Incorrect value type: expected " + evaluableType.getTypeName() + ", got " + simpleName + '.', z);
        throw new KotlinNothingValueException();
    }
}
