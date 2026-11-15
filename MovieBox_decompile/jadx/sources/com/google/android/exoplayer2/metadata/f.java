package com.google.android.exoplayer2.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q1;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.z2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

public final class f extends h implements Handler.Callback {

    private final c f24783n;

    private final e f24784o;

    private final Handler f24785p;

    private final d f24786q;

    private b f24787r;

    private boolean f24788s;

    private boolean f24789t;

    private long f24790u;

    private long f24791v;

    private Metadata f24792w;

    public f(e eVar, Looper looper) {
        this(eVar, looper, c.f24778a);
    }

    private void A(Metadata metadata) {
        Handler handler = this.f24785p;
        if (handler != null) {
            handler.obtainMessage(0, metadata).sendToTarget();
        } else {
            B(metadata);
        }
    }

    private void B(Metadata metadata) {
        this.f24784o.onMetadata(metadata);
    }

    private boolean C(long j10) {
        boolean z10;
        Metadata metadata = this.f24792w;
        if (metadata == null || this.f24791v > j10) {
            z10 = false;
        } else {
            A(metadata);
            this.f24792w = null;
            this.f24791v = C.TIME_UNSET;
            z10 = true;
        }
        if (this.f24788s && this.f24792w == null) {
            this.f24789t = true;
        }
        return z10;
    }

    private void D() {
        if (this.f24788s || this.f24792w != null) {
            return;
        }
        this.f24786q.b();
        q1 q1VarK = k();
        int iW = w(q1VarK, this.f24786q, 0);
        if (iW != -4) {
            if (iW == -5) {
                this.f24790u = ((p1) com.google.android.exoplayer2.util.a.e(q1VarK.f24962b)).f24905p;
                return;
            }
            return;
        }
        if (this.f24786q.h()) {
            this.f24788s = true;
            return;
        }
        d dVar = this.f24786q;
        dVar.f24779i = this.f24790u;
        dVar.n();
        Metadata metadataA = ((b) p0.j(this.f24787r)).a(this.f24786q);
        if (metadataA != null) {
            ArrayList arrayList = new ArrayList(metadataA.length());
            z(metadataA, arrayList);
            if (arrayList.isEmpty()) {
                return;
            }
            this.f24792w = new Metadata(arrayList);
            this.f24791v = this.f24786q.f24204e;
        }
    }

    private void z(Metadata metadata, List list) {
        for (int i10 = 0; i10 < metadata.length(); i10++) {
            p1 wrappedMetadataFormat = metadata.get(i10).getWrappedMetadataFormat();
            if (wrappedMetadataFormat == null || !this.f24783n.a(wrappedMetadataFormat)) {
                list.add(metadata.get(i10));
            } else {
                b bVarB = this.f24783n.b(wrappedMetadataFormat);
                byte[] bArr = (byte[]) com.google.android.exoplayer2.util.a.e(metadata.get(i10).getWrappedMetadataBytes());
                this.f24786q.b();
                this.f24786q.m(bArr.length);
                ((ByteBuffer) p0.j(this.f24786q.f24202c)).put(bArr);
                this.f24786q.n();
                Metadata metadataA = bVarB.a(this.f24786q);
                if (metadataA != null) {
                    z(metadataA, list);
                }
            }
        }
    }

    @Override
    public int a(p1 p1Var) {
        if (this.f24783n.a(p1Var)) {
            return z2.a(p1Var.E == 0 ? 4 : 2);
        }
        return z2.a(0);
    }

    @Override
    public String getName() {
        return "MetadataRenderer";
    }

    @Override
    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        B((Metadata) message.obj);
        return true;
    }

    @Override
    public boolean isEnded() {
        return this.f24789t;
    }

    @Override
    public boolean isReady() {
        return true;
    }

    @Override
    protected void p() {
        this.f24792w = null;
        this.f24791v = C.TIME_UNSET;
        this.f24787r = null;
    }

    @Override
    protected void r(long j10, boolean z10) {
        this.f24792w = null;
        this.f24791v = C.TIME_UNSET;
        this.f24788s = false;
        this.f24789t = false;
    }

    @Override
    public void render(long j10, long j11) {
        boolean zC = true;
        while (zC) {
            D();
            zC = C(j10);
        }
    }

    @Override
    protected void v(p1[] p1VarArr, long j10, long j11) {
        this.f24787r = this.f24783n.b(p1VarArr[0]);
    }

    public f(e eVar, Looper looper, c cVar) {
        super(5);
        this.f24784o = (e) com.google.android.exoplayer2.util.a.e(eVar);
        this.f24785p = looper == null ? null : p0.v(looper, this);
        this.f24783n = (c) com.google.android.exoplayer2.util.a.e(cVar);
        this.f24786q = new d();
        this.f24791v = C.TIME_UNSET;
    }
}
