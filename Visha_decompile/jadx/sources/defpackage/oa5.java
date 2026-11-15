package defpackage;

import kotlin.KotlinNothingValueException;
import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.json.internal.JsonDecodingException;
import kotlinx.serialization.json.internal.JsonEncodingException;
import org.mozilla.javascript.ES6Iterator;

public abstract class oa5 {
    public static final JsonDecodingException a(Number number, String str, String str2) {
        y45.j(number, ES6Iterator.VALUE_PROPERTY);
        y45.j(str, "key");
        y45.j(str2, "output");
        return d(-1, j(number, str, str2));
    }

    public static final JsonEncodingException b(Number number, String str) {
        y45.j(number, ES6Iterator.VALUE_PROPERTY);
        y45.j(str, "output");
        return new JsonEncodingException("Unexpected special floating-point value " + number + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + ((Object) h(str, 0, 1, null)));
    }

    public static final JsonEncodingException c(a aVar) {
        y45.j(aVar, "keyDescriptor");
        return new JsonEncodingException("Value of type '" + aVar.h() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + aVar.getKind() + "'.\nUse 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
    }

    public static final JsonDecodingException d(int i, String str) {
        y45.j(str, "message");
        if (i >= 0) {
            str = "Unexpected JSON token at offset " + i + ": " + str;
        }
        return new JsonDecodingException(str);
    }

    public static final JsonDecodingException e(int i, String str, CharSequence charSequence) {
        y45.j(str, "message");
        y45.j(charSequence, "input");
        return d(i, str + "\nJSON input: " + ((Object) g(charSequence, i)));
    }

    public static final JsonDecodingException f(String str, String str2) {
        y45.j(str, "key");
        y45.j(str2, "input");
        return d(-1, "Encountered an unknown key '" + str + "'.\nUse 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.\nCurrent input: " + ((Object) h(str2, 0, 1, null)));
    }

    public static final CharSequence g(CharSequence charSequence, int i) {
        if (charSequence.length() < 200) {
            return charSequence;
        }
        if (i == -1) {
            int length = charSequence.length() - 60;
            if (length <= 0) {
                return charSequence;
            }
            return "....." + charSequence.subSequence(length, charSequence.length()).toString();
        }
        int i2 = i - 30;
        int i3 = i + 30;
        return (i2 <= 0 ? "" : ".....") + charSequence.subSequence(wn8.d(i2, 0), wn8.g(i3, charSequence.length())).toString() + (i3 >= charSequence.length() ? "" : ".....");
    }

    public static CharSequence h(CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -1;
        }
        return g(charSequence, i);
    }

    public static final Void i(c3 c3Var, Number number) {
        y45.j(c3Var, "<this>");
        y45.j(number, "result");
        c3.y(c3Var, "Unexpected special floating-point value " + number + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification", 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2, null);
        throw new KotlinNothingValueException();
    }

    public static final String j(Number number, String str, String str2) {
        return "Unexpected special floating-point value " + number + " with key " + str + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + ((Object) h(str2, 0, 1, null));
    }
}
