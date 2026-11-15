package com.transsion.btdownload.service;

import android.app.Service;
import android.content.Intent;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.IBinder;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.util.Pair;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.btdownload.ui.DownloadableFileItem;
import com.transsion.sniffer_load.sniffservice.SniffDownloadHelper;
import defpackage.av3;
import defpackage.gd1;
import defpackage.gu1;
import defpackage.hb0;
import defpackage.hb1;
import defpackage.k29;
import defpackage.se;
import defpackage.xm9;
import defpackage.yx2;
import defpackage.zd0;
import defpackage.zf1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.proninyaroslav.libretorrent.core.RepositoryHelper;
import org.proninyaroslav.libretorrent.core.exception.DecodeException;
import org.proninyaroslav.libretorrent.core.exception.FreeSpaceException;
import org.proninyaroslav.libretorrent.core.exception.TorrentAlreadyExistsException;
import org.proninyaroslav.libretorrent.core.exception.UnknownUriException;
import org.proninyaroslav.libretorrent.core.model.AddTorrentMutableParams;
import org.proninyaroslav.libretorrent.core.model.AddTorrentParams;
import org.proninyaroslav.libretorrent.core.model.TorrentEngine;
import org.proninyaroslav.libretorrent.core.model.TorrentEngineListener;
import org.proninyaroslav.libretorrent.core.model.TorrentInfoProvider;
import org.proninyaroslav.libretorrent.core.model.data.MagnetInfo;
import org.proninyaroslav.libretorrent.core.model.data.Priority;
import org.proninyaroslav.libretorrent.core.model.data.metainfo.BencodeFileItem;
import org.proninyaroslav.libretorrent.core.model.data.metainfo.TorrentMetaInfo;
import org.proninyaroslav.libretorrent.core.model.filetree.BencodeFileTree;
import org.proninyaroslav.libretorrent.core.model.session.TorrentDownload;
import org.proninyaroslav.libretorrent.core.settings.SettingsRepository;
import org.proninyaroslav.libretorrent.core.system.FileSystemFacade;
import org.proninyaroslav.libretorrent.core.system.SystemFacadeHelper;
import org.proninyaroslav.libretorrent.core.utils.BencodeFileTreeUtils;

public class TorrentService extends Service {
    public TorrentEngine d;
    public SettingsRepository e;
    public PowerManager.WakeLock f;
    public TorrentInfoProvider j;
    public b k;
    public FileSystemFacade l;
    public AddTorrentMutableParams b = new AddTorrentMutableParams();
    public AtomicBoolean c = new AtomicBoolean();
    public gd1 g = new gd1();
    public AtomicBoolean h = new AtomicBoolean(false);
    public zd0 i = zd0.p0(Boolean.FALSE);
    public final TorrentEngineListener m = new a();

    public class a extends TorrentEngineListener {

        public class C0205a implements MediaScannerConnection.MediaScannerConnectionClient {
            public C0205a() {
            }

            @Override
            public void onMediaScannerConnected() {
            }

            @Override
            public void onScanCompleted(String str, Uri uri) {
            }
        }

        public a() {
        }

        @Override
        public void onFileComplete(String str) {
            MediaScannerConnection.scanFile(se.a(), new String[]{str}, new String[]{av3.o(str)}, new C0205a());
        }

        @Override
        public void onMagnetLoaded(String str, byte[] bArr) {
            super.onMagnetLoaded(str, bArr);
        }

        @Override
        public void onSessionStopped() {
            Log.i("visha_TorrentService", "Session stopped");
            TorrentService.this.q();
        }

        @Override
        public void onTorrentAdded(String str) {
            super.onTorrentAdded(str);
        }

        @Override
        public void onTorrentPaused(String str) {
            super.onTorrentPaused(str);
        }

        @Override
        public void onTorrentResumed(String str) {
            super.onTorrentResumed(str);
        }
    }

    public class b extends Binder {
        public gu1 b;

        public b() {
        }

        public void b(TorrentEngineListener torrentEngineListener) {
            TorrentService.this.d.C(torrentEngineListener);
        }

        public c c(Uri uri, gu1 gu1Var) {
            this.b = gu1Var;
            TorrentService torrentService = TorrentService.this;
            c cVar = torrentService.new c(torrentService.d);
            cVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, uri);
            return cVar;
        }

        public void d(List list, boolean z) {
            TorrentService.this.d.M(list, z);
        }

        public List e() {
            return TorrentService.this.b.a();
        }

        public List f() {
            return TorrentService.this.d.t0();
        }

        public TorrentMetaInfo g(String str) {
            return TorrentService.this.d.X(str);
        }

        public TorrentDownload h(String str) {
            return TorrentService.this.d.V(str);
        }

        public boolean i() {
            return TorrentService.this.d.c0();
        }

