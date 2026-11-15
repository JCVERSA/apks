package defpackage;

import androidx.collection.SimpleArrayMap;
import java.util.regex.Pattern;

public abstract class ir8 {
    public static final SimpleArrayMap a = new SimpleArrayMap();

    public static boolean a(String str, CharSequence charSequence) {
        return charSequence != null && charSequence.length() > 0 && Pattern.matches(str, charSequence);
    }

    public static boolean b(CharSequence charSequence) {
        return a("[a-zA-z]+://[^\\s]*", charSequence);
    }
}
