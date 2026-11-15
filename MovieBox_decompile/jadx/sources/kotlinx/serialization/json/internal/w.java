package kotlinx.serialization.json.internal;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public abstract class w {
    public static final JsonDecodingException a(Number value, String key, String output) {
        Intrinsics.h(value, "value");
        Intrinsics.h(key, "key");
        Intrinsics.h(output, "output");
        return e(-1, k(value, key, output));
    }

    public static final JsonEncodingException b(Number value, String output) {
        Intrinsics.h(value, "value");
        Intrinsics.h(output, "output");
        return new JsonEncodingException("Unexpected special floating-point value " + value + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + ((Object) i(output, 0, 1, null)));
    }

    public static final JsonEncodingException c(Number value, String key, String output) {
        Intrinsics.h(value, "value");
        Intrinsics.h(key, "key");
        Intrinsics.h(output, "output");
        return new JsonEncodingException(k(value, key, output));
    }

    public static final JsonEncodingException d(kotlinx.serialization.descriptors.f keyDescriptor) {
        Intrinsics.h(keyDescriptor, "keyDescriptor");
        return new JsonEncodingException("Value of type '" + keyDescriptor.i() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + keyDescriptor.d() + "'.\nUse 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
    }

    public static final JsonDecodingException e(int i10, String message) {
        Intrinsics.h(message, "message");
        if (i10 >= 0) {
            message = "Unexpected JSON token at offset " + i10 + ": " + message;
        }
        return new JsonDecodingException(message);
    }

    public static final JsonDecodingException f(int i10, String message, CharSequence input) {
        Intrinsics.h(message, "message");
        Intrinsics.h(input, "input");
        return e(i10, message + "\nJSON input: " + ((Object) h(input, i10)));
    }

    public static final JsonDecodingException g(String key, String input) {
        Intrinsics.h(key, "key");
        Intrinsics.h(input, "input");
        return e(-1, "Encountered unknown key '" + key + "'.\nUse 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.\nCurrent input: " + ((Object) i(input, 0, 1, null)));
    }

    private static final CharSequence h(CharSequence charSequence, int i10) {
        if (charSequence.length() < 200) {
            return charSequence;
        }
        if (i10 == -1) {
            int length = charSequence.length() - 60;
            if (length <= 0) {
                return charSequence;
            }
            return "....." + charSequence.subSequence(length, charSequence.length()).toString();
        }
        int i11 = i10 - 30;
        int i12 = i10 + 30;
        return (i11 <= 0 ? "" : ".....") + charSequence.subSequence(RangesKt.e(i11, 0), RangesKt.h(i12, charSequence.length())).toString() + (i12 >= charSequence.length() ? "" : ".....");
    }

    static CharSequence i(CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = -1;
        }
        return h(charSequence, i10);
    }

    public static final Void j(a aVar, Number result) {
        Intrinsics.h(aVar, "<this>");
        Intrinsics.h(result, "result");
        a.y(aVar, "Unexpected special floating-point value " + result + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification", 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2, null);
        throw new KotlinNothingValueException();
    }

    private static final String k(Number number, String str, String str2) {
        return "Unexpected special floating-point value " + number + " with key " + str + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + ((Object) i(str2, 0, 1, null));
    }
}
