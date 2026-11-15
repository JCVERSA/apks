package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;

public class PostMessageService extends Service {

    private c.d.a f1847a = new a();

    class a extends c.d.a {
        a() {
        }

        @Override
        public void E0(c.a aVar, String str, Bundle bundle) {
            aVar.O0(str, bundle);
        }

        @Override
        public void n(c.a aVar, Bundle bundle) {
            aVar.R0(bundle);
        }
    }

    @Override
    public IBinder onBind(Intent intent) {
        return this.f1847a;
    }
}