        public void j(String str) {
            TorrentService.this.d.x0(str);
        }

        public void k(String str, Priority[] priorityArr) {
            TorrentService.this.d.z0(str, priorityArr);
        }

        public void l() {
            this.b = null;
        }

        public boolean m() {
            Log.i("visha_TorrentService", "startDownload begin");
            return TorrentService.this.f();
        }

        public final void n(AddTorrentMutableParams.Status status) {
            TorrentService.this.b.s(status);
            gu1 gu1Var = this.b;
            if (gu1Var != null) {
                gu1Var.a(status);
            }
        }
    }

    public class c extends AsyncTask {
        public TorrentEngine a;

        public c(TorrentEngine torrentEngine) {
            this.a = torrentEngine;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Throwable doInBackground(Uri... uriArr) {
            MagnetInfo magnetInfo;
            Uri uri = uriArr[0];
            try {
                String scheme = uri.getScheme();
                if (scheme.hashCode() != -1081630870 || !scheme.equals(SniffDownloadHelper.MAGNET_PREFIX)) {
                    throw new IllegalArgumentException("Invalid scheme");
                }
                TorrentService.this.b.r(uri.toString());
                TorrentService.this.b.o(true);
                Pair pairP = TorrentService.this.d.P(uri.toString());
                if (pairP != null && (magnetInfo = (MagnetInfo) pairP.first) != null && !isCancelled()) {
                    TorrentService.this.b.p(new TorrentMetaInfo(magnetInfo.getName(), magnetInfo.getSha1hash()));
                    TorrentService.this.b.q(magnetInfo.getName());
                    if (TorrentService.this.d.V(magnetInfo.getSha1hash()) != null) {
                        TorrentService.this.k.n(AddTorrentMutableParams.Status.TASK_EXIST);
                        return null;
                    }
                    ((xm9) pairP.second).p(new zf1() {
                        @Override
                        public final void accept(Object obj) {
                            this.b.d((TorrentMetaInfo) obj);
                        }
                    }, new zf1() {
                        @Override
                        public final void accept(Object obj) {
                            this.b.e((Throwable) obj);
                        }
                    });
                }
                return null;
            } catch (Throwable th) {
                Log.e("visha_TorrentService", "parse magnet error:" + th.getMessage());
                return th;
            }
        }

        public final void d(TorrentMetaInfo torrentMetaInfo) {
            TorrentService.this.b.p(torrentMetaInfo);
            TorrentService.this.k();
            TorrentService.this.l();
            TorrentService.this.k.n(AddTorrentMutableParams.Status.FETCHING_MAGNET_COMPLETED);
        }

        public final void e(Throwable th) {
            Log.e("visha_TorrentService", "error:" + th.getMessage());
            TorrentService.this.k.n(AddTorrentMutableParams.Status.ERROR);
        }

        @Override
        public void onPostExecute(Throwable th) {
        }

        @Override
        public void onPreExecute() {
        }
    }

    public boolean f() throws FreeSpaceException {
        TorrentMetaInfo torrentMetaInfoC = this.b.c();
        if (torrentMetaInfoC == null) {
            return false;
        }
        boolean zI = this.b.i();
        String strF = this.b.f();
        if (strF == null) {
            return false;
        }
        if (!yx2.j.exists()) {
            yx2.j.mkdirs();
        }
        Uri uriFromFile = Uri.fromFile(yx2.j);
        if (uriFromFile == null) {
            return false;
        }
        String strE = this.b.e();
        if (TextUtils.isEmpty(strE)) {
            return false;
        }
        ArrayList arrayListA = this.b.a();
        int size = arrayListA.size();
        Priority[] priorityArr = new Priority[size];
        long j = 0;
        for (int i = 0; i < size; i++) {
            DownloadableFileItem downloadableFileItem = (DownloadableFileItem) arrayListA.get(i);
            if (downloadableFileItem.selected) {
                j += ((DownloadableFileItem) arrayListA.get(i)).size;
                priorityArr[i] = Priority.DEFAULT;
                hb0.markTrackSingle("dl_brower_rp_bt_add", "video_url", torrentMetaInfoC.sha1Hash + "_" + downloadableFileItem.index);
            } else {
                priorityArr[i] = Priority.IGNORE;
            }
        }
        if (!this.b.j() && !g(uriFromFile, j)) {
            throw new FreeSpaceException();
        }
        o(new AddTorrentParams(strF, zI, torrentMetaInfoC.sha1Hash, strE, priorityArr, uriFromFile, this.b.k(), !this.b.l(), new ArrayList(), this.b.h()));
        return true;
    }

    public final boolean g(Uri uri, long j) {
        long jA = this.l.a(uri);
        return jA == -1 || jA >= j;
    }

    public final int h(String str) {
        str.hashCode();
        switch (str) {
            case "com.transsion.magicshow.TorrentService.ACTION_RESTART_FOREGROUND_NOTIFICATION":
                return 1;
            case "com.transsion.magicshow.NOTIFY_ACTION_SHUTDOWN_APP":
            case "com.transsion.magicshow.TorrentService.ACTION_SHUTDOWN":
                n();
                return 2;
            case "com.transsion.magicshow.NOTIFY_ACTION_RESUME_ALL":
                this.d.C0();
            case "com.transsion.magicshow.NOTIFY_ACTION_ADD_TORRENT":
                return 1;
            case "com.transsion.magicshow.NOTIFY_ACTION_PAUSE_ALL":
                this.d.w0();
                return 1;
            case "com.transsion.magicshow.NOTIFY_ACTION_PAUSE_RESUME_ALL":
                boolean zBooleanValue = ((Boolean) this.i.q0()).booleanValue();
                if (zBooleanValue) {
                    this.d.C0();
                } else {
                    this.d.w0();
                }
                this.i.onNext(Boolean.valueOf(!zBooleanValue));
                return 1;
            default:
                return -1;
        }
    }

    public final void i() {
        Log.i("visha_TorrentService", "Start visha_TorrentService");
        m(this.e.K());
        this.d.N();
        this.d.C(this.m);
        this.l = SystemFacadeHelper.a(getApplication());
    }

    public final void j(AddTorrentParams addTorrentParams) {
        try {
            this.d.I(addTorrentParams, false);
        } catch (IOException e) {
            Log.e("visha_TorrentService", "addTorrentSync has exception:" + e.getMessage());
        } catch (DecodeException e2) {
            Log.e("visha_TorrentService", "addTorrentSync has exception:" + e2.getMessage());
        } catch (TorrentAlreadyExistsException e3) {
            Log.e("visha_TorrentService", "addTorrentSync has exception:" + e3.getMessage());
        } catch (UnknownUriException e4) {
            Log.e("visha_TorrentService", "addTorrentSync has exception:" + e4.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void k() {
        ArrayList<BencodeFileItem> arrayList = this.b.c().fileList;
        if (arrayList.isEmpty()) {
            return;
        }
        Pair pairA = BencodeFileTreeUtils.a(arrayList);
        this.b.n((BencodeFileTree) pairA.first);
        this.b.t((BencodeFileTree[]) pairA.second);
        if (this.b.d() == null || this.b.d().size() == 0) {
            this.b.b().select(true, false);
            return;
        }
        int i = 0;
        while (i < arrayList.size()) {
            BencodeFileTree bencodeFileTree = this.b.g()[i];
            if (bencodeFileTree != null) {
                bencodeFileTree.select((i >= this.b.d().size() ? Priority.IGNORE : (Priority) this.b.d().get(i)) != Priority.IGNORE, false);
            }
            i++;
        }
    }

    public void l() {
        BencodeFileTree[] bencodeFileTreeArrG = this.b.g();
        ArrayList arrayList = new ArrayList();
        if (bencodeFileTreeArrG != null) {
            for (BencodeFileTree bencodeFileTree : bencodeFileTreeArrG) {
                arrayList.add(new DownloadableFileItem(bencodeFileTree));
            }
        }
        this.b.m(arrayList);
    }

    public final void m(boolean z) {
        if (z) {
            if (this.f == null) {
                this.f = ((PowerManager) getSystemService("power")).newWakeLock(1, "visha_TorrentService");
            }
            if (this.f.isHeld()) {
                return;
            }
            this.f.acquire();
            return;
        }
        PowerManager.WakeLock wakeLock = this.f;
        if (wakeLock != null && wakeLock.isHeld()) {
            this.f.release();
        }
    }

    public final void n() {
        this.g.b(hb1.d(new Runnable() {
            @Override
            public final void run() {
                this.b.p();
            }
        }).j(k29.a()).f());
    }

    public void o(final AddTorrentParams addTorrentParams) {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                this.b.j(addTorrentParams);
            }
        });
    }

    @Override
    public IBinder onBind(Intent intent) {
        return this.k;
    }

    @Override
    public void onCreate() {
        this.e = RepositoryHelper.a(getApplicationContext());
        this.d = TorrentEngine.T(getApplicationContext());
        i();
        this.c.compareAndSet(false, true);
        this.k = new b();
        this.j = TorrentInfoProvider.a(getApplicationContext());
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        Log.i("visha_TorrentService", "Stop visha_TorrentService");
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        String action = intent != null ? intent.getAction() : null;
        if (action != null) {
            return h(action);
        }
        return 1;
    }

    public final void p() {
        this.h.set(true);
        this.d.O();
    }

    public final void q() {
        this.g.d();
        this.d.A0(this.m);
        m(false);
        this.c.set(false);
        stopForeground(true);
        stopSelf();
    }
}
