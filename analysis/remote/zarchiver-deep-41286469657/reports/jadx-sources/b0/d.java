package b0;

import android.content.Intent;
import ru.zdevs.zarchiver.activity.InstallApksDlg;
import ru.zdevs.zarchiver.service.ZArchiverService;

public final class d implements Runnable {

    public final ru.zdevs.zarchiver.c f276a;

    public final h0.h f277b;

    public final InstallApksDlg f278c;

    public d(InstallApksDlg installApksDlg, ru.zdevs.zarchiver.c cVar, h0.h hVar) {
        this.f278c = installApksDlg;
        this.f276a = cVar;
        this.f277b = hVar;
    }

    @Override
    public final void run() {
        h0.h hVar = this.f277b;
        InstallApksDlg installApksDlg = this.f278c;
        try {
            if (q0.a.l(this.f276a, hVar) == 3) {
                installApksDlg.f1579d = hVar;
                installApksDlg.f1576a = h1.h.f(installApksDlg, new Intent(installApksDlg, (Class<?>) ZArchiverService.class), installApksDlg.f1580e);
            } else {
                int i2 = InstallApksDlg.f1575f;
                installApksDlg.a(null, true);
            }
        } catch (q0.a.C0025a e2) {
            String message = e2.getMessage();
            int i3 = InstallApksDlg.f1575f;
            installApksDlg.a(message, false);
        }
    }
}
