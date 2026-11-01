package h1;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import ru.zdevs.zarchiver.ZApp;

public final class f implements Runnable {

    public final Context f1120a;

    public final Intent f1121b;

    public final String f1122c = null;

    public f(Context context, Intent intent) {
        this.f1120a = context;
        this.f1121b = intent;
    }

    @Override
    public final void run() {
        try {
            this.f1120a.startActivity(this.f1121b);
        } catch (ActivityNotFoundException unused) {
            String str = this.f1122c;
            if (str != null) {
                ZApp.j(str);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            ZApp.j("Failed to start activity: " + th.getMessage());
        }
    }
}
