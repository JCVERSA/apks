package org.proninyaroslav.libretorrent.core;

import defpackage.ie8;
import defpackage.zd0;

public class TorrentBuilder {
    public ie8 a;
    public zd0 b;

    class AnonymousClass1 implements org.libtorrent4j.TorrentBuilder.Listener {
        public final TorrentBuilder a;

        @Override
        public boolean accept(String str) {
            try {
                return this.a.a == null || this.a.a.test(str);
            } catch (Exception unused) {
                return false;
            }
        }

        @Override
        public void progress(int i, int i2) {
            this.a.b.onNext(new Progress(i, i2));
        }
    }

    public static final class Progress {
        public final int a;
        public final int b;

        public Progress(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public static class Tracker {
    }
}
