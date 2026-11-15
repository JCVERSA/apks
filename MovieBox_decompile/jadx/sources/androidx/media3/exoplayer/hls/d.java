package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.util.p0;
import androidx.media3.common.x;
import androidx.media3.common.y;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import r3.k0;
import x1.f4;

public final class d implements g {

    private static final int[] f11389f = {8, 13, 11, 2, 0, 1, 7};

    private final int f11390a;

    private h3.s.a f11391b;

    private boolean f11392c;

    private int f11393d;

    private final boolean f11394e;

    public d() {
        this(0, true);
    }

    private static void f(int i10, List list) {
        if (Ints.j(f11389f, i10) == -1 || list.contains(Integer.valueOf(i10))) {
            return;
        }
        list.add(Integer.valueOf(i10));
    }

    private k2.r h(int i10, androidx.media3.common.r rVar, List list, p0 p0Var) {
        if (i10 == 0) {
            return new r3.b();
        }
        if (i10 == 1) {
            return new r3.e();
        }
        if (i10 == 2) {
            return new r3.h();
        }
        if (i10 == 7) {
            return new d3.f(0, 0L);
        }
        if (i10 == 8) {
            return i(this.f11391b, this.f11392c, p0Var, rVar, list, this.f11393d);
        }
        if (i10 == 11) {
            return j(this.f11390a, this.f11394e, rVar, list, p0Var, this.f11391b, this.f11392c);
        }
        if (i10 != 13) {
            return null;
        }
        return new u(rVar.f9838d, p0Var, this.f11391b, this.f11392c);
    }

    private static e3.h i(h3.s.a aVar, boolean z10, p0 p0Var, androidx.media3.common.r rVar, List list, int i10) {
        int i11 = m(rVar) ? 4 : 0;
        if (!z10) {
            aVar = h3.s.a.f61264a;
            i11 |= 32;
        }
        h3.s.a aVar2 = aVar;
        int iJ = i11 | e3.h.j(i10);
        if (list == null) {
            list = ImmutableList.of();
        }
        return new e3.h(aVar2, iJ, p0Var, null, list, null);
    }

    private static k0 j(int i10, boolean z10, androidx.media3.common.r rVar, List list, p0 p0Var, h3.s.a aVar, boolean z11) {
        int i11;
        int i12 = i10 | 16;
        if (list != null) {
            i12 = i10 | 48;
        } else {
            list = z10 ? Collections.singletonList(new androidx.media3.common.r.b().u0(MimeTypes.APPLICATION_CEA608).N()) : Collections.emptyList();
        }
        String str = rVar.f9845k;
        if (!TextUtils.isEmpty(str)) {
            if (!y.b(str, MimeTypes.AUDIO_AAC)) {
                i12 |= 2;
            }
            if (!y.b(str, MimeTypes.VIDEO_H264)) {
                i12 |= 4;
            }
        }
        if (z11) {
            i11 = 0;
        } else {
            aVar = h3.s.a.f61264a;
            i11 = 1;
        }
        return new k0(2, i11, aVar, p0Var, new r3.j(i12, list), 112800);
    }

    private static boolean m(androidx.media3.common.r rVar) {
        x xVar = rVar.f9846l;
        if (xVar == null) {
            return false;
        }
        for (int i10 = 0; i10 < xVar.e(); i10++) {
            x.a aVarD = xVar.d(i10);
            if (aVarD instanceof s) {
                return !((s) aVarD).f11678c.isEmpty();
            }
        }
        return false;
    }

    private static boolean o(k2.r rVar, k2.s sVar) {
        try {
            return rVar.b(sVar);
        } catch (EOFException unused) {
            return false;
        } finally {
            sVar.resetPeekPosition();
        }
    }

    @Override
    public androidx.media3.common.r d(androidx.media3.common.r rVar) {
        String str;
        if (!this.f11392c || !this.f11391b.a(rVar)) {
            return rVar;
        }
        androidx.media3.common.r.b bVarW = rVar.b().u0("application/x-media3-cues").W(this.f11391b.b(rVar));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(rVar.f9849o);
        if (rVar.f9845k != null) {
            str = " " + rVar.f9845k;
        } else {
            str = "";
        }
        sb2.append(str);
        return bVarW.S(sb2.toString()).y0(Long.MAX_VALUE).N();
    }

    @Override
    public b e(Uri uri, androidx.media3.common.r rVar, List list, p0 p0Var, Map map, k2.s sVar, f4 f4Var) {
        int iA = androidx.media3.common.o.a(rVar.f9849o);
        int iB = androidx.media3.common.o.b(map);
        int iC = androidx.media3.common.o.c(uri);
        int[] iArr = f11389f;
        ArrayList arrayList = new ArrayList(iArr.length);
        f(iA, arrayList);
        f(iB, arrayList);
        f(iC, arrayList);
        for (int i10 : iArr) {
            f(i10, arrayList);
        }
        sVar.resetPeekPosition();
        k2.r rVar2 = null;
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            int iIntValue = ((Integer) arrayList.get(i11)).intValue();
            k2.r rVar3 = (k2.r) androidx.media3.common.util.a.e(h(iIntValue, rVar, list, p0Var));
            if (o(rVar3, sVar)) {
                return new b(rVar3, rVar, p0Var, this.f11391b, this.f11392c);
            }
            if (rVar2 == null && (iIntValue == iA || iIntValue == iB || iIntValue == iC || iIntValue == 11)) {
                rVar2 = rVar3;
            }
        }
        return new b((k2.r) androidx.media3.common.util.a.e(rVar2), rVar, p0Var, this.f11391b, this.f11392c);
    }

    @Override
    public d c(boolean z10) {
        this.f11392c = z10;
        return this;
    }

    @Override
    public d b(int i10) {
        this.f11393d = i10;
        return this;
    }

    @Override
    public d a(h3.s.a aVar) {
        this.f11391b = aVar;
        return this;
    }

    public d(int i10, boolean z10) {
        this.f11390a = i10;
        this.f11394e = z10;
        this.f11391b = new h3.h();
    }
}
