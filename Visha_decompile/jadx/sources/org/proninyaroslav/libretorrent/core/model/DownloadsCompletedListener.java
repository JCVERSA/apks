package org.proninyaroslav.libretorrent.core.model;

import defpackage.d5;
import defpackage.hb1;
import defpackage.lb1;
import defpackage.rb1;
import java.util.ArrayList;
import org.proninyaroslav.libretorrent.core.model.data.TorrentStateCode;

class DownloadsCompletedListener {
    public TorrentEngine a;

    public DownloadsCompletedListener(TorrentEngine torrentEngine) {
        this.a = torrentEngine;
    }

    public static void d(lb1 lb1Var, ArrayList arrayList) {
        if (lb1Var.isDisposed() || !arrayList.isEmpty()) {
            return;
        }
        lb1Var.onComplete();
    }

    public final void e(TorrentEngineListener torrentEngineListener) {
        this.a.A0(torrentEngineListener);
    }

    public final void f(final lb1 lb1Var) {
        final ArrayList arrayList = new ArrayList();
        final Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                DownloadsCompletedListener.d(lb1Var, arrayList);
            }
        };
        final TorrentEngineListener torrentEngineListener = new TorrentEngineListener() {
            @Override
            public void onTorrentFinished(String str) {
                if (arrayList.remove(str)) {
                    runnable.run();
                }
            }

            @Override
            public void onTorrentRemoved(String str) {
                if (arrayList.remove(str)) {
                    runnable.run();
                }
            }

            @Override
            public void onTorrentStateChanged(String str, TorrentStateCode torrentStateCode, TorrentStateCode torrentStateCode2) {
                if (torrentStateCode2 == TorrentStateCode.DOWNLOADING) {
                    arrayList.add(str);
                }
            }
        };
        if (lb1Var.isDisposed()) {
            return;
        }
        this.a.C(torrentEngineListener);
        lb1Var.setDisposable(io.reactivex.disposables.a.c(new d5() {
            @Override
            public final void run() {
                this.a.e(torrentEngineListener);
            }
        }));
    }

    public hb1 g() {
        return hb1.b(new rb1() {
            @Override
            public final void a(lb1 lb1Var) {
                this.a.f(lb1Var);
            }
        });
    }
}
