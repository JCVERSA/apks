package defpackage;

import android.content.Context;
import net.grandcentrix.tray.core.TrayStorage;
import net.grandcentrix.tray.provider.ContentProviderStorage;

public abstract class s9b extends e4 {
    public s9b(Context context, String str, int i, TrayStorage.Type type) {
        super(new ContentProviderStorage(context, str, type), i);
    }

    public s9b(Context context, String str, int i) {
        this(context, str, i, TrayStorage.Type.USER);
    }
}
