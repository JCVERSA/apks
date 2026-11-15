package org.proninyaroslav.libretorrent.core.model;

import android.content.Context;
import defpackage.t14;
import defpackage.zf1;
import java.util.concurrent.atomic.AtomicReference;
import org.proninyaroslav.libretorrent.core.RepositoryHelper;
import org.proninyaroslav.libretorrent.core.model.data.SessionStats;
import org.proninyaroslav.libretorrent.core.model.data.TorrentStateCode;
import org.proninyaroslav.libretorrent.core.storage.TagRepository;

public class TorrentInfoProvider {
    public static volatile TorrentInfoProvider c;
    public TorrentEngine a;
    public TagRepository b;

    class AnonymousClass1 extends TorrentEngineListener {
        public final zf1 a;
        public final t14 b;
        public final String c;

        @Override
        public void onRestoreSessionError(String str) {
            try {
                this.a.accept(str);
            } catch (Exception e) {
                if (this.b.isCancelled()) {
                    return;
                }
                this.b.onError(e);
            }
        }

        @Override
        public void onSessionStats(SessionStats sessionStats) {
            try {
                this.a.accept(this.c);
            } catch (Exception e) {
                if (this.b.isCancelled()) {
                    return;
                }
                this.b.onError(e);
            }
        }

        @Override
        public void onTorrentError(String str, Exception exc) {
            try {
                this.a.accept(str);
            } catch (Exception e) {
                if (this.b.isCancelled()) {
                    return;
                }
                this.b.onError(e);
            }
        }

        @Override
        public void onTorrentPaused(String str) {
            try {
                this.a.accept(str);
            } catch (Exception e) {
                if (this.b.isCancelled()) {
                    return;
                }
                this.b.onError(e);
            }
        }

        @Override
        public void onTorrentStateChanged(String str, TorrentStateCode torrentStateCode, TorrentStateCode torrentStateCode2) {
            try {
                this.a.accept(str);
            } catch (Exception e) {
                if (this.b.isCancelled()) {
                    return;
                }
                this.b.onError(e);
            }
        }
    }

    class AnonymousClass2 extends TorrentEngineListener {
        public final Runnable a;

        @Override
        public void onRestoreSessionError(String str) {
            this.a.run();
        }

        @Override
        public void onSessionStats(SessionStats sessionStats) {
            this.a.run();
        }

        @Override
        public void onTorrentError(String str, Exception exc) {
            this.a.run();
        }

        @Override
        public void onTorrentPaused(String str) {
            this.a.run();
        }

        @Override
        public void onTorrentRemoved(String str) {
            this.a.run();
        }

        @Override
        public void onTorrentStateChanged(String str, TorrentStateCode torrentStateCode, TorrentStateCode torrentStateCode2) {
            this.a.run();
        }
    }

    class AnonymousClass3 extends TorrentEngineListener {
        public final t14 a;

        @Override
        public void onTorrentRemoved(String str) {
            if (this.a.isCancelled()) {
                return;
            }
            this.a.onNext(str);
        }
    }

    class AnonymousClass4 extends TorrentEngineListener {
        public final AtomicReference a;
        public final t14 b;

        @Override
        public void onSessionStats(SessionStats sessionStats) {
            if (sessionStats.equals((SessionStats) this.a.get())) {
                return;
            }
            this.a.set(sessionStats);
            if (this.b.isCancelled()) {
                return;
            }
            this.b.onNext(sessionStats);
        }
    }

    public TorrentInfoProvider(TorrentEngine torrentEngine, TagRepository tagRepository) {
        this.a = torrentEngine;
        this.b = tagRepository;
    }

    public static TorrentInfoProvider a(Context context) {
        if (c == null) {
            synchronized (TorrentInfoProvider.class) {
                try {
                    if (c == null) {
                        c = new TorrentInfoProvider(TorrentEngine.T(context), RepositoryHelper.b(context));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }
}
