package defpackage;

import androidx.annotation.NonNull;
import net.grandcentrix.tray.core.ItemNotFoundException;
import net.grandcentrix.tray.core.TrayStorage;
import net.grandcentrix.tray.core.WrongTypeException;
import org.apache.commons.text.StringSubstitutor;

public abstract class e4 extends me8 {
    public e4(TrayStorage trayStorage, int i) {
        super(trayStorage, i);
    }

    public long i(String str) throws ItemNotFoundException {
        String strL = l(str);
        n(strL, Long.class, str);
        try {
            return Long.parseLong(strL);
        } catch (NumberFormatException e) {
            throw new WrongTypeException(e);
        }
    }

    public long j(String str, long j) {
        try {
            return i(str);
        } catch (ItemNotFoundException unused) {
            return j;
        }
    }

    public String k() {
        return ((TrayStorage) c()).a();
    }

    public String l(String str) throws ItemNotFoundException {
        q9b q9bVar = (q9b) b(str);
        if (q9bVar != null) {
            return q9bVar.a();
        }
        throw new ItemNotFoundException("Value for Key <%s> not found", str);
    }

    public String m(String str, String str2) {
        try {
            return l(str);
        } catch (ItemNotFoundException unused) {
            return str2;
        }
    }

    public final void n(String str, Class cls, String str2) {
        if (str != null) {
            return;
        }
        throw new WrongTypeException("The value for key <" + str2 + "> is null. You obviously saved this value as String and try to access it with type " + cls.getSimpleName() + " which cannot be null.  Always use getString(key, defaultValue) when accessing data you saved with put(String).");
    }

    public void registerOnTrayPreferenceChangeListener(@NonNull pf7 pf7Var) {
        ((TrayStorage) c()).registerOnTrayPreferenceChangeListener(pf7Var);
    }

    public String toString() {
        return getClass().getSimpleName() + "(@" + Integer.toHexString(hashCode()) + "){name=" + k() + StringSubstitutor.DEFAULT_VAR_END;
    }

    public void unregisterOnTrayPreferenceChangeListener(@NonNull pf7 pf7Var) {
        ((TrayStorage) c()).unregisterOnTrayPreferenceChangeListener(pf7Var);
    }
}
