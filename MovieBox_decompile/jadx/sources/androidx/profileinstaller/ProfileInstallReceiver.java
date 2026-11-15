package androidx.profileinstaller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;

public class ProfileInstallReceiver extends BroadcastReceiver {

    class a implements h.c {
        a() {
        }

        @Override
        public void a(int i10, Object obj) {
            h.f13738b.a(i10, obj);
            ProfileInstallReceiver.this.setResultCode(i10);
        }

        @Override
        public void b(int i10, Object obj) {
            h.f13738b.b(i10, obj);
        }
    }

    static void a(h.c cVar) {
        if (Build.VERSION.SDK_INT < 24) {
            cVar.a(13, null);
        } else {
            Process.sendSignal(Process.myPid(), 10);
            cVar.a(12, null);
        }
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        Bundle extras;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if ("androidx.profileinstaller.action.INSTALL_PROFILE".equals(action)) {
            h.k(context, new v3.m(), new a(), true);
            return;
        }
        if ("androidx.profileinstaller.action.SKIP_FILE".equals(action)) {
            Bundle extras2 = intent.getExtras();
            if (extras2 != null) {
                String string = extras2.getString("EXTRA_SKIP_FILE_OPERATION");
                if ("WRITE_SKIP_FILE".equals(string)) {
                    h.l(context, new v3.m(), new a());
                    return;
                } else {
                    if ("DELETE_SKIP_FILE".equals(string)) {
                        h.c(context, new v3.m(), new a());
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if ("androidx.profileinstaller.action.SAVE_PROFILE".equals(action)) {
            a(new a());
            return;
        }
        if (!"androidx.profileinstaller.action.BENCHMARK_OPERATION".equals(action) || (extras = intent.getExtras()) == null) {
            return;
        }
        String string2 = extras.getString("EXTRA_BENCHMARK_OPERATION");
        a aVar = new a();
        if ("DROP_SHADER_CACHE".equals(string2)) {
            androidx.profileinstaller.a.b(context, aVar);
        } else {
            aVar.a(16, null);
        }
    }
}
