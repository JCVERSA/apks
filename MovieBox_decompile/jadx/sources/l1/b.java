package l1;

import android.text.Editable;
import androidx.emoji2.text.o;

final class b extends Editable.Factory {

    private static final Object f65546a = new Object();

    private static volatile Editable.Factory f65547b;

    private static Class f65548c;

    private b() {
        try {
            f65548c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, b.class.getClassLoader());
        } catch (Throwable unused) {
        }
    }

    public static Editable.Factory getInstance() {
        if (f65547b == null) {
            synchronized (f65546a) {
                try {
                    if (f65547b == null) {
                        f65547b = new b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f65547b;
    }

    @Override
    public Editable newEditable(CharSequence charSequence) {
        Class cls = f65548c;
        return cls != null ? o.c(cls, charSequence) : super.newEditable(charSequence);
    }
}
