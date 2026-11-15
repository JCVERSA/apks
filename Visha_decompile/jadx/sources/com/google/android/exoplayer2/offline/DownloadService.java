package com.google.android.exoplayer2.offline;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.exoplayer2.scheduler.Requirements;
import defpackage.blb;
import defpackage.n27;
import defpackage.op5;
import defpackage.zi;
import java.util.HashMap;

public abstract class DownloadService extends Service {
    public static final HashMap k = new HashMap();
    public final String b;
    public final int c;
    public final int d;
    public a e;
    public int f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;

    public static final class a {
        public static DownloadManager a(a aVar) {
            aVar.getClass();
            return null;
        }

        public abstract void b(DownloadService downloadService);

        public abstract void c(DownloadService downloadService);
    }

    public abstract DownloadManager a();

    @Override
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void onCreate() {
        String str = this.b;
        if (str != null) {
            n27.a(this, str, this.c, this.d, 2);
        }
        int i = blb.a;
        a();
        throw null;
    }

    @Override
    public void onDestroy() {
        this.j = true;
        ((a) zi.e(this.e)).c(this);
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        String action;
        String stringExtra;
        byte b = 1;
        this.f = i2;
        this.h = false;
        if (intent != null) {
            action = intent.getAction();
            stringExtra = intent.getStringExtra(androidx.media3.exoplayer.offline.DownloadService.KEY_CONTENT_ID);
            this.g |= intent.getBooleanExtra("foreground", false) || "com.google.android.exoplayer.downloadService.action.RESTART".equals(action);
        } else {
            action = null;
            stringExtra = null;
        }
        if (action == null) {
            action = "com.google.android.exoplayer.downloadService.action.INIT";
        }
        a.a((a) zi.e(this.e));
        switch (action.hashCode()) {
            case -1931239035:
                b = !action.equals("com.google.android.exoplayer.downloadService.action.ADD_DOWNLOAD") ? (byte) -1 : (byte) 0;
                break;
            case -932047176:
                if (!action.equals("com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS")) {
                    b = -1;
                }
                break;
            case -871181424:
                b = !action.equals("com.google.android.exoplayer.downloadService.action.RESTART") ? (byte) -1 : (byte) 2;
                break;
            case -650547439:
                b = !action.equals("com.google.android.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS") ? (byte) -1 : (byte) 3;
                break;
            case -119057172:
                b = !action.equals("com.google.android.exoplayer.downloadService.action.SET_REQUIREMENTS") ? (byte) -1 : (byte) 4;
                break;
            case 191112771:
                b = !action.equals("com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS") ? (byte) -1 : (byte) 5;
                break;
            case 671523141:
                b = !action.equals("com.google.android.exoplayer.downloadService.action.SET_STOP_REASON") ? (byte) -1 : (byte) 6;
                break;
            case 1015676687:
                b = !action.equals("com.google.android.exoplayer.downloadService.action.INIT") ? (byte) -1 : (byte) 7;
                break;
            case 1547520644:
                b = !action.equals("com.google.android.exoplayer.downloadService.action.REMOVE_DOWNLOAD") ? (byte) -1 : (byte) 8;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                if (((DownloadRequest) ((Intent) zi.e(intent)).getParcelableExtra(androidx.media3.exoplayer.offline.DownloadService.KEY_DOWNLOAD_REQUEST)) != null) {
                    intent.getIntExtra(androidx.media3.exoplayer.offline.DownloadService.KEY_STOP_REASON, 0);
                    throw null;
                }
                op5.c("DownloadService", "Ignored ADD_DOWNLOAD: Missing download_request extra");
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
                if (((Requirements) ((Intent) zi.e(intent)).getParcelableExtra(androidx.media3.exoplayer.offline.DownloadService.KEY_REQUIREMENTS)) != null) {
                    throw null;
                }
                op5.c("DownloadService", "Ignored SET_REQUIREMENTS: Missing requirements extra");
                break;
                break;
            case 5:
                throw null;
            case 6:
                if (((Intent) zi.e(intent)).hasExtra(androidx.media3.exoplayer.offline.DownloadService.KEY_STOP_REASON)) {
                    intent.getIntExtra(androidx.media3.exoplayer.offline.DownloadService.KEY_STOP_REASON, 0);
                    throw null;
                }
                op5.c("DownloadService", "Ignored SET_STOP_REASON: Missing stop_reason extra");
                break;
            case 8:
                if (stringExtra != null) {
                    throw null;
                }
                op5.c("DownloadService", "Ignored REMOVE_DOWNLOAD: Missing content_id extra");
                break;
                break;
            default:
                op5.c("DownloadService", "Ignored unrecognized action: " + action);
                break;
        }
        int i3 = blb.a;
        this.i = false;
        throw null;
    }

    @Override
    public void onTaskRemoved(Intent intent) {
        this.h = true;
    }
}
