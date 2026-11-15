package a;

import android.app.Activity;
import android.os.Process;

public final class c implements Runnable {

    public final int f17a;

    public c(int i10) {
        this.f17a = i10;
    }

    @Override
    public final void run() {
        switch (this.f17a) {
            case 0:
                Process.killProcess(Process.myPid());
                System.exit(0);
                break;
            case 1:
                try {
                    Activity activity = k.f41q.f45d;
                    if (activity != null && !activity.isFinishing()) {
                        activity.finishAffinity();
                    }
                    break;
                } catch (Throwable unused) {
                }
                d.f21d.postDelayed(new c(0), 250L);
                break;
            case 2:
                Process.killProcess(Process.myPid());
                System.exit(0);
                break;
            default:
                try {
                    Activity activity2 = k.f41q.f45d;
                    if (activity2 != null && !activity2.isFinishing()) {
                        activity2.moveTaskToBack(true);
                        activity2.finishAffinity();
                    }
                    break;
                } catch (Throwable unused2) {
                }
                e.f26d.postDelayed(new c(2), 375L);
                break;
        }
    }
}
