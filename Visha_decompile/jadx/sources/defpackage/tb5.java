package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class tb5 {
    public static JSONObject a(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject == JSONObject.NULL) {
            return null;
        }
        return jSONObject;
    }

    public static Object b(JSONArray jSONArray, int i) {
        Object objOpt = jSONArray.opt(i);
        if (objOpt == JSONObject.NULL) {
            return null;
        }
        return objOpt;
    }

    public static Object c(JSONObject jSONObject, String str) {
        Object objOpt = jSONObject.opt(str);
        if (objOpt == JSONObject.NULL) {
            return null;
        }
        return objOpt;
    }

    public static Object d(ex7 ex7Var, JSONObject jSONObject, String str) {
        return f(ex7Var, jSONObject, str, ob5.f(), ob5.e());
    }

    public static Object e(ex7 ex7Var, JSONObject jSONObject, String str, e74 e74Var) {
        return f(ex7Var, jSONObject, str, e74Var, ob5.e());
    }

    public static Object f(ex7 ex7Var, JSONObject jSONObject, String str, e74 e74Var, pnb pnbVar) {
        Object objC = c(jSONObject, str);
        if (objC == null) {
            throw mx7.m(jSONObject, str);
        }
        try {
            Object objInvoke = e74Var.invoke(objC);
            if (objInvoke == null) {
                throw mx7.j(jSONObject, str, objC);
            }
            try {
                if (pnbVar.a(objInvoke)) {
                    return objInvoke;
                }
                throw mx7.j(jSONObject, str, objInvoke);
            } catch (ClassCastException unused) {
                throw mx7.x(jSONObject, str, objInvoke);
            }
        } catch (ClassCastException unused2) {
            throw mx7.x(jSONObject, str, objC);
        } catch (Exception e) {
            throw mx7.k(jSONObject, str, objC, e);
        }
    }

    public static Object g(ex7 ex7Var, JSONObject jSONObject, String str, yi5 yi5Var) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
        if (jSONObjectOptJSONObject == null) {
            throw mx7.m(jSONObject, str);
        }
        try {
            Object objA = ((w92) yi5Var.getValue()).a(ex7Var, jSONObjectOptJSONObject);
            if (objA != null) {
                return objA;
            }
            throw mx7.j(jSONObject, str, null);
        } catch (Exception e) {
            throw mx7.c(jSONObject, str, e);
        }
    }

    public static Object h(ex7 ex7Var, JSONObject jSONObject, String str, pnb pnbVar) {
        return f(ex7Var, jSONObject, str, ob5.f(), pnbVar);
    }

    public static List i(ex7 ex7Var, JSONObject jSONObject, String str, yi5 yi5Var) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            throw mx7.m(jSONObject, str);
        }
        int length = jSONArrayOptJSONArray.length();
        if (length == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            JSONObject jSONObjectA = a(jSONArrayOptJSONArray.optJSONObject(i));
            if (jSONObjectA != null) {
                try {
                    Object objA = ((w92) yi5Var.getValue()).a(ex7Var, jSONObjectA);
                    if (objA != null) {
                        arrayList.add(objA);
                    }
                } catch (Exception e) {
                    ex7Var.getLogger().c(mx7.a(jSONArrayOptJSONArray, str, i, e));
                }
            }
        }
        return arrayList;
    }

    public static List j(ex7 ex7Var, JSONObject jSONObject, String str, yi5 yi5Var, hm5 hm5Var) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            throw mx7.m(jSONObject, str);
        }
        int length = jSONArrayOptJSONArray.length();
        if (length == 0) {
            List listEmptyList = Collections.emptyList();
            try {
                if (!hm5Var.a(listEmptyList)) {
                    ex7Var.getLogger().c(mx7.j(jSONObject, str, listEmptyList));
                }
                return listEmptyList;
            } catch (ClassCastException unused) {
                ex7Var.getLogger().c(mx7.x(jSONObject, str, listEmptyList));
                return listEmptyList;
            }
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            JSONObject jSONObjectA = a(jSONArrayOptJSONArray.optJSONObject(i));
            if (jSONObjectA != null) {
                try {
                    Object objA = ((w92) yi5Var.getValue()).a(ex7Var, jSONObjectA);
                    if (objA != null) {
                        arrayList.add(objA);
                    }
                } catch (Exception e) {
                    ex7Var.getLogger().c(mx7.a(jSONArrayOptJSONArray, str, i, e));
                }
            }
        }
        try {
            if (hm5Var.a(arrayList)) {
                return arrayList;
            }
            throw mx7.j(jSONObject, str, arrayList);
        } catch (ClassCastException unused2) {
            throw mx7.x(jSONObject, str, arrayList);
        }
    }

    public static Object k(ex7 ex7Var, JSONObject jSONObject, String str) {
        return m(ex7Var, jSONObject, str, ob5.f(), ob5.e());
    }

    public static Object l(ex7 ex7Var, JSONObject jSONObject, String str, e74 e74Var) {
        return m(ex7Var, jSONObject, str, e74Var, ob5.e());
    }

    public static Object m(ex7 ex7Var, JSONObject jSONObject, String str, e74 e74Var, pnb pnbVar) {
        Object objC = c(jSONObject, str);
        if (objC == null) {
            return null;
        }
        try {
            Object objInvoke = e74Var.invoke(objC);
            if (objInvoke == null) {
                ex7Var.getLogger().c(mx7.j(jSONObject, str, objC));
                return null;
            }
            try {
                if (pnbVar.a(objInvoke)) {
                    return objInvoke;
                }
                ex7Var.getLogger().c(mx7.j(jSONObject, str, objC));
                return null;
            } catch (ClassCastException unused) {
                ex7Var.getLogger().c(mx7.x(jSONObject, str, objC));
                return null;
            }
        } catch (ClassCastException unused2) {
            ex7Var.getLogger().c(mx7.x(jSONObject, str, objC));
            return null;
        } catch (Exception e) {
            ex7Var.getLogger().c(mx7.k(jSONObject, str, objC, e));
            return null;
        }
    }

    public static Object n(ex7 ex7Var, JSONObject jSONObject, String str, yi5 yi5Var) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
        if (jSONObjectOptJSONObject == null) {
            return null;
        }
        try {
            return ((w92) yi5Var.getValue()).a(ex7Var, jSONObjectOptJSONObject);
        } catch (Exception e) {
            ex7Var.getLogger().c(mx7.c(jSONObject, str, e));
            return null;
        }
    }

    public static Object o(ex7 ex7Var, JSONObject jSONObject, String str, pnb pnbVar) {
        return m(ex7Var, jSONObject, str, ob5.f(), pnbVar);
    }

    public static List p(ex7 ex7Var, JSONObject jSONObject, String str, e74 e74Var, hm5 hm5Var) {
        return q(ex7Var, jSONObject, str, e74Var, hm5Var, ob5.e());
    }

    public static List q(ex7 ex7Var, JSONObject jSONObject, String str, e74 e74Var, hm5 hm5Var, pnb pnbVar) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        int length = jSONArrayOptJSONArray.length();
        if (length == 0) {
            List listEmptyList = Collections.emptyList();
            try {
                if (hm5Var.a(listEmptyList)) {
                    return listEmptyList;
                }
                ex7Var.getLogger().c(mx7.j(jSONObject, str, listEmptyList));
                return null;
            } catch (ClassCastException unused) {
                ex7Var.getLogger().c(mx7.x(jSONObject, str, listEmptyList));
                return null;
            }
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            Object objB = b(jSONArrayOptJSONArray, i);
            if (objB != null) {
                try {
                    Object objInvoke = e74Var.invoke(objB);
                    if (objInvoke != null) {
                        try {
                            if (pnbVar.a(objInvoke)) {
                                arrayList.add(objInvoke);
                            } else {
                                ex7Var.getLogger().c(mx7.h(jSONArrayOptJSONArray, str, i, objInvoke));
                            }
                        } catch (ClassCastException unused2) {
                            ex7Var.getLogger().c(mx7.w(jSONArrayOptJSONArray, str, i, objInvoke));
                        }
                    }
                } catch (ClassCastException unused3) {
                    ex7Var.getLogger().c(mx7.w(jSONArrayOptJSONArray, str, i, objB));
                } catch (Exception e) {
                    ex7Var.getLogger().c(mx7.i(jSONArrayOptJSONArray, str, i, objB, e));
                }
            }
        }
        try {
            if (hm5Var.a(arrayList)) {
                return arrayList;
            }
            ex7Var.getLogger().c(mx7.j(jSONObject, str, arrayList));
            return null;
        } catch (ClassCastException unused4) {
            ex7Var.getLogger().c(mx7.x(jSONObject, str, arrayList));
            return null;
        }
    }

    public static List r(ex7 ex7Var, JSONObject jSONObject, String str, yi5 yi5Var) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        int length = jSONArrayOptJSONArray.length();
        if (length == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            JSONObject jSONObjectA = a(jSONArrayOptJSONArray.optJSONObject(i));
            if (jSONObjectA != null) {
                try {
                    Object objA = ((w92) yi5Var.getValue()).a(ex7Var, jSONObjectA);
                    if (objA != null) {
                        arrayList.add(objA);
                    }
                } catch (Exception e) {
                    ex7Var.getLogger().c(mx7.a(jSONArrayOptJSONArray, str, i, e));
                }
            }
        }
        return arrayList;
    }

    public static List s(ex7 ex7Var, JSONObject jSONObject, String str, yi5 yi5Var, hm5 hm5Var) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        int length = jSONArrayOptJSONArray.length();
        if (length == 0) {
            List listEmptyList = Collections.emptyList();
            try {
                if (hm5Var.a(listEmptyList)) {
                    return listEmptyList;
                }
                ex7Var.getLogger().c(mx7.j(jSONObject, str, listEmptyList));
                return null;
            } catch (ClassCastException unused) {
                ex7Var.getLogger().c(mx7.x(jSONObject, str, listEmptyList));
                return null;
            }
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            JSONObject jSONObjectA = a(jSONArrayOptJSONArray.optJSONObject(i));
            if (jSONObjectA != null) {
                try {
                    Object objA = ((w92) yi5Var.getValue()).a(ex7Var, jSONObjectA);
                    if (objA != null) {
                        arrayList.add(objA);
                    }
                } catch (Exception e) {
                    ex7Var.getLogger().c(mx7.a(jSONArrayOptJSONArray, str, i, e));
                }
            }
        }
        try {
            if (hm5Var.a(arrayList)) {
                return arrayList;
            }
            ex7Var.getLogger().c(mx7.j(jSONObject, str, arrayList));
            return null;
        } catch (ClassCastException unused2) {
            ex7Var.getLogger().c(mx7.x(jSONObject, str, arrayList));
            return null;
        }
    }

    public static String t(ex7 ex7Var, JSONObject jSONObject, String str) {
        Object objC = c(jSONObject, str);
        if (objC == null) {
            return null;
        }
        try {
            return (String) objC;
        } catch (ClassCastException unused) {
            ex7Var.getLogger().c(mx7.x(jSONObject, str, objC));
            return null;
        } catch (Exception e) {
            ex7Var.getLogger().c(mx7.k(jSONObject, str, objC, e));
            return null;
        }
    }

    public static String u(ex7 ex7Var, JSONObject jSONObject, String str) {
        Object objC = c(jSONObject, str);
        if (objC == null) {
            throw mx7.m(jSONObject, str);
        }
        try {
            return (String) objC;
        } catch (ClassCastException unused) {
            throw mx7.x(jSONObject, str, objC);
        } catch (Exception e) {
            throw mx7.k(jSONObject, str, objC, e);
        }
    }

    public static void v(ex7 ex7Var, JSONObject jSONObject, String str, Object obj) {
        w(ex7Var, jSONObject, str, obj, ob5.f());
    }

    public static void w(ex7 ex7Var, JSONObject jSONObject, String str, Object obj, e74 e74Var) {
        if (obj != null) {
            try {
                jSONObject.put(str, e74Var.invoke(obj));
            } catch (JSONException e) {
                ex7Var.getLogger().c(e);
            }
        }
    }

    public static void x(ex7 ex7Var, JSONObject jSONObject, String str, Object obj, yi5 yi5Var) {
        if (obj != null) {
            try {
                jSONObject.put(str, ((pd9) yi5Var.getValue()).b(ex7Var, obj));
            } catch (JSONException e) {
                ex7Var.getLogger().c(e);
            }
        }
    }

    public static void y(ex7 ex7Var, JSONObject jSONObject, String str, List list, e74 e74Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = list.size();
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < size; i++) {
            jSONArray.put(e74Var.invoke(list.get(i)));
        }
        try {
            jSONObject.put(str, jSONArray);
        } catch (JSONException e) {
            ex7Var.getLogger().c(e);
        }
    }

    public static void z(ex7 ex7Var, JSONObject jSONObject, String str, List list, yi5 yi5Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = list.size();
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < size; i++) {
            jSONArray.put(((pd9) yi5Var.getValue()).b(ex7Var, list.get(i)));
        }
        try {
            jSONObject.put(str, jSONArray);
        } catch (JSONException e) {
            ex7Var.getLogger().c(e);
        }
    }
}
