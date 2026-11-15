package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.w;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.u1;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import s9.h0;

public final class d implements g {

    private static final int[] f25286d = {8, 13, 11, 2, 0, 1, 7};

    private final int f25287b;

    private final boolean f25288c;

    public d() {
        this(0, true);
    }

    private static void b(int i10, List list) {
        if (Ints.j(f25286d, i10) == -1 || list.contains(Integer.valueOf(i10))) {
            return;
        }
        list.add(Integer.valueOf(i10));
    }

    private i9.l d(int i10, p1 p1Var, List list, l0 l0Var) {
        if (i10 == 0) {
            return new s9.b();
        }
        if (i10 == 1) {
            return new s9.e();
        }
        if (i10 == 2) {
            return new s9.h();
        }
        if (i10 == 7) {
            return new p9.f(0, 0L);
        }
        if (i10 == 8) {
            return e(l0Var, p1Var, list);
        }
        if (i10 == 11) {
            return f(this.f25287b, this.f25288c, p1Var, list, l0Var);
        }
        if (i10 != 13) {
            return null;
        }
        return new r(p1Var.f24892c, l0Var);
    }

    private static q9.g e(l0 l0Var, p1 p1Var, List list) {
        int i10 = g(p1Var) ? 4 : 0;
        if (list == null) {
            list = Collections.emptyList();
        }
        return new q9.g(i10, l0Var, null, list);
    }

    private static h0 f(int i10, boolean z10, p1 p1Var, List list, l0 l0Var) {
        int i11 = i10 | 16;
        if (list != null) {
            i11 = i10 | 48;
        } else {
            list = z10 ? Collections.singletonList(new p1.b().e0(MimeTypes.APPLICATION_CEA608).E()) : Collections.emptyList();
        }
        String str = p1Var.f24898i;
        if (!TextUtils.isEmpty(str)) {
            if (!w.b(str, MimeTypes.AUDIO_AAC)) {
                i11 |= 2;
            }
            if (!w.b(str, MimeTypes.VIDEO_H264)) {
                i11 |= 4;
            }
        }
        return new h0(2, l0Var, new s9.j(i11, list));
    }

    private static boolean g(p1 p1Var) {
        Metadata metadata = p1Var.f24899j;
        if (metadata == null) {
            return false;
        }
        for (int i10 = 0; i10 < metadata.length(); i10++) {
            Metadata.Entry entry = metadata.get(i10);
            if (entry instanceof HlsTrackMetadataEntry) {
                return !((HlsTrackMetadataEntry) entry).variantInfos.isEmpty();
            }
        }
        return false;
    }

    private static boolean h(i9.l lVar, i9.m mVar) {
        try {
            return lVar.c(mVar);
        } catch (EOFException unused) {
            return false;
        } finally {
            mVar.resetPeekPosition();
        }
    }

    @Override
    public b a(Uri uri, p1 p1Var, List list, l0 l0Var, Map map, i9.m mVar, u1 u1Var) {
        int iA = com.google.android.exoplayer2.util.l.a(p1Var.f24901l);
        int iB = com.google.android.exoplayer2.util.l.b(map);
        int iC = com.google.android.exoplayer2.util.l.c(uri);
        int[] iArr = f25286d;
        ArrayList arrayList = new ArrayList(iArr.length);
        b(iA, arrayList);
        b(iB, arrayList);
        b(iC, arrayList);
        for (int i10 : iArr) {
            b(i10, arrayList);
        }
        mVar.resetPeekPosition();
        i9.l lVar = null;
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            int iIntValue = ((Integer) arrayList.get(i11)).intValue();
            i9.l lVar2 = (i9.l) com.google.android.exoplayer2.util.a.e(d(iIntValue, p1Var, list, l0Var));
            if (h(lVar2, mVar)) {
                return new b(lVar2, p1Var, l0Var);
            }
            if (lVar == null && (iIntValue == iA || iIntValue == iB || iIntValue == iC || iIntValue == 11)) {
                lVar = lVar2;
            }
        }
        return new b((i9.l) com.google.android.exoplayer2.util.a.e(lVar), p1Var, l0Var);
    }

    public d(int i10, boolean z10) {
        this.f25287b = i10;
        this.f25288c = z10;
    }
}
