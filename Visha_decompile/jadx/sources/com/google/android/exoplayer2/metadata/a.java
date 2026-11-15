package com.google.android.exoplayer2.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.C;
import com.google.android.exoplayer2.d;
import com.google.android.exoplayer2.k;
import defpackage.blb;
import defpackage.co6;
import defpackage.do6;
import defpackage.eo6;
import defpackage.fo6;
import defpackage.ks8;
import defpackage.o44;
import defpackage.zi;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

public final class a extends d implements Handler.Callback {
    public final do6 o;
    public final fo6 p;
    public final Handler q;
    public final eo6 r;
    public co6 s;
    public boolean t;
    public boolean u;
    public long v;
    public long w;
    public Metadata x;

    public a(fo6 fo6Var, Looper looper) {
        this(fo6Var, looper, do6.a);
    }

    public final boolean A(long j) {
        boolean z;
        Metadata metadata = this.x;
        if (metadata == null || this.w > j) {
            z = false;
        } else {
            y(metadata);
            this.x = null;
            this.w = C.TIME_UNSET;
            z = true;
        }
        if (this.t && this.x == null) {
            this.u = true;
        }
        return z;
    }

    public final void B() {
        if (this.t || this.x != null) {
            return;
        }
        this.r.b();
        o44 o44VarI = i();
        int iU = u(o44VarI, this.r, 0);
        if (iU != -4) {
            if (iU == -5) {
                this.v = ((k) zi.e(o44VarI.b)).q;
                return;
            }
            return;
        }
        if (this.r.h()) {
            this.t = true;
            return;
        }
        eo6 eo6Var = this.r;
        eo6Var.j = this.v;
        eo6Var.n();
        Metadata metadataA = ((co6) blb.j(this.s)).a(this.r);
        if (metadataA != null) {
            ArrayList arrayList = new ArrayList(metadataA.length());
            x(metadataA, arrayList);
            if (arrayList.isEmpty()) {
                return;
            }
            this.x = new Metadata(arrayList);
            this.w = this.r.f;
        }
    }

    @Override
    public int a(k kVar) {
        if (this.o.a(kVar)) {
            return ks8.create(kVar.F == 0 ? 4 : 2);
        }
        return ks8.create(0);
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
        z((Metadata) message.obj);
        return true;
    }

    @Override
    public boolean isEnded() {
        return this.u;
    }

    @Override
    public boolean isReady() {
        return true;
    }

    @Override
    public void n() {
        this.x = null;
        this.w = C.TIME_UNSET;
        this.s = null;
    }

    @Override
    public void p(long j, boolean z) {
        this.x = null;
        this.w = C.TIME_UNSET;
        this.t = false;
        this.u = false;
    }

    @Override
    public void render(long j, long j2) {
        boolean zA = true;
        while (zA) {
            B();
            zA = A(j);
        }
    }

    @Override
    public void t(k[] kVarArr, long j, long j2) {
        this.s = this.o.b(kVarArr[0]);
    }

    public final void x(Metadata metadata, List list) {
        for (int i = 0; i < metadata.length(); i++) {
            k wrappedMetadataFormat = metadata.get(i).getWrappedMetadataFormat();
            if (wrappedMetadataFormat == null || !this.o.a(wrappedMetadataFormat)) {
                list.add(metadata.get(i));
            } else {
                co6 co6VarB = this.o.b(wrappedMetadataFormat);
                byte[] bArr = (byte[]) zi.e(metadata.get(i).getWrappedMetadataBytes());
                this.r.b();
                this.r.m(bArr.length);
                ((ByteBuffer) blb.j(this.r.d)).put(bArr);
                this.r.n();
                Metadata metadataA = co6VarB.a(this.r);
                if (metadataA != null) {
                    x(metadataA, list);
                }
            }
        }
    }

    public final void y(Metadata metadata) {
        Handler handler = this.q;
        if (handler != null) {
            handler.obtainMessage(0, metadata).sendToTarget();
        } else {
            z(metadata);
        }
    }

    public final void z(Metadata metadata) {
        this.p.onMetadata(metadata);
    }

    public a(fo6 fo6Var, Looper looper, do6 do6Var) {
        super(5);
        this.p = (fo6) zi.e(fo6Var);
        this.q = looper == null ? null : blb.t(looper, this);
        this.o = (do6) zi.e(do6Var);
        this.r = new eo6();
        this.w = C.TIME_UNSET;
    }
}
