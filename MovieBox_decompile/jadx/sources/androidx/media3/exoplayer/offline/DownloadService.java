package androidx.media3.exoplayer.offline;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.h0;
import androidx.media3.common.util.u;
import androidx.media3.exoplayer.scheduler.Requirements;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

public abstract class DownloadService extends Service {

    private static final HashMap f12040k = new HashMap();

    private final c f12041a;

    private final String f12042b;

    private final int f12043c;

    private final int f12044d;

    private b f12045e;

    private int f12046f;

    private boolean f12047g;

    private boolean f12048h;

    private boolean f12049i;

    private boolean f12050j;

    static final class b implements DownloadManager.d {

        private final Context f12051a;

        private final DownloadManager f12052b;

        private final boolean f12053c;

        private final e2.f f12054d;

        private final Class f12055e;

        private DownloadService f12056f;

        private Requirements f12057g;

        private void k() {
            Requirements requirements = new Requirements(0);
            if (o(requirements)) {
                this.f12054d.cancel();
                this.f12057g = requirements;
            }
        }

        public void m(DownloadService downloadService) {
            downloadService.v(this.f12052b.e());
        }

        private void n() {
            if (this.f12053c) {
                try {
                    a1.r1(this.f12051a, DownloadService.o(this.f12051a, this.f12055e, "androidx.media3.exoplayer.downloadService.action.RESTART"));
                    return;
                } catch (IllegalStateException unused) {
                    u.h("DownloadService", "Failed to restart (foreground launch restriction)");
                    return;
                }
            }
            try {
                this.f12051a.startService(DownloadService.o(this.f12051a, this.f12055e, "androidx.media3.exoplayer.downloadService.action.INIT"));
            } catch (IllegalStateException unused2) {
                u.h("DownloadService", "Failed to restart (process is idle)");
            }
        }

        private boolean o(Requirements requirements) {
            return !Objects.equals(this.f12057g, requirements);
        }

        private boolean p() {
            DownloadService downloadService = this.f12056f;
            return downloadService == null || downloadService.r();
        }

        @Override
        public void a(DownloadManager downloadManager, boolean z10) {
            if (z10 || downloadManager.g() || !p()) {
                return;
            }
            List listE = downloadManager.e();
            for (int i10 = 0; i10 < listE.size(); i10++) {
                if (((androidx.media3.exoplayer.offline.c) listE.get(i10)).f12102b == 0) {
                    n();
                    return;
                }
            }
        }

        @Override
        public void b(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c cVar) {
            DownloadService downloadService = this.f12056f;
            if (downloadService != null) {
                downloadService.u();
            }
        }

        @Override
        public void c(DownloadManager downloadManager, boolean z10) {
            j.a(this, downloadManager, z10);
        }

        @Override
        public final void d(DownloadManager downloadManager) {
            DownloadService downloadService = this.f12056f;
            if (downloadService != null) {
                downloadService.w();
            }
        }

        @Override
        public void e(DownloadManager downloadManager, Requirements requirements, int i10) {
            q();
        }

        @Override
        public void f(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c cVar, Exception exc) {
            DownloadService downloadService = this.f12056f;
            if (downloadService != null) {
                downloadService.t(cVar);
            }
            if (p() && DownloadService.s(cVar.f12102b)) {
                u.h("DownloadService", "DownloadService wasn't running. Restarting.");
                n();
            }
        }

        @Override
        public void g(DownloadManager downloadManager) {
            DownloadService downloadService = this.f12056f;
            if (downloadService != null) {
                downloadService.v(downloadManager.e());
            }
        }

        public void j(final DownloadService downloadService) {
            androidx.media3.common.util.a.g(this.f12056f == null);
            this.f12056f = downloadService;
            if (this.f12052b.l()) {
                a1.C().postAtFrontOfQueue(new Runnable() {
                    @Override
                    public final void run() {
                        this.f12114a.m(downloadService);
                    }
                });
            }
        }

        public void l(DownloadService downloadService) {
            androidx.media3.common.util.a.g(this.f12056f == downloadService);
            this.f12056f = null;
        }

        public boolean q() {
            boolean zM = this.f12052b.m();
            if (this.f12054d == null) {
                return !zM;
            }
            if (!zM) {
                k();
                return true;
            }
            Requirements requirementsI = this.f12052b.i();
            if (!this.f12054d.b(requirementsI).equals(requirementsI)) {
                k();
                return false;
            }
            if (!o(requirementsI)) {
                return true;
            }
            if (this.f12054d.a(requirementsI, this.f12051a.getPackageName(), "androidx.media3.exoplayer.downloadService.action.RESTART")) {
                this.f12057g = requirementsI;
                return true;
            }
            u.h("DownloadService", "Failed to schedule restart");
            k();
            return false;
        }

