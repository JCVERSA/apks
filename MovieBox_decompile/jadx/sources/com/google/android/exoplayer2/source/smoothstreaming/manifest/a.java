package com.google.android.exoplayer2.source.smoothstreaming.manifest;

import android.net.Uri;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.offline.c;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.n0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import q9.p;

public class a implements c {

    public final int f25951a;

    public final int f25952b;

    public final int f25953c;

    public final boolean f25954d;

    public final C0354a f25955e;

    public final b[] f25956f;

    public final long f25957g;

    public final long f25958h;

    public static class C0354a {

        public final UUID f25959a;

        public final byte[] f25960b;

        public final p[] f25961c;

        public C0354a(UUID uuid, byte[] bArr, p[] pVarArr) {
            this.f25959a = uuid;
            this.f25960b = bArr;
            this.f25961c = pVarArr;
        }
    }

    public a(int i10, int i11, long j10, long j11, long j12, int i12, boolean z10, C0354a c0354a, b[] bVarArr) {
        this(i10, i11, j11 == 0 ? -9223372036854775807L : p0.N0(j11, 1000000L, j10), j12 != 0 ? p0.N0(j12, 1000000L, j10) : C.TIME_UNSET, i12, z10, c0354a, bVarArr);
    }

    @Override
    public final a copy(List list) {
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        b bVar = null;
        int i10 = 0;
        while (i10 < arrayList.size()) {
            StreamKey streamKey = (StreamKey) arrayList.get(i10);
            b bVar2 = this.f25956f[streamKey.groupIndex];
            if (bVar2 != bVar && bVar != null) {
                arrayList2.add(bVar.b((p1[]) arrayList3.toArray(new p1[0])));
                arrayList3.clear();
            }
            arrayList3.add(bVar2.f25971j[streamKey.streamIndex]);
            i10++;
            bVar = bVar2;
        }
        if (bVar != null) {
            arrayList2.add(bVar.b((p1[]) arrayList3.toArray(new p1[0])));
        }
        return new a(this.f25951a, this.f25952b, this.f25957g, this.f25958h, this.f25953c, this.f25954d, this.f25955e, (b[]) arrayList2.toArray(new b[0]));
    }

    public static class b {

        public final int f25962a;

        public final String f25963b;

        public final long f25964c;

        public final String f25965d;

        public final int f25966e;

        public final int f25967f;

        public final int f25968g;

        public final int f25969h;

        public final String f25970i;

        public final p1[] f25971j;

        public final int f25972k;

        private final String f25973l;

        private final String f25974m;

        private final List f25975n;

        private final long[] f25976o;

        private final long f25977p;

        public b(String str, String str2, int i10, String str3, long j10, String str4, int i11, int i12, int i13, int i14, String str5, p1[] p1VarArr, List list, long j11) {
            this(str, str2, i10, str3, j10, str4, i11, i12, i13, i14, str5, p1VarArr, list, p0.O0(list, 1000000L, j10), p0.N0(j11, 1000000L, j10));
        }

        public Uri a(int i10, int i11) {
            com.google.android.exoplayer2.util.a.g(this.f25971j != null);
            com.google.android.exoplayer2.util.a.g(this.f25975n != null);
            com.google.android.exoplayer2.util.a.g(i11 < this.f25975n.size());
            String string = Integer.toString(this.f25971j[i10].f24897h);
            String string2 = ((Long) this.f25975n.get(i11)).toString();
            return n0.e(this.f25973l, this.f25974m.replace("{bitrate}", string).replace("{Bitrate}", string).replace("{start time}", string2).replace("{start_time}", string2));
        }

        public b b(p1[] p1VarArr) {
            return new b(this.f25973l, this.f25974m, this.f25962a, this.f25963b, this.f25964c, this.f25965d, this.f25966e, this.f25967f, this.f25968g, this.f25969h, this.f25970i, p1VarArr, this.f25975n, this.f25976o, this.f25977p);
        }

        public long c(int i10) {
            if (i10 == this.f25972k - 1) {
                return this.f25977p;
            }
            long[] jArr = this.f25976o;
            return jArr[i10 + 1] - jArr[i10];
        }

        public int d(long j10) {
            return p0.i(this.f25976o, j10, true, true);
        }

        public long e(int i10) {
            return this.f25976o[i10];
        }

        private b(String str, String str2, int i10, String str3, long j10, String str4, int i11, int i12, int i13, int i14, String str5, p1[] p1VarArr, List list, long[] jArr, long j11) {
            this.f25973l = str;
            this.f25974m = str2;
            this.f25962a = i10;
            this.f25963b = str3;
            this.f25964c = j10;
            this.f25965d = str4;
            this.f25966e = i11;
            this.f25967f = i12;
            this.f25968g = i13;
            this.f25969h = i14;
            this.f25970i = str5;
            this.f25971j = p1VarArr;
            this.f25975n = list;
            this.f25976o = jArr;
            this.f25977p = j11;
            this.f25972k = list.size();
        }
    }

    private a(int i10, int i11, long j10, long j11, int i12, boolean z10, C0354a c0354a, b[] bVarArr) {
        this.f25951a = i10;
        this.f25952b = i11;
        this.f25957g = j10;
        this.f25958h = j11;
        this.f25953c = i12;
        this.f25954d = z10;
        this.f25955e = c0354a;
        this.f25956f = bVarArr;
    }
}
