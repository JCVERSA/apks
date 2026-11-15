package org.proninyaroslav.libretorrent.core.model;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import androidx.core.util.Pair;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.bt_download.R;
import defpackage.d5;
import defpackage.gd1;
import defpackage.hb0;
import defpackage.hb1;
import defpackage.jn9;
import defpackage.k29;
import defpackage.ksa;
import defpackage.mc7;
import defpackage.t14;
import defpackage.vb;
import defpackage.xm9;
import defpackage.zf1;
import defpackage.zm9;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.filefilter.FileFilterUtils;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.proninyaroslav.libretorrent.core.RepositoryHelper;
import org.proninyaroslav.libretorrent.core.TorrentFileObserver;
import org.proninyaroslav.libretorrent.core.exception.DecodeException;
import org.proninyaroslav.libretorrent.core.exception.FreeSpaceException;
import org.proninyaroslav.libretorrent.core.exception.TorrentAlreadyExistsException;
import org.proninyaroslav.libretorrent.core.exception.UnknownUriException;
import org.proninyaroslav.libretorrent.core.logger.LogEntry;
import org.proninyaroslav.libretorrent.core.logger.Logger;
import org.proninyaroslav.libretorrent.core.model.data.MagnetInfo;
import org.proninyaroslav.libretorrent.core.model.data.Priority;
import org.proninyaroslav.libretorrent.core.model.data.TorrentInfo;
import org.proninyaroslav.libretorrent.core.model.data.entity.Torrent;
import org.proninyaroslav.libretorrent.core.model.data.metainfo.TorrentMetaInfo;
import org.proninyaroslav.libretorrent.core.model.session.TorrentDownload;
import org.proninyaroslav.libretorrent.core.model.session.TorrentSession;
import org.proninyaroslav.libretorrent.core.model.session.TorrentSessionImpl;
import org.proninyaroslav.libretorrent.core.model.stream.TorrentInputStream;
import org.proninyaroslav.libretorrent.core.model.stream.TorrentStream;
import org.proninyaroslav.libretorrent.core.model.stream.TorrentStreamServer;
import org.proninyaroslav.libretorrent.core.settings.SessionSettings;
import org.proninyaroslav.libretorrent.core.settings.SettingsRepository;
import org.proninyaroslav.libretorrent.core.storage.TorrentRepository;
import org.proninyaroslav.libretorrent.core.system.FileDescriptorWrapper;
import org.proninyaroslav.libretorrent.core.system.FileSystemFacade;
import org.proninyaroslav.libretorrent.core.system.SystemFacadeHelper;
import org.proninyaroslav.libretorrent.core.utils.Utils;

public class TorrentEngine {
    public static final String m = "TorrentEngine";
    public static volatile TorrentEngine n;
    public Context a;
    public TorrentSession b;
    public TorrentStreamServer c;
    public TorrentRepository d;
    public SettingsRepository e;
    public TorrentFileObserver g;
    public FileSystemFacade h;
    public DownloadsCompletedListener i;
    public final TorrentEngineListener l;
    public gd1 f = new gd1();
    public ExecutorService j = Executors.newSingleThreadExecutor();
    public SessionErrorFilter k = new SessionErrorFilter();

    class AnonymousClass1 extends TorrentEngineListener {
        public final t14 a;

        @Override
        public void onSessionStarted() {
            if (this.a.isCancelled()) {
                return;
            }
            this.a.onNext(Boolean.TRUE);
        }

        @Override
        public void onSessionStopped() {
            if (this.a.isCancelled()) {
                return;
            }
            this.a.onNext(Boolean.FALSE);
        }
    }

    class AnonymousClass3 extends TorrentEngineListener {
        public final String a;
        public final t14 b;
        public final TorrentEngine c;

        @Override
        public void onTorrentMetadataLoaded(String str, Exception exc) {
            if (!this.a.equals(str) || this.b.isCancelled()) {
                return;
            }
            if (exc != null) {
                this.b.onError(exc);
                return;
            }
            TorrentMetaInfo torrentMetaInfoX = this.c.X(this.a);
            if (torrentMetaInfoX == null) {
                this.b.onError(new NullPointerException());
            } else {
                this.b.onNext(torrentMetaInfoX);
            }
        }
    }

    public class AnonymousClass4 extends TorrentFileObserver {
        public final String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(String str, String str2) {
            super(str);
            this.a = str2;
        }

        public final void b(Uri uri) {
            if (TorrentEngine.this.e.m()) {
                try {
                    TorrentEngine.this.h.d(uri);
                } catch (IOException | UnknownUriException e) {
                    Log.w(TorrentEngine.m, "[Watch] Unable to delete file: " + Log.getStackTraceString(e));
                }
            }
        }

