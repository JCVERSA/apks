package defpackage;

import com.yandex.div.json.ParsingException;
import com.yandex.div.json.ParsingExceptionReason;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class mx7 {
    public static final ParsingException a = new ParsingException(ParsingExceptionReason.MISSING_VARIABLE, "", null, null, null, 28, null);

    public static final ParsingException a(JSONArray jSONArray, String str, int i, Exception exc) {
        y45.j(jSONArray, "json");
        y45.j(str, "key");
        y45.j(exc, "cause");
        return new ParsingException(ParsingExceptionReason.DEPENDENCY_FAILED, "Value at " + i + " position of '" + str + "' is failed to create", exc, new w95(jSONArray), pc5.d(jSONArray, 0, 1, null));
    }

    public static final ParsingException b(JSONObject jSONObject, String str, ParsingException parsingException) {
        y45.j(jSONObject, "json");
        y45.j(str, "key");
        y45.j(parsingException, "cause");
        return c(jSONObject, str, parsingException);
    }

    public static final ParsingException c(JSONObject jSONObject, String str, Exception exc) {
        y45.j(jSONObject, "json");
        y45.j(str, "key");
        y45.j(exc, "cause");
        return new ParsingException(ParsingExceptionReason.DEPENDENCY_FAILED, "Value for key '" + str + "' is failed to create", exc, new db5(jSONObject), pc5.e(jSONObject, 0, 1, null));
    }

    public static final ParsingException d() {
        return a;
    }

    public static final ParsingException e(String str, Object obj) {
        y45.j(str, "path");
        return new ParsingException(ParsingExceptionReason.INVALID_VALUE, "Value '" + t(obj) + "' at path '" + str + "' is not valid", null, null, null, 28, null);
    }

    public static final ParsingException f(String str, String str2, Object obj) {
        y45.j(str, "key");
        y45.j(str2, "path");
        return new ParsingException(ParsingExceptionReason.INVALID_VALUE, "Value '" + t(obj) + "' for key '" + str + "' at path '" + str2 + "' is not valid", null, null, null, 28, null);
    }

    public static final ParsingException g(String str, String str2, Object obj, Throwable th) {
        y45.j(str, "expressionKey");
        y45.j(str2, "rawExpression");
        return new ParsingException(ParsingExceptionReason.INVALID_VALUE, "Field '" + str + "' with expression '" + str2 + "' received wrong value: '" + obj + '\'', th, null, null, 24, null);
    }

    public static final ParsingException h(JSONArray jSONArray, String str, int i, Object obj) {
        y45.j(jSONArray, "json");
        y45.j(str, "key");
        return new ParsingException(ParsingExceptionReason.INVALID_VALUE, "Value '" + t(obj) + "' at " + i + " position of '" + str + "' is not valid", null, new w95(jSONArray), pc5.d(jSONArray, 0, 1, null), 4, null);
    }

    public static final ParsingException i(JSONArray jSONArray, String str, int i, Object obj, Throwable th) {
        y45.j(jSONArray, "json");
        y45.j(str, "key");
        y45.j(th, "cause");
        return new ParsingException(ParsingExceptionReason.INVALID_VALUE, "Value '" + t(obj) + "' at " + i + " position of '" + str + "' is not valid", th, new w95(jSONArray), null, 16, null);
    }

    public static final ParsingException j(JSONObject jSONObject, String str, Object obj) {
        y45.j(jSONObject, "json");
        y45.j(str, "key");
        return new ParsingException(ParsingExceptionReason.INVALID_VALUE, "Value '" + t(obj) + "' for key '" + str + "' is not valid", null, new db5(jSONObject), pc5.e(jSONObject, 0, 1, null), 4, null);
    }

    public static final ParsingException k(JSONObject jSONObject, String str, Object obj, Throwable th) {
        y45.j(jSONObject, "json");
        y45.j(str, "key");
        y45.j(th, "cause");
        return new ParsingException(ParsingExceptionReason.INVALID_VALUE, "Value '" + t(obj) + "' for key '" + str + "' is not valid", th, new db5(jSONObject), null, 16, null);
    }

    public static final ParsingException l(String str, String str2) {
        y45.j(str, "key");
        y45.j(str2, "path");
        return new ParsingException(ParsingExceptionReason.MISSING_VALUE, "Value for key '" + str + "' at path '" + str2 + "' is missing", null, null, null, 28, null);
    }

    public static final ParsingException m(JSONObject jSONObject, String str) {
        y45.j(jSONObject, "json");
        y45.j(str, "key");
        return new ParsingException(ParsingExceptionReason.MISSING_VALUE, "Value for key '" + str + "' is missing", null, new db5(jSONObject), pc5.e(jSONObject, 0, 1, null), 4, null);
    }

    public static final ParsingException n(String str, String str2, String str3, Throwable th) {
        y45.j(str, "key");
        y45.j(str2, "expression");
        y45.j(str3, "variableName");
        return new ParsingException(ParsingExceptionReason.MISSING_VARIABLE, "Undefined variable '" + str3 + "' at \"" + str + "\": \"" + str2 + '\"', th, null, null, 24, null);
    }

    public static final ParsingException o(String str, Throwable th) {
        y45.j(str, "variableName");
        return new ParsingException(ParsingExceptionReason.MISSING_VARIABLE, "No variable could be resolved for '" + str, th, null, null, 24, null);
    }

    public static ParsingException p(String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        return o(str, th);
    }

    public static final ParsingException q(String str, Object obj, Throwable th) {
        y45.j(str, "key");
        return new ParsingException(ParsingExceptionReason.INVALID_VALUE, "Value '" + t(obj) + "' for key '" + str + "' could not be resolved", th, null, null, 24, null);
    }

    public static ParsingException r(String str, Object obj, Throwable th, int i, Object obj2) {
        if ((i & 4) != 0) {
            th = null;
        }
        return q(str, obj, th);
    }

    public static final ParsingException s(JSONObject jSONObject, String str) {
        y45.j(jSONObject, "json");
        y45.j(str, "templateId");
        return new ParsingException(ParsingExceptionReason.MISSING_TEMPLATE, "Template '" + str + "' is missing!", null, new db5(jSONObject), pc5.e(jSONObject, 0, 1, null), 4, null);
    }

    public static final String t(Object obj) {
        String strValueOf = String.valueOf(obj);
        if (strValueOf.length() <= 100) {
            return strValueOf;
        }
        return l1a.u1(strValueOf, 97) + "...";
    }

    public static final ParsingException u(int i, Object obj) {
        y45.j(obj, ES6Iterator.VALUE_PROPERTY);
        return new ParsingException(ParsingExceptionReason.TYPE_MISMATCH, "Item builder data at " + i + " position has wrong type: " + obj.getClass().getName(), null, null, null, 28, null);
    }

    public static final ParsingException v(String str, String str2, Object obj, Throwable th) {
        y45.j(str, "expressionKey");
        y45.j(str2, "rawExpression");
        return new ParsingException(ParsingExceptionReason.TYPE_MISMATCH, "Expression '" + str + "': '" + str2 + "' received value of wrong type: '" + obj + '\'', th, null, null, 24, null);
    }

    public static final ParsingException w(JSONArray jSONArray, String str, int i, Object obj) {
        y45.j(jSONArray, "json");
        y45.j(str, "key");
        y45.j(obj, ES6Iterator.VALUE_PROPERTY);
        return new ParsingException(ParsingExceptionReason.TYPE_MISMATCH, "Value at " + i + " position of '" + str + "' has wrong type " + obj.getClass().getName(), null, new w95(jSONArray), pc5.d(jSONArray, 0, 1, null), 4, null);
    }

    public static final ParsingException x(JSONObject jSONObject, String str, Object obj) {
        y45.j(jSONObject, "json");
        y45.j(str, "key");
        y45.j(obj, ES6Iterator.VALUE_PROPERTY);
        return new ParsingException(ParsingExceptionReason.TYPE_MISMATCH, "Value for key '" + str + "' has wrong type " + obj.getClass().getName(), null, new db5(jSONObject), pc5.e(jSONObject, 0, 1, null), 4, null);
    }

    public static ParsingException y(String str, String str2, Object obj, Throwable th, int i, Object obj2) {
        if ((i & 8) != 0) {
            th = null;
        }
        return v(str, str2, obj, th);
    }
}
