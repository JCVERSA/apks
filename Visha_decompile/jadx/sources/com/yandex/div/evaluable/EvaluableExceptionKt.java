package com.yandex.div.evaluable;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.evaluable.types.DateTime;
import defpackage.e74;
import defpackage.gpa;
import defpackage.i81;
import defpackage.k81;
import defpackage.vib;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;
import kotlin.KotlinNothingValueException;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class EvaluableExceptionKt {
    public static final String a(String str, List list) {
        y45.j(str, "name");
        y45.j(list, "args");
        return i81.y0(list, null, str + '(', ")", 0, null, new e74() {
            @Override
            public final CharSequence invoke(Object obj) {
                y45.j(obj, "it");
                return EvaluableExceptionKt.i(obj);
            }
        }, 25, null);
    }

    public static final String b(String str, List list) {
        y45.j(str, "name");
        y45.j(list, "args");
        if (list.size() <= 1) {
            return str + "()";
        }
        return i81.y0(list.subList(1, list.size()), StringUtils.COMMA, str + '(', ")", 0, null, null, 56, null);
    }

    public static final Void c(gpa.c.a aVar, Object obj, Object obj2) {
        EvaluableType evaluableType;
        String string;
        EvaluableType evaluableType2;
        EvaluableType evaluableType3;
        y45.j(aVar, "operator");
        y45.j(obj, TtmlNode.LEFT);
        y45.j(obj2, TtmlNode.RIGHT);
        String str = i(obj) + ' ' + aVar + ' ' + i(obj2);
        if (y45.e(obj.getClass(), obj2.getClass())) {
            StringBuilder sb = new StringBuilder();
            EvaluableType.Companion companion = EvaluableType.INSTANCE;
            if (obj instanceof Long) {
                evaluableType = EvaluableType.INTEGER;
            } else if (obj instanceof Double) {
                evaluableType = EvaluableType.NUMBER;
            } else if (obj instanceof Boolean) {
                evaluableType = EvaluableType.BOOLEAN;
            } else if (obj instanceof String) {
                evaluableType = EvaluableType.STRING;
            } else if (obj instanceof DateTime) {
                evaluableType = EvaluableType.DATETIME;
            } else if (obj instanceof k81) {
                evaluableType = EvaluableType.COLOR;
            } else if (obj instanceof vib) {
                evaluableType = EvaluableType.URL;
            } else if (obj instanceof JSONObject) {
                evaluableType = EvaluableType.DICT;
            } else {
                if (!(obj instanceof JSONArray)) {
                    throw new EvaluableException("Unable to find type for " + obj.getClass().getName(), null, 2, null);
                }
                evaluableType = EvaluableType.ARRAY;
            }
            sb.append(evaluableType.getTypeName());
            sb.append(" type");
            string = sb.toString();
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("different types: ");
            EvaluableType.Companion companion2 = EvaluableType.INSTANCE;
            if (obj instanceof Long) {
                evaluableType2 = EvaluableType.INTEGER;
            } else if (obj instanceof Double) {
                evaluableType2 = EvaluableType.NUMBER;
            } else if (obj instanceof Boolean) {
                evaluableType2 = EvaluableType.BOOLEAN;
            } else if (obj instanceof String) {
                evaluableType2 = EvaluableType.STRING;
            } else if (obj instanceof DateTime) {
                evaluableType2 = EvaluableType.DATETIME;
            } else if (obj instanceof k81) {
                evaluableType2 = EvaluableType.COLOR;
            } else if (obj instanceof vib) {
                evaluableType2 = EvaluableType.URL;
            } else if (obj instanceof JSONObject) {
                evaluableType2 = EvaluableType.DICT;
            } else {
                if (!(obj instanceof JSONArray)) {
                    throw new EvaluableException("Unable to find type for " + obj.getClass().getName(), null, 2, null);
                }
                evaluableType2 = EvaluableType.ARRAY;
            }
            sb2.append(evaluableType2.getTypeName());
            sb2.append(" and ");
            if (obj2 instanceof Long) {
                evaluableType3 = EvaluableType.INTEGER;
            } else if (obj2 instanceof Double) {
                evaluableType3 = EvaluableType.NUMBER;
            } else if (obj2 instanceof Boolean) {
                evaluableType3 = EvaluableType.BOOLEAN;
            } else if (obj2 instanceof String) {
                evaluableType3 = EvaluableType.STRING;
            } else if (obj2 instanceof DateTime) {
                evaluableType3 = EvaluableType.DATETIME;
            } else if (obj2 instanceof k81) {
                evaluableType3 = EvaluableType.COLOR;
            } else if (obj2 instanceof vib) {
                evaluableType3 = EvaluableType.URL;
            } else if (obj2 instanceof JSONObject) {
                evaluableType3 = EvaluableType.DICT;
            } else {
                if (!(obj2 instanceof JSONArray)) {
                    throw new EvaluableException("Unable to find type for " + obj2.getClass().getName(), null, 2, null);
                }
                evaluableType3 = EvaluableType.ARRAY;
            }
            sb2.append(evaluableType3.getTypeName());
            string = sb2.toString();
        }
        e(str, "Operator '" + aVar + "' cannot be applied to " + string + '.', null, 4, null);
        throw new KotlinNothingValueException();
    }

    public static final Void d(String str, String str2, Exception exc) {
        y45.j(str, "expression");
        y45.j(str2, "reason");
        throw new EvaluableException("Failed to evaluate [" + str + "]. " + str2, exc);
    }

    public static Void e(String str, String str2, Exception exc, int i, Object obj) {
        if ((i & 4) != 0) {
            exc = null;
        }
        return d(str, str2, exc);
    }

    public static final Void f(String str, List list, String str2, Exception exc) {
        y45.j(str, "name");
        y45.j(list, "args");
        y45.j(str2, "reason");
        d(a(str, list), str2, exc);
        throw new KotlinNothingValueException();
    }

    public static Void g(String str, List list, String str2, Exception exc, int i, Object obj) {
        if ((i & 8) != 0) {
            exc = null;
        }
        return f(str, list, str2, exc);
    }

    public static final Void h(String str, List list, String str2, Exception exc) {
        y45.j(str, "name");
        y45.j(list, "args");
        y45.j(str2, "reason");
        d(b(str, list), str2, exc);
        throw new KotlinNothingValueException();
    }

    public static final String i(Object obj) {
        y45.j(obj, "<this>");
        if (obj instanceof JSONArray) {
            return "<array>";
        }
        if (obj instanceof JSONObject) {
            return "<dict>";
        }
        if (!(obj instanceof String)) {
            return obj.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append('\'');
        sb.append(obj);
        sb.append('\'');
        return sb.toString();
    }

    public static final String j(List list) {
        y45.j(list, "<this>");
        return i81.y0(list, ", ", null, null, 0, null, new e74() {
            @Override
            public final CharSequence invoke(Object obj) {
                y45.j(obj, "it");
                return EvaluableExceptionKt.i(obj);
            }
        }, 30, null);
    }
}