        @Override
        public void onEvent(int i, String str) {
            if (str == null) {
                return;
            }
            File file = new File(this.a, str);
            if (file.exists() && !file.isDirectory() && file.getName().endsWith(".torrent")) {
                final Uri uriFromFile = Uri.fromFile(file);
                TorrentEngine.this.f.b(TorrentEngine.this.F(uriFromFile).j(k29.c()).g(new d5() {
                    @Override
                    public final void run() {
                        this.a.b(uriFromFile);
                    }
                }));
            }
        }
    }

    public class AnonymousClass5 extends TorrentEngineListener {
        public AnonymousClass5() {
        }

        public static void A(String str, Torrent torrent) {
        }

        public static void B(String str, Throwable th) {
            Log.e(TorrentEngine.m, "Getting torrent " + str + " error: " + Log.getStackTraceString(th));
        }

        public static void p(String str, Throwable th) {
            Log.e(TorrentEngine.m, "Getting torrent " + str + " error: " + Log.getStackTraceString(th));
        }

        public static void q(String str, Torrent torrent) {
        }

        public static void t(String str, Throwable th) {
            Log.e(TorrentEngine.m, "Getting torrent " + str + " error: " + Log.getStackTraceString(th));
        }

        public static void w(String str, Throwable th) {
            Log.e(TorrentEngine.m, "Getting torrent " + str + " error: " + Log.getStackTraceString(th));
        }

        public static void y(String str, Torrent torrent) {
        }

        public static void z(String str, Throwable th) {
            Log.e(TorrentEngine.m, "Getting torrent " + str + " error: " + Log.getStackTraceString(th));
        }

        public final void o(int i) {
            Toast.makeText(TorrentEngine.this.a, i > 0 ? TorrentEngine.this.a.getString(R.string.ip_filter_add_success) : TorrentEngine.this.a.getString(R.string.ip_filter_add_error, Integer.valueOf(i)), 1).show();
        }

        @Override
        public void onIpFilterParsed(final int i) {
            TorrentEngine.this.f.b(hb1.d(new Runnable() {
                @Override
                public final void run() {
                    this.b.o(i);
                }
            }).j(vb.a()).f());
        }

        @Override
        public void onNatError(String str) {
            Log.e(TorrentEngine.m, "NAT error: " + str);
        }

        @Override
        public void onRestoreSessionError(final String str) {
            TorrentEngine.this.f.b(TorrentEngine.this.d.j(str).r(k29.c()).m(vb.a()).p(new zf1() {
                @Override
                public final void accept(Object obj) {
                    TorrentEngine.AnonymousClass5.q(str, (Torrent) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    TorrentEngine.AnonymousClass5.p(str, (Throwable) obj);
                }
            }));
        }

        @Override
        public void onSessionError(String str) {
            TorrentEngine.this.k.a(str);
        }

        @Override
        public void onSessionStarted() {
            TorrentEngine.this.a0();
        }

        @Override
        public void onTorrentAdded(final String str) {
            if (TorrentEngine.this.e.a0()) {
                TorrentEngine torrentEngine = TorrentEngine.this;
                torrentEngine.E0(torrentEngine.d.i(str), Uri.parse(TorrentEngine.this.e.b()));
            }
            if (TorrentEngine.this.J()) {
                TorrentEngine.this.f.b(hb1.d(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.r(str);
                    }
                }).j(k29.c()).f());
            }
        }

        @Override
        public void onTorrentError(String str, Exception exc) {
            super.onTorrentError(str, exc);
            hb0.markTrackTwo("dl_manager_downloading_bt_fail", "video_url", str, NotificationCompat.CATEGORY_MESSAGE, exc == null ? "unknown" : exc.getMessage());
        }

