package com.hunantv.media.player.subtitle.a;

import android.util.Log;
import com.hunantv.media.player.subtitle.MediaFormat;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;

class i extends com.hunantv.media.player.subtitle.d implements g {
    private final h h;
    private final f i;
    private final e j;
    private final Vector<Long> k;
    private final com.hunantv.media.player.subtitle.d.c l;
    private final Map<String, d> m;
    private Long n;

    public i(com.hunantv.media.player.subtitle.d.c cVar, MediaFormat mediaFormat) {
        super(mediaFormat);
        this.h = new h(this);
        f fVar = new f();
        this.i = fVar;
        this.j = new e(fVar);
        this.k = new Vector<>();
        this.m = new HashMap();
        this.l = cVar;
    }

    public void a(b bVar) {
        synchronized (this.h) {
            try {
                if (bVar.i.length() != 0) {
                    bVar.r = this.m.get(bVar.i);
                }
                com.hunantv.media.player.subtitle.c.c("WebVttTrack", "adding cue " + bVar);
                this.j.a();
                for (String str : bVar.p) {
                    this.j.a(str);
                }
                bVar.q = this.i.b();
                StringBuilder sbA = bVar.a(new StringBuilder());
                sbA.append(" simplified to: ");
                com.hunantv.media.player.subtitle.c.c("WebVttTrack", bVar.b(sbA).toString());
                for (c[] cVarArr : bVar.q) {
                    for (c cVar : cVarArr) {
                        long j = cVar.a;
                        if (j > bVar.a && j < bVar.b && !this.k.contains(Long.valueOf(j))) {
                            this.k.add(Long.valueOf(cVar.a));
                        }
                    }
                }
                if (this.k.size() > 0) {
                    bVar.c = new long[this.k.size()];
                    for (int i = 0; i < this.k.size(); i++) {
                        bVar.c[i] = this.k.get(i).longValue();
                    }
                    this.k.clear();
                } else {
                    bVar.c = null;
                }
                bVar.d = this.n.longValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        a((com.hunantv.media.player.subtitle.d.a) bVar);
    }

    @Override
    public com.hunantv.media.player.subtitle.d.c c() {
        return this.l;
    }

    public void a(d dVar) {
        synchronized (this.h) {
            this.m.put(dVar.a, dVar);
        }
    }

    @Override
    public void a(Vector<com.hunantv.media.player.subtitle.d.a> vector) {
        com.hunantv.media.player.subtitle.d.c cVar;
        if (this.e && (cVar = this.l) != null) {
            cVar.setActiveCues(vector);
        }
    }

    @Override
    public void a(byte[] bArr, boolean z, long j, String str) {
        try {
            String str2 = new String(bArr, str);
            synchronized (this.h) {
                try {
                    Long l = this.n;
                    if (l != null && j != l.longValue()) {
                        throw new IllegalStateException("Run #" + this.n + " in progress.  Cannot process run #" + j);
                    }
                    this.n = Long.valueOf(j);
                    this.h.d(str2);
                    if (z) {
                        c(j);
                        this.h.a();
                        this.m.clear();
                        this.n = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (UnsupportedEncodingException e) {
            Log.w("WebVttTrack", "subtitle data is not support encoded: " + e);
        }
    }
}
