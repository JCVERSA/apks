package com.google.android.exoplayer2.offline;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.exoplayer2.scheduler.Requirements;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import java.util.HashMap;

public abstract class DownloadService extends Service {

    private static final HashMap f24849j = new HashMap();

    private final String f24850a;

    private final int f24851b;

    private final int f24852c;

    private a f24853d;

    private int f24854e;

    private boolean f24855f;

    private boolean f24856g;

    private boolean f24857h;

    private boolean f24858i;

    private static final class a {
        static DownloadManager a(a aVar) {
            aVar.getClass();
            return null;
        }

        public abstract void b(DownloadService downloadService);

        public abstract void c(DownloadService downloadService);
    }

    protected abstract DownloadManager a();

    @Override
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void onCreate() {
        String str = this.f24850a;
        if (str != null) {
            b0.a(this, str, this.f24851b, this.f24852c, 2);
        }
        int i10 = p0.f26854a;
        a();
        throw null;
    }

    @Override
    public void onDestroy() {
        this.f24858i = true;
        ((a) com.google.android.exoplayer2.util.a.e(this.f24853d)).c(this);
    }

    @Override
    public int onStartCommand(Intent intent, int i10, int i11) {
        String action;
        String stringExtra;
        byte b10 = 1;
        this.f24854e = i11;
        this.f24856g = false;
        if (intent != null) {
            action = intent.getAction();
            stringExtra = intent.getStringExtra("content_id");
            this.f24855f |= intent.getBooleanExtra(com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadService.KEY_FOREGROUND, false) || "com.google.android.exoplayer.downloadService.action.RESTART".equals(action);
        } else {
            action = null;
            stringExtra = null;
        }
        if (action == null) {
            action = com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadService.ACTION_INIT;
        }
        a.a((a) com.google.android.exoplayer2.util.a.e(this.f24853d));
        switch (action.hashCode()) {
            case -1931239035:
                b10 = !action.equals("com.google.android.exoplayer.downloadService.action.ADD_DOWNLOAD") ? (byte) -1 : (byte) 0;
                break;
            case -932047176:
                if (!action.equals("com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS")) {
                    b10 = -1;
                }
                break;
            case -871181424:
                b10 = !action.equals("com.google.android.exoplayer.downloadService.action.RESTART") ? (byte) -1 : (byte) 2;
                break;
            case -650547439:
                b10 = !action.equals("com.google.android.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS") ? (byte) -1 : (byte) 3;
                break;
            case -119057172:
                b10 = !action.equals("com.google.android.exoplayer.downloadService.action.SET_REQUIREMENTS") ? (byte) -1 : (byte) 4;
                break;
            case 191112771:
                b10 = !action.equals("com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS") ? (byte) -1 : (byte) 5;
                break;
            case 671523141:
                b10 = !action.equals("com.google.android.exoplayer.downloadService.action.SET_STOP_REASON") ? (byte) -1 : (byte) 6;
                break;
            case 1015676687:
                b10 = !action.equals(com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadService.ACTION_INIT) ? (byte) -1 : (byte) 7;
                break;
            case 1547520644:
                b10 = !action.equals("com.google.android.exoplayer.downloadService.action.REMOVE_DOWNLOAD") ? (byte) -1 : (byte) 8;
                break;
            default:
                b10 = -1;
                break;
        }
        switch (b10) {
            case 0:
                if (((DownloadRequest) ((Intent) com.google.android.exoplayer2.util.a.e(intent)).getParcelableExtra("download_request")) != null) {
                    intent.getIntExtra("stop_reason", 0);
                    throw null;
                }
                s.c("DownloadService", "Ignored ADD_DOWNLOAD: Missing download_request extra");
                break;
                break;
            case 1:
                throw null;
            case 2:
            case 7:
                break;
            case 3:
                throw null;
            case 4:
                if (((Requirements) ((Intent) com.google.android.exoplayer2.util.a.e(intent)).getParcelableExtra("requirements")) != null) {
                    throw null;
                }
                s.c("DownloadService", "Ignored SET_REQUIREMENTS: Missing requirements extra");
                break;
                break;
            case 5:
                throw null;
            case 6:
                if (((Intent) com.google.android.exoplayer2.util.a.e(intent)).hasExtra("stop_reason")) {
                    intent.getIntExtra("stop_reason", 0);
                    throw null;
                }
                s.c("DownloadService", "Ignored SET_STOP_REASON: Missing stop_reason extra");
                break;
            case 8:
                if (stringExtra != null) {
                    throw null;
                }
                s.c("DownloadService", "Ignored REMOVE_DOWNLOAD: Missing content_id extra");
                break;
                break;
            default:
                s.c("DownloadService", "Ignored unrecognized action: " + action);
                break;
        }
        int i12 = p0.f26854a;
        this.f24857h = false;
        throw null;
    }

    @Override
    public void onTaskRemoved(Intent intent) {
        this.f24856g = true;
    }
}