        @Override
        public void onTorrentFinished(final String str) {
            TaskExecutor.c(new Runnable() {
                @Override
                public void run() {
                    Priority[] filePriorities = TorrentEngine.this.V(str).getFilePriorities();
                    if (filePriorities != null) {
                        for (int i = 0; i < filePriorities.length; i++) {
                            if (!Priority.IGNORE.equals(filePriorities[i])) {
                                hb0.markTrackSingle("dl_brower_rp_bt_finish", "video_url", str + "_" + i);
                            }
                        }
                    }
                }
            });
            TorrentEngine.this.f.b(TorrentEngine.this.d.j(str).r(k29.c()).h(new ksa()).h(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.s(str, (Torrent) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    TorrentEngine.AnonymousClass5.t(str, (Throwable) obj);
                }
            }));
        }

        @Override
        public void onTorrentLoaded(final String str) {
            if (TorrentEngine.this.J()) {
                TorrentEngine.this.f.b(hb1.d(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.u(str);
                    }
                }).j(k29.c()).f());
            }
        }

        @Override
        public void onTorrentMetadataLoaded(final String str, final Exception exc) {
            if (exc != null) {
                Log.e(TorrentEngine.m, "Load metadata error: ");
                Log.e(TorrentEngine.m, Log.getStackTraceString(exc));
            }
            TorrentEngine.this.f.b(TorrentEngine.this.d.j(str).r(k29.c()).h(new ksa()).h(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.v(exc, (Torrent) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    TorrentEngine.AnonymousClass5.w(str, (Throwable) obj);
                }
            }));
            if (TorrentEngine.this.J()) {
                TorrentEngine.this.f.b(hb1.d(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.x(str);
                    }
                }).j(k29.c()).f());
            }
        }

        @Override
        public void onTorrentMoved(final String str, boolean z) {
            TorrentEngine.this.f.b(TorrentEngine.this.d.j(str).r(k29.c()).m(vb.a()).p(new zf1() {
                @Override
                public final void accept(Object obj) {
                    TorrentEngine.AnonymousClass5.y(str, (Torrent) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    TorrentEngine.AnonymousClass5.z(str, (Throwable) obj);
                }
            }));
        }

        @Override
        public void onTorrentMoving(final String str) {
            TorrentEngine.this.f.b(TorrentEngine.this.d.j(str).r(k29.c()).m(vb.a()).p(new zf1() {
                @Override
                public final void accept(Object obj) {
                    TorrentEngine.AnonymousClass5.A(str, (Torrent) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    TorrentEngine.AnonymousClass5.B(str, (Throwable) obj);
                }
            }));
        }

        public final void r(String str) {
            TorrentDownload task;
            if (TorrentEngine.this.d0() && (task = TorrentEngine.this.b.getTask(str)) != null) {
                task.pause();
            }
        }

        public final void s(String str, Torrent torrent) {
            if (torrent.visibility != 1) {
                TorrentEngine.this.v0(torrent);
            }
            if (TorrentEngine.this.e.s()) {
                String string = torrent.downloadPath.toString();
                String strN = TorrentEngine.this.e.n();
                if (string.equals(strN)) {
                    return;
                }
                TorrentEngine.this.H0(str, Uri.parse(strN));
            }
        }

        public final void u(String str) {
            TorrentDownload task;
            if (TorrentEngine.this.d0() && (task = TorrentEngine.this.b.getTask(str)) != null) {
                task.pause();
            }
        }

        public final void v(Exception exc, Torrent torrent) {
            if (exc != null) {
                boolean z = exc instanceof FreeSpaceException;
            } else if (TorrentEngine.this.e.a0()) {
                TorrentEngine torrentEngine = TorrentEngine.this;
                torrentEngine.E0(torrent, Uri.parse(torrentEngine.e.b()));
            }
        }

        public final void x(String str) {
            TorrentDownload task;
            if (TorrentEngine.this.d0() && (task = TorrentEngine.this.b.getTask(str)) != null) {
                task.pause();
            }
        }
    }

    public TorrentEngine(Context context) {
        AnonymousClass5 anonymousClass5 = new AnonymousClass5();
        this.l = anonymousClass5;
        this.a = context;
        this.d = RepositoryHelper.c(context);
        this.h = SystemFacadeHelper.a(context);
        this.e = RepositoryHelper.a(context);
        this.i = new DownloadsCompletedListener(this);
        TorrentSessionImpl torrentSessionImpl = new TorrentSessionImpl(this.d, this.h, SystemFacadeHelper.b(context));
        this.b = torrentSessionImpl;
        torrentSessionImpl.setSettings(this.e.d0(), false);
        this.b.addListener(anonymousClass5);
    }

    public static TorrentEngine T(Context context) {
        if (n == null) {
            synchronized (TorrentEngine.class) {
                try {
                    if (n == null) {
                        n = new TorrentEngine(context);
                        LogUtils.v(m, "==>初始化TorrentEngine");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return n;
    }

    public void A0(TorrentEngineListener torrentEngineListener) {
        this.b.removeListener(torrentEngineListener);
    }

    public void B0() {
        this.f.b(hb1.d(new Runnable() {
            @Override
            public final void run() {
                this.b.o0();
            }
        }).j(k29.c()).f());
    }

    public void C(TorrentEngineListener torrentEngineListener) {
        this.b.addListener(torrentEngineListener);
    }

    public void C0() {
        this.f.b(hb1.d(new Runnable() {
            @Override
            public final void run() {
                this.b.p0();
            }
        }).j(k29.c()).f());
    }

    public void D(Uri uri) {
        E(uri, null);
    }

    public final boolean D0(String str, Uri uri, String str2) {
        byte[] bArrR = R(str);
        if (bArrR == null) {
            return false;
        }
        if (str2 != null) {
            str = str2;
        }
        Uri uriM = this.h.m(uri, str, true);
        if (uriM == null) {
            return false;
        }
        this.h.f(bArrR, uriM);
        return true;
    }

    public void E(Uri uri, Uri uri2) {
        this.f.b(G(uri, uri2).j(k29.c()).f());
    }

    public final void E0(Torrent torrent, Uri uri) {
        String str = torrent.name + ".torrent";
        try {
            if (D0(torrent.id, uri, str)) {
                return;
            }
            Log.w(m, "Could not save torrent file + " + str);
        } catch (Exception e) {
            Log.w(m, "Could not save torrent file + " + str + ": ", e);
        }
    }

    public hb1 F(Uri uri) {
        return G(uri, null);
    }

    public final void F0(String str) {
        File file = new File(str);
        if (file.exists()) {
            for (File file2 : FileUtils.listFiles(file, FileFilterUtils.suffixFileFilter(".torrent"), (IOFileFilter) null)) {
                if (file2.exists()) {
                    D(Uri.fromFile(file2));
                }
            }
        }
    }

    public hb1 G(final Uri uri, final Uri uri2) {
        return hb1.d(new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.e0(uri, uri2);
            }
        });
    }

    public final void G0(zm9 zm9Var, byte[] bArr) {
        try {
            TorrentMetaInfo torrentMetaInfo = new TorrentMetaInfo(bArr);
            if (zm9Var.isDisposed()) {
                return;
            }
            zm9Var.onSuccess(torrentMetaInfo);
        } catch (DecodeException e) {
            Log.e(m, Log.getStackTraceString(e));
            if (zm9Var.isDisposed()) {
                return;
            }
            zm9Var.onError(e);
        }
    }

    public final Torrent H(Uri uri, TorrentMetaInfo torrentMetaInfo, Uri uri2) throws FreeSpaceException {
        Priority[] priorityArr = new Priority[torrentMetaInfo.fileCount];
        Arrays.fill(priorityArr, Priority.DEFAULT);
        if (uri2 == null) {
            uri2 = Uri.parse(this.e.U());
        }
        AddTorrentParams addTorrentParams = new AddTorrentParams(uri.toString(), false, torrentMetaInfo.sha1Hash, torrentMetaInfo.torrentName, priorityArr, uri2, false, false, new ArrayList(), false);
        if (this.h.a(uri2) >= torrentMetaInfo.torrentSize) {
            return I(addTorrentParams, false);
        }
        throw new FreeSpaceException();
    }

    public void H0(final String str, final Uri uri) {
        this.f.b(hb1.d(new Runnable() {
            @Override
            public final void run() {
                this.b.q0(str, uri);
            }
        }).j(k29.c()).f());
    }

    public Torrent I(AddTorrentParams addTorrentParams, boolean z) {
        if (d0()) {
            return this.b.addTorrent(addTorrentParams, z);
        }
        return null;
    }

    public final void I0(int i, int i2) {
        if (i == -1 || i2 == -1) {
            return;
        }
        SessionSettings settings = this.b.getSettings();
        settings.j = i;
        settings.k = i2;
        this.b.setSettings(settings, false);
    }

    public final boolean J() {
        return false;
    }

    public final void J0() {
        SessionSettings settings = this.b.getSettings();
        settings.x = SessionSettings.ProxyType.fromValue(this.e.c());
        settings.y = this.e.C();
        settings.z = this.e.v();
        settings.A = this.e.i();
        settings.B = this.e.F();
        settings.C = this.e.g();
        settings.D = this.e.y();
        this.b.setSettings(settings);
    }

    public final void K() {
        try {
            this.h.g();
        } catch (Exception e) {
            Log.e(m, "Error during setup of temp directory: ", e);
        }
    }

    public final void K0(boolean z) {
        SessionSettings settings = this.b.getSettings();
        settings.N = z;
        if (!z) {
            int iG = this.e.G();
            int iB = this.e.B();
            if (iG != -1 && iB != -1) {
                settings.j = iG;
                settings.k = iB;
            }
        }
        this.b.setSettings(settings, false);
    }

    public final xm9 L(final String str) {
        return xm9.d(new jn9() {
            @Override
            public final void subscribe(zm9 zm9Var) {
                this.a.g0(str, zm9Var);
            }
        });
    }

    public final void L0() {
        N0();
        TorrentStreamServer torrentStreamServer = new TorrentStreamServer(this.e.f(), this.e.p());
        this.c = torrentStreamServer;
        try {
            torrentStreamServer.w(this.a);
        } catch (IOException e) {
            Log.e(m, Log.getStackTraceString(e));
        }
    }

    public void M(List list, final boolean z) {
        this.f.b(mc7.E(list).M(k29.c()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.h0(z, (String) obj);
            }
        }));
    }

    public final void M0() {
        Uri uri = Uri.parse(this.e.J());
        if (!Utils.f(uri)) {
            throw new IllegalArgumentException("SAF is not supported:" + uri);
        }
        String path = uri.getPath();
        F0(path);
        TorrentFileObserver torrentFileObserverU0 = u0(path);
        this.g = torrentFileObserverU0;
        torrentFileObserverU0.startWatching();
    }

    public void N() {
        if (d0()) {
            return;
        }
        P0();
        Q0();
        this.f.b(this.e.Y().n(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.b0((String) obj);
            }
        }));
        this.f.b(this.i.g().h(new d5() {
            @Override
            public final void run() {
                this.a.Z();
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.i0((Throwable) obj);
            }
        }));
        this.f.b(this.b.getLogger().observeDataSetChanged().Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.j0((Logger.DataSetChange) obj);
            }
        }));
        this.b.start();
    }

    public final void N0() {
        TorrentStreamServer torrentStreamServer = this.c;
        if (torrentStreamServer != null) {
            torrentStreamServer.t();
        }
        this.c = null;
    }

    public void O() {
        if (d0()) {
            this.f.d();
            O0();
            N0();
            this.b.requestStop();
            K();
        }
    }

    public final void O0() {
        TorrentFileObserver torrentFileObserver = this.g;
        if (torrentFileObserver == null) {
            return;
        }
        torrentFileObserver.stopWatching();
        this.g = null;
    }

    public Pair P(String str) {
        MagnetInfo magnetInfoFetchMagnet;
        if (d0() && (magnetInfoFetchMagnet = this.b.fetchMagnet(str)) != null) {
            return Pair.create(magnetInfoFetchMagnet, L(magnetInfoFetchMagnet.getSha1hash()));
        }
        return null;
    }

    public final void P0() {
    }

    public void Q() {
    }

    public final void Q0() {
    }

    public byte[] R(String str) {
        TorrentDownload task;
        if (d0() && (task = this.b.getTask(str)) != null) {
            return task.getBencode();
        }
        return null;
    }

    public final SessionSettings.EncryptMode S() {
        return SessionSettings.EncryptMode.fromValue(this.e.a());
    }

    public TorrentStream U(String str, int i) {
        TorrentDownload task;
        if (d0() && (task = this.b.getTask(str)) != null) {
            return task.getStream(i);
        }
        return null;
    }

    public TorrentDownload V(String str) {
        return this.b.getTask(str);
    }

    public TorrentInputStream W(TorrentStream torrentStream) {
        return new TorrentInputStream(this.b, torrentStream);
    }

    public TorrentMetaInfo X(String str) {
        TorrentDownload task;
        if (!d0() || (task = this.b.getTask(str)) == null) {
            return null;
        }
        try {
            return task.getTorrentMetaInfo();
        } catch (DecodeException e) {
            Log.e(m, "Can't decode torrent info: ");
            Log.e(m, Log.getStackTraceString(e));
            return null;
        }
    }

    public final void Y(String str, Throwable th) {
        if (th instanceof TorrentAlreadyExistsException) {
            return;
        }
        Log.e(m, Log.getStackTraceString(th));
        if (th instanceof FileNotFoundException) {
            this.a.getString(R.string.error_file_not_found_add_torrent);
        } else if (th instanceof IOException) {
            this.a.getString(R.string.error_io_add_torrent);
        } else {
            this.a.getString(R.string.error_add_torrent);
        }
    }

    public final void Z() {
        if (this.e.Q()) {
            Q();
        }
    }

    public final void a0() {
        String strV;
        if (this.e.A() && (strV = this.e.V()) != null) {
            this.b.enableIpFilter(Uri.parse(strV));
        }
        if (this.e.N()) {
            M0();
        }
        if (this.e.k()) {
            L0();
        }
        r0();
    }

    public final void b0(String str) {
        if (str.equals(this.a.getString(R.string.pref_key_unmetered_connections_only)) || str.equals(this.a.getString(R.string.pref_key_enable_roaming))) {
            P0();
        } else {
            if (!str.equals(this.a.getString(R.string.pref_key_download_and_upload_only_when_charging)) && !str.equals(this.a.getString(R.string.pref_key_battery_control))) {
                if (str.equals(this.a.getString(R.string.pref_key_custom_battery_control)) || str.equals(this.a.getString(R.string.pref_key_custom_battery_control_value))) {
                    Q0();
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_max_download_speed))) {
                    SessionSettings settings = this.b.getSettings();
                    settings.l = this.e.T();
                    this.b.setSettings(settings);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_max_upload_speed))) {
                    SessionSettings settings2 = this.b.getSettings();
                    settings2.m = this.e.R();
                    this.b.setSettings(settings2);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_max_connections))) {
                    SessionSettings settings3 = this.b.getSettings();
                    int iX = this.e.X();
                    settings3.f = iX;
                    settings3.c = iX;
                    this.b.setSettings(settings3);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_max_connections_per_torrent))) {
                    this.b.setMaxConnectionsPerTorrent(this.e.o());
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_max_uploads_per_torrent))) {
                    this.b.setMaxUploadsPerTorrent(this.e.c0());
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_max_active_downloads))) {
                    SessionSettings settings4 = this.b.getSettings();
                    settings4.a = this.e.l();
                    this.b.setSettings(settings4);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_max_active_uploads))) {
                    SessionSettings settings5 = this.b.getSettings();
                    settings5.b = this.e.e0();
                    this.b.setSettings(settings5);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_max_active_torrents))) {
                    SessionSettings settings6 = this.b.getSettings();
                    settings6.i = this.e.I();
                    this.b.setSettings(settings6);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_enable_dht))) {
                    SessionSettings settings7 = this.b.getSettings();
                    settings7.n = this.e.d();
                    this.b.setSettings(settings7);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_enable_lsd))) {
                    SessionSettings settings8 = this.b.getSettings();
                    settings8.o = this.e.e();
                    this.b.setSettings(settings8);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_enable_utp))) {
                    SessionSettings settings9 = this.b.getSettings();
                    settings9.p = this.e.r();
                    this.b.setSettings(settings9);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_enable_upnp))) {
                    SessionSettings settings10 = this.b.getSettings();
                    settings10.q = this.e.z();
                    this.b.setSettings(settings10);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_enable_natpmp))) {
                    SessionSettings settings11 = this.b.getSettings();
                    settings11.r = this.e.O();
                    this.b.setSettings(settings11);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_enc_mode))) {
                    SessionSettings settings12 = this.b.getSettings();
                    settings12.u = S();
                    this.b.setSettings(settings12);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_enc_in_connections))) {
                    SessionSettings settings13 = this.b.getSettings();
                    SessionSettings.EncryptMode encryptModeS = SessionSettings.EncryptMode.DISABLED;
                    boolean zW = this.e.w();
                    settings13.s = zW;
                    if (zW) {
                        encryptModeS = S();
                    }
                    settings13.u = encryptModeS;
                    this.b.setSettings(settings13);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_enc_out_connections))) {
                    SessionSettings settings14 = this.b.getSettings();
                    SessionSettings.EncryptMode encryptModeS2 = SessionSettings.EncryptMode.DISABLED;
                    boolean zE = this.e.E();
                    settings14.t = zE;
                    if (zE) {
                        encryptModeS2 = S();
                    }
                    settings14.u = encryptModeS2;
                    this.b.setSettings(settings14);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_use_random_port))) {
                    K0(this.e.H());
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_port_range_first)) || str.equals(this.a.getString(R.string.pref_key_port_range_second))) {
                    I0(this.e.G(), this.e.B());
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_enable_ip_filtering))) {
                    if (!this.e.A()) {
                        this.b.disableIpFilter();
                        return;
                    }
                    String strV = this.e.V();
                    if (strV != null) {
                        this.b.enableIpFilter(Uri.parse(strV));
                        return;
                    }
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_ip_filtering_file))) {
                    String strV2 = this.e.V();
                    if (strV2 != null) {
                        this.b.enableIpFilter(Uri.parse(strV2));
                        return;
                    }
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_apply_proxy))) {
                    if (this.e.u()) {
                        this.e.S(false);
                        J0();
                        Toast.makeText(this.a, R.string.proxy_settings_applied, 0).show();
                        return;
                    }
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_auto_manage))) {
                    this.b.setAutoManaged(this.e.W());
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_watch_dir))) {
                    if (this.e.N()) {
                        M0();
                        return;
                    } else {
                        O0();
                        return;
                    }
                }
                if (str.equals(this.a.getString(R.string.pref_key_dir_to_watch))) {
                    if (this.e.N()) {
                        O0();
                        M0();
                        return;
                    }
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_streaming_enable))) {
                    if (this.e.k()) {
                        L0();
                        return;
                    } else {
                        N0();
                        return;
                    }
                }
                if (str.equals(this.a.getString(R.string.pref_key_streaming_port)) || str.equals(this.a.getString(R.string.pref_key_streaming_hostname))) {
                    L0();
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_anonymous_mode))) {
                    SessionSettings settings15 = this.b.getSettings();
                    settings15.E = this.e.M();
                    this.b.setSettings(settings15);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_seeding_outgoing_connections))) {
                    SessionSettings settings16 = this.b.getSettings();
                    settings16.F = this.e.t();
                    this.b.setSettings(settings16);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_enable_logging))) {
                    SessionSettings settings17 = this.b.getSettings();
                    settings17.G = this.e.Z();
                    this.b.setSettings(settings17);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_log_session_filter))) {
                    SessionSettings settings18 = this.b.getSettings();
                    settings18.I = this.e.h();
                    this.b.setSettings(settings18);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_log_dht_filter))) {
                    SessionSettings settings19 = this.b.getSettings();
                    settings19.J = this.e.D();
                    this.b.setSettings(settings19);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_log_peer_filter))) {
                    SessionSettings settings20 = this.b.getSettings();
                    settings20.K = this.e.x();
                    this.b.setSettings(settings20);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_log_portmap_filter))) {
                    SessionSettings settings21 = this.b.getSettings();
                    settings21.L = this.e.P();
                    this.b.setSettings(settings21);
                    return;
                }
                if (str.equals(this.a.getString(R.string.pref_key_log_torrent_filter))) {
                    SessionSettings settings22 = this.b.getSettings();
                    settings22.M = this.e.j();
                    this.b.setSettings(settings22);
                    return;
                } else if (str.equals(this.a.getString(R.string.pref_key_max_log_size))) {
                    SessionSettings settings23 = this.b.getSettings();
                    settings23.H = this.e.L();
                    this.b.setSettings(settings23);
                    return;
                } else if (str.equals(this.a.getString(R.string.pref_key_default_trackers_list))) {
                    this.b.setDefaultTrackersList(this.e.b0().split("\n"));
                    return;
                } else {
                    if (str.equals(this.a.getString(R.string.pref_key_validate_https_trackers))) {
                        SessionSettings settings24 = this.b.getSettings();
                        settings24.P = this.e.q();
                        this.b.setSettings(settings24);
                        return;
                    }
                    return;
                }
            }
            Q0();
        }
        B0();
    }

    public boolean c0() {
        return this.b.hasTaskRunning();
    }

    public boolean d0() {
        return this.b.isRunning();
    }

    public final void e0(Uri uri, Uri uri2) throws Throwable {
        if (!d0()) {
            return;
        }
        TorrentMetaInfo torrentMetaInfo = null;
        try {
            FileDescriptorWrapper fileDescriptorWrapperN = this.h.n(uri);
            try {
                try {
                    FileInputStream fileInputStream = new FileInputStream(fileDescriptorWrapperN.f("r"));
                    try {
                        TorrentMetaInfo torrentMetaInfo2 = new TorrentMetaInfo(fileInputStream);
                        try {
                            try {
                                fileInputStream.close();
                                H(uri, torrentMetaInfo2, uri2);
                                try {
                                    fileDescriptorWrapperN.close();
                                } catch (Exception e) {
                                    e = e;
                                    torrentMetaInfo = torrentMetaInfo2;
                                    Y(torrentMetaInfo == null ? uri.getPath() : torrentMetaInfo.torrentName, e);
                                }
                            } catch (Exception e2) {
                                e = e2;
                                torrentMetaInfo = torrentMetaInfo2;
                                throw new DecodeException(e);
                            }
                        } catch (Throwable th) {
                            th = th;
                            torrentMetaInfo = torrentMetaInfo2;
                            if (fileDescriptorWrapperN != null) {
                                try {
                                    fileDescriptorWrapperN.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    public final void f0(TorrentEngineListener torrentEngineListener) {
        this.b.removeListener(torrentEngineListener);
    }

    public final void g0(final String str, final zm9 zm9Var) {
        final TorrentEngineListener torrentEngineListener = new TorrentEngineListener() {
            @Override
            public void onMagnetLoaded(String str2, byte[] bArr) {
                if (str.equals(str2) && !zm9Var.isDisposed()) {
                    if (bArr == null) {
                        zm9Var.onError(new IOException(new NullPointerException("bencode is null")));
                    } else {
                        TorrentEngine.this.G0(zm9Var, bArr);
                    }
                }
            }
        };
        if (zm9Var.isDisposed()) {
            return;
        }
        byte[] loadedMagnet = this.b.getLoadedMagnet(str);
        if (loadedMagnet != null) {
            G0(zm9Var, loadedMagnet);
        } else {
            this.b.addListener(torrentEngineListener);
            zm9Var.setDisposable(io.reactivex.disposables.a.c(new d5() {
                @Override
                public final void run() {
                    this.a.f0(torrentEngineListener);
                }
            }));
        }
    }

    public final void h0(boolean z, String str) {
        if (d0()) {
            this.b.deleteTorrent(str, z);
        }
    }

    public final void i0(Throwable th) {
        Log.e(m, "Auto stop error: " + Log.getStackTraceString(th));
        Z();
    }

    public final void j0(Logger.DataSetChange dataSetChange) {
        List list;
        if (dataSetChange.b != Logger.DataSetChange.Reason.NEW_ENTRIES || (list = dataSetChange.a) == null) {
            return;
        }
        y0(list);
    }

    public final void k0() {
        if (d0()) {
            this.b.restoreTorrents();
        }
    }

    public final void l0() {
        if (d0()) {
            this.b.pauseAllManually();
        }
    }

    public final void m0(String str) {
        TorrentDownload task = this.b.getTask(str);
        if (task == null) {
            return;
        }
        try {
            if (task.isPaused()) {
                task.resumeManually();
            } else {
                task.pauseManually();
            }
        } catch (Exception unused) {
        }
    }

    public final void n0(String str, Priority[] priorityArr) {
        TorrentDownload task;
        if (d0() && (task = this.b.getTask(str)) != null) {
            task.prioritizeFiles(priorityArr);
        }
    }

    public final void o0() {
        if (d0()) {
            if (J()) {
                this.b.pauseAll();
            } else {
                this.b.resumeAll();
            }
        }
    }

    public final void p0() {
        if (d0()) {
            this.b.resumeAllManually();
        }
    }

    public final void q0(String str, Uri uri) {
        TorrentDownload task;
        if (d0() && (task = this.b.getTask(str)) != null) {
            task.setDownloadPath(uri);
        }
    }

    public final void r0() {
        this.f.b(hb1.d(new Runnable() {
            @Override
            public final void run() {
                this.b.k0();
            }
        }).j(k29.c()).f());
    }

    public final TorrentInfo s0(Torrent torrent) {
        TorrentDownload task = this.b.getTask(torrent.id);
        if (task == null || !task.isValid() || task.isStopped()) {
            return new TorrentInfo(torrent.id, torrent.name, torrent.dateAdded, torrent.error, null);
        }
        TorrentInfo torrentInfo = new TorrentInfo(torrent.id, torrent.name, task.getStateCode(), task.getProgress(), task.getReceivedBytes(), task.getTotalWanted(), task.getDownloadSpeed(), torrent.dateAdded, torrent.error, task.getFilePriorities(), task.getFilesReceivedBytes(), task.getFileSizes());
        torrentInfo.calculateFileCount();
        return torrentInfo;
    }

    public List t0() {
        ArrayList arrayList = new ArrayList();
        for (Torrent torrent : this.d.a()) {
            if (torrent != null) {
                arrayList.add(s0(torrent));
            }
        }
        return arrayList;
    }

    public final TorrentFileObserver u0(String str) {
        return new AnonymousClass4(str, str);
    }

    public final void v0(Torrent torrent) {
        torrent.visibility = 1;
        this.d.c(torrent);
    }

    public void w0() {
        this.f.b(hb1.d(new Runnable() {
            @Override
            public final void run() {
                this.b.l0();
            }
        }).j(k29.c()).f());
    }

    public void x0(final String str) {
        this.f.b(hb1.d(new Runnable() {
            @Override
            public final void run() {
                this.b.m0(str);
            }
        }).j(k29.c()).f());
    }

    public final void y0(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            LogEntry logEntry = (LogEntry) it.next();
            if (logEntry != null) {
                Log.i(m, logEntry.toString());
            }
        }
    }

    public void z0(final String str, final Priority[] priorityArr) {
        this.f.b(hb1.d(new Runnable() {
            @Override
            public final void run() {
                this.b.n0(str, priorityArr);
            }
        }).j(k29.c()).f());
    }
}
