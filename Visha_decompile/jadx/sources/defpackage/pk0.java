package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.IBinder;
import com.transsion.btdownload.activiy.TorrentDownloadActivity;
import com.transsion.btdownload.service.TorrentService;
import java.util.List;
import org.proninyaroslav.libretorrent.core.model.TorrentEngineListener;
import org.proninyaroslav.libretorrent.core.model.data.Priority;
import org.proninyaroslav.libretorrent.core.model.data.metainfo.TorrentMetaInfo;
import org.proninyaroslav.libretorrent.core.model.session.TorrentDownload;

public class pk0 {
    public static volatile pk0 d;
    public TorrentService.c a;
    public final a b = new a();
    public TorrentService.b c;

    public class a implements ServiceConnection {
        public b b;

        public a() {
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            pk0.this.c = (TorrentService.b) iBinder;
            b bVar = this.b;
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            pk0.this.c = null;
        }
    }

    public interface b {
        void a();
    }

    public static pk0 f() {
        if (d == null) {
            synchronized (pk0.class) {
                try {
                    if (d == null) {
                        d = new pk0();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    public void c(Context context, final Uri uri, final gu1 gu1Var) {
        TorrentService.b bVar = this.c;
        if (bVar != null) {
            this.a = bVar.c(uri, gu1Var);
            return;
        }
        n(context);
        this.b.b = new b() {
            @Override
            public final void a() {
                this.a.m(uri, gu1Var);
            }
        };
    }

    public void d(TorrentEngineListener torrentEngineListener) {
        TorrentService.b bVar = this.c;
        if (bVar != null) {
            bVar.b(torrentEngineListener);
        }
    }

    public void e(List list, boolean z) {
        this.c.d(list, z);
    }

    public List g() {
        return this.c.e();
    }

    public List h() {
        TorrentService.b bVar = this.c;
        if (bVar != null) {
            return bVar.f();
        }
        return null;
    }

    public TorrentMetaInfo i(String str) {
        return this.c.g(str);
    }

    public TorrentDownload j(String str) {
        return this.c.h(str);
    }

    public void k(Context context) {
        f5.c(new Intent(context, (Class<?>) TorrentDownloadActivity.class), context);
    }

    public boolean l() {
        TorrentService.b bVar = this.c;
        if (bVar != null) {
            return bVar.i();
        }
        return false;
    }

    public final void m(Uri uri, gu1 gu1Var) {
        this.a = this.c.c(uri, gu1Var);
    }

    public void n(Context context) {
        context.bindService(new Intent(context, (Class<?>) TorrentService.class), this.b, 1);
    }

    public void o(String str) {
        this.c.j(str);
    }

    public void p(String str, Priority[] priorityArr) {
        this.c.k(str, priorityArr);
    }

    public void q() {
        TorrentService.c cVar = this.a;
        if (cVar != null) {
            cVar.cancel(true);
        }
        TorrentService.b bVar = this.c;
        if (bVar != null) {
            bVar.l();
        }
    }

    public void r(TorrentEngineListener torrentEngineListener) {
        TorrentService.b bVar = this.c;
        if (bVar != null) {
            bVar.b(torrentEngineListener);
        }
    }

    public boolean s() {
        return this.c.m();
    }
}