        private b(Context context, DownloadManager downloadManager, boolean z10, e2.f fVar, Class cls) {
            this.f12051a = context;
            this.f12052b = downloadManager;
            this.f12053c = z10;
            this.f12054d = fVar;
            this.f12055e = cls;
            downloadManager.d(this);
            q();
        }
    }

    final class c {

        private final int f12058a;

        private final long f12059b;

        private final Handler f12060c = new Handler(Looper.getMainLooper());

        private boolean f12061d;

        private boolean f12062e;

        public c(int i10, long j10) {
            this.f12058a = i10;
            this.f12059b = j10;
        }

        public void f() {
            DownloadManager downloadManager = ((b) androidx.media3.common.util.a.e(DownloadService.this.f12045e)).f12052b;
            Notification notificationN = DownloadService.this.n(downloadManager.e(), downloadManager.h());
            if (this.f12062e) {
                ((NotificationManager) DownloadService.this.getSystemService("notification")).notify(this.f12058a, notificationN);
            } else {
                a1.j1(DownloadService.this, this.f12058a, notificationN, 1, "dataSync");
                this.f12062e = true;
            }
            if (this.f12061d) {
                this.f12060c.removeCallbacksAndMessages(null);
                this.f12060c.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.f12116a.f();
                    }
                }, this.f12059b);
            }
        }

        public void b() {
            if (this.f12062e) {
                f();
            }
        }

        public void c() {
            if (this.f12062e) {
                return;
            }
            f();
        }

        public void d() {
            this.f12061d = true;
            f();
        }

        public void e() {
            this.f12061d = false;
            this.f12060c.removeCallbacksAndMessages(null);
        }
    }

    protected DownloadService(int i10, long j10, String str, int i11, int i12) {
        if (i10 == 0) {
            this.f12041a = null;
            this.f12042b = null;
            this.f12043c = 0;
            this.f12044d = 0;
            return;
        }
        this.f12041a = new c(i10, j10);
        this.f12042b = str;
        this.f12043c = i11;
        this.f12044d = i12;
    }

    private static void A(Context context, Intent intent, boolean z10) {
        if (z10) {
            a1.r1(context, intent);
        } else {
            context.startService(intent);
        }
    }

    public static Intent i(Context context, Class cls, DownloadRequest downloadRequest, int i10, boolean z10) {
        return p(context, cls, "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD", z10).putExtra("download_request", downloadRequest).putExtra("stop_reason", i10);
    }

    public static Intent j(Context context, Class cls, DownloadRequest downloadRequest, boolean z10) {
        return i(context, cls, downloadRequest, 0, z10);
    }

    public static Intent k(Context context, Class cls, String str, boolean z10) {
        return p(context, cls, "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD", z10).putExtra("content_id", str);
    }

    public static Intent l(Context context, Class cls, String str, int i10, boolean z10) {
        return p(context, cls, "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON", z10).putExtra("content_id", str).putExtra("stop_reason", i10);
    }

    public static Intent o(Context context, Class cls, String str) {
        return new Intent(context, (Class<?>) cls).setAction(str);
    }

    private static Intent p(Context context, Class cls, String str, boolean z10) {
        return o(context, cls, str).putExtra(com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadService.KEY_FOREGROUND, z10);
    }

    public boolean r() {
        return this.f12049i;
    }

    public static boolean s(int i10) {
        return i10 == 2 || i10 == 5 || i10 == 7;
    }

    public void t(androidx.media3.exoplayer.offline.c cVar) {
        if (this.f12041a != null) {
            if (s(cVar.f12102b)) {
                this.f12041a.d();
            } else {
                this.f12041a.b();
            }
        }
    }

    public void u() {
        c cVar = this.f12041a;
        if (cVar != null) {
            cVar.b();
        }
    }

    public void v(List list) {
        if (this.f12041a != null) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (s(((androidx.media3.exoplayer.offline.c) list.get(i10)).f12102b)) {
                    this.f12041a.d();
                    return;
                }
            }
        }
    }

    public void w() {
        c cVar = this.f12041a;
        if (cVar != null) {
            cVar.e();
        }
        if (((b) androidx.media3.common.util.a.e(this.f12045e)).q()) {
            if (a1.f10038a >= 28 || !this.f12048h) {
                this.f12049i |= stopSelfResult(this.f12046f);
            } else {
                stopSelf();
                this.f12049i = true;
            }
        }
    }

    public static void x(Context context, Class cls, DownloadRequest downloadRequest, boolean z10) {
        A(context, j(context, cls, downloadRequest, z10), z10);
    }

    public static void y(Context context, Class cls, String str, boolean z10) {
        A(context, k(context, cls, str, z10), z10);
    }

    public static void z(Context context, Class cls, String str, int i10, boolean z10) {
        A(context, l(context, cls, str, i10, z10), z10);
    }

    protected abstract DownloadManager m();

    protected abstract Notification n(List list, int i10);

    @Override
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void onCreate() {
        String str = this.f12042b;
        if (str != null) {
            h0.a(this, str, this.f12043c, this.f12044d, 2);
        }
        Class<?> cls = getClass();
        HashMap map = f12040k;
        b bVar = (b) map.get(cls);
        if (bVar == null) {
            boolean z10 = this.f12041a != null;
            e2.f fVarQ = (z10 && (a1.f10038a < 31)) ? q() : null;
            DownloadManager downloadManagerM = m();
            downloadManagerM.x();
            bVar = new b(getApplicationContext(), downloadManagerM, z10, fVarQ, cls);
            map.put(cls, bVar);
        }
        this.f12045e = bVar;
        bVar.j(this);
    }

    @Override
    public void onDestroy() {
        this.f12050j = true;
        ((b) androidx.media3.common.util.a.e(this.f12045e)).l(this);
        c cVar = this.f12041a;
        if (cVar != null) {
            cVar.e();
        }
    }

    @Override
    public int onStartCommand(Intent intent, int i10, int i11) {
        String action;
        String stringExtra;
        c cVar;
        this.f12046f = i11;
        this.f12048h = false;
        if (intent != null) {
            action = intent.getAction();
            stringExtra = intent.getStringExtra("content_id");
            this.f12047g |= intent.getBooleanExtra(com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadService.KEY_FOREGROUND, false) || "androidx.media3.exoplayer.downloadService.action.RESTART".equals(action);
        } else {
            action = null;
            stringExtra = null;
        }
        if (action == null) {
            action = "androidx.media3.exoplayer.downloadService.action.INIT";
        }
        DownloadManager downloadManager = ((b) androidx.media3.common.util.a.e(this.f12045e)).f12052b;
        switch (action) {
            case "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON":
                if (!((Intent) androidx.media3.common.util.a.e(intent)).hasExtra("stop_reason")) {
                    u.c("DownloadService", "Ignored SET_STOP_REASON: Missing stop_reason extra");
                    break;
                } else {
                    downloadManager.A(stringExtra, intent.getIntExtra("stop_reason", 0));
                    break;
                }
                break;
            case "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD":
                if (stringExtra != null) {
                    downloadManager.v(stringExtra);
                    break;
                } else {
                    u.c("DownloadService", "Ignored REMOVE_DOWNLOAD: Missing content_id extra");
                    break;
                }
                break;
            case "androidx.media3.exoplayer.downloadService.action.RESTART":
            case "androidx.media3.exoplayer.downloadService.action.INIT":
                break;
            case "androidx.media3.exoplayer.downloadService.action.RESUME_DOWNLOADS":
                downloadManager.x();
                break;
            case "androidx.media3.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS":
                downloadManager.u();
                break;
            case "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD":
                DownloadRequest downloadRequest = (DownloadRequest) ((Intent) androidx.media3.common.util.a.e(intent)).getParcelableExtra("download_request");
                if (downloadRequest != null) {
                    downloadManager.c(downloadRequest, intent.getIntExtra("stop_reason", 0));
                    break;
                } else {
                    u.c("DownloadService", "Ignored ADD_DOWNLOAD: Missing download_request extra");
                    break;
                }
                break;
            case "androidx.media3.exoplayer.downloadService.action.SET_REQUIREMENTS":
                Requirements requirements = (Requirements) ((Intent) androidx.media3.common.util.a.e(intent)).getParcelableExtra("requirements");
                if (requirements != null) {
                    downloadManager.z(requirements);
                    break;
                } else {
                    u.c("DownloadService", "Ignored SET_REQUIREMENTS: Missing requirements extra");
                    break;
                }
                break;
            case "androidx.media3.exoplayer.downloadService.action.PAUSE_DOWNLOADS":
                downloadManager.t();
                break;
            default:
                u.c("DownloadService", "Ignored unrecognized action: " + action);
                break;
        }
        if (a1.f10038a >= 26 && this.f12047g && (cVar = this.f12041a) != null) {
            cVar.c();
        }
        this.f12049i = false;
        if (downloadManager.k()) {
            w();
        }
        return 1;
    }

    @Override
    public void onTaskRemoved(Intent intent) {
        this.f12048h = true;
    }

    protected abstract e2.f q();
}
