package h1;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import ru.zdevs.zarchiver.ZApp;

public final class g implements Runnable {

    public final Activity f1123a;

    public final Intent f1124b;

    public final int f1125c;

    public final String f1126d;

    public g(Activity activity, Intent intent, int i2, String str) {
        this.f1123a = activity;
        this.f1124b = intent;
        this.f1125c = i2;
        this.f1126d = str;
    }

    @Override
    public final void run() {
        try {
            this.f1123a.startActivityForResult(this.f1124b, this.f1125c);
        } catch (ActivityNotFoundException unused) {
            String str = this.f1126d;
            if (str != null) {
                ZApp.j(str);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            ZApp.j("Failed to start activity: " + th.getMessage());
        }
    }
}
