package ud;

import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.j;
import com.google.zxing.k;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sd.p;
import td.f;

public final class d extends td.a {

    private static final int[] f73047k = {7, 5, 4, 3, 1};

    private static final int[] f73048l = {4, 20, 52, 104, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE};

    private static final int[] f73049m = {0, 348, 1388, 2948, 3988};

    private static final int[][] f73050n = {new int[]{1, 8, 4, 1}, new int[]{3, 6, 4, 1}, new int[]{3, 4, 6, 1}, new int[]{3, 2, 8, 1}, new int[]{2, 6, 5, 1}, new int[]{2, 2, 9, 1}};

    private static final int[][] f73051o = {new int[]{1, 3, 9, 27, 81, 32, 96, 77}, new int[]{20, 60, 180, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, 143, 7, 21, 63}, new int[]{PsExtractor.PRIVATE_STREAM_1, 145, 13, 39, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, 140, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE}, new int[]{193, 157, 49, 147, 19, 57, 171, 91}, new int[]{62, 186, Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE, 197, 169, 85, 44, Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE}, new int[]{185, Sdk$SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE, 188, 142, 4, 12, 36, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY}, new int[]{113, 128, 173, 97, 80, 29, 87, 50}, new int[]{150, 28, 84, 41, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, 158, 52, 156}, new int[]{46, 138, Sdk$SDKError.Reason.AD_IS_LOADING_VALUE, 187, 139, Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE, 196, 166}, new int[]{76, 17, 51, 153, 37, 111, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, 155}, new int[]{43, 129, 176, 106, 107, 110, Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, 146}, new int[]{16, 48, 144, 10, 30, 90, 59, 177}, new int[]{109, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, Sdk$SDKError.Reason.TPAT_RETRY_FAILED_VALUE, 200, 178, 112, Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, 164}, new int[]{70, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.AD_CONSUMED_VALUE, 184, 130, 179, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE}, new int[]{134, 191, 151, 31, 93, 68, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, 190}, new int[]{148, 22, 66, 198, 172, 94, 71, 2}, new int[]{6, 18, 54, 162, 64, PsExtractor.AUDIO_STREAM, 154, 40}, new int[]{120, 149, 25, 75, 14, 42, 126, 167}, new int[]{79, 26, 78, 23, 69, Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE, 199, 175}, new int[]{103, 98, 83, 38, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, 182, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE}, new int[]{161, 61, 183, 127, 170, 88, 53, 159}, new int[]{55, 165, 73, 8, 24, 72, 5, 15}, new int[]{45, 135, 194, 160, 58, 174, 100, 89}};

    private static final int[][] f73052p = {new int[]{0, 0}, new int[]{0, 1, 1}, new int[]{0, 2, 1, 3}, new int[]{0, 4, 1, 3, 2}, new int[]{0, 4, 1, 3, 3, 5}, new int[]{0, 4, 1, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 2, 3, 3}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 4}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5}};

    private final List f73053g = new ArrayList(11);

    private final List f73054h = new ArrayList();

    private final int[] f73055i = new int[2];

    private boolean f73056j;

    private static boolean A(td.c cVar, boolean z10, boolean z11) {
        return (cVar.c() == 0 && z10 && z11) ? false : true;
    }

    private static boolean B(Iterable iterable, Iterable iterable2) {
        Iterator it = iterable2.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            Iterator it2 = iterable.iterator();
            while (it2.hasNext()) {
                b bVar = (b) it2.next();
                Iterator it3 = cVar.a().iterator();
                while (true) {
                    if (it3.hasNext()) {
                        if (bVar.equals((b) it3.next())) {
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    private static boolean C(List list) {
        for (int[] iArr : f73052p) {
            if (list.size() <= iArr.length) {
                for (int i10 = 0; i10 < list.size(); i10++) {
                    if (((b) list.get(i10)).a().c() == iArr[i10]) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    private td.c D(kd.a aVar, int i10, boolean z10) {
        int i11;
        int i12;
        int i13;
        if (z10) {
            int i14 = this.f73055i[0] - 1;
            while (i14 >= 0 && !aVar.i(i14)) {
                i14--;
            }
            int i15 = i14 + 1;
            int[] iArr = this.f73055i;
            i13 = iArr[0] - i15;
            i11 = iArr[1];
            i12 = i15;
        } else {
            int[] iArr2 = this.f73055i;
            int i16 = iArr2[0];
            int iL = aVar.l(iArr2[1] + 1);
            i11 = iL;
            i12 = i16;
            i13 = iL - this.f73055i[1];
        }
        int[] iArrJ = j();
        System.arraycopy(iArrJ, 0, iArrJ, 1, iArrJ.length - 1);
        iArrJ[0] = i13;
        try {
            return new td.c(td.a.q(iArrJ, f73050n), new int[]{i12, i11}, i12, i11, i10);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    private static void E(Collection collection, Collection collection2) {
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.a().size() != collection.size()) {
                Iterator it2 = cVar.a().iterator();
                do {
                    if (!it2.hasNext()) {
                        it.remove();
                        break;
                    }
                } while (collection.contains((b) it2.next()));
            }
        }
    }

    private static void G(int[] iArr) {
        int length = iArr.length;
        for (int i10 = 0; i10 < length / 2; i10++) {
            int i11 = iArr[i10];
            int i12 = (length - i10) - 1;
            iArr[i10] = iArr[i12];
            iArr[i12] = i11;
        }
    }

    private void H(int i10) {
        boolean zC = false;
        int i11 = 0;
        boolean zC2 = false;
        while (i11 < this.f73054h.size()) {
            c cVar = (c) this.f73054h.get(i11);
            if (cVar.b() > i10) {
                zC = cVar.c(this.f73053g);
                break;
            } else {
                zC2 = cVar.c(this.f73053g);
                i11++;
            }
        }
        if (zC || zC2 || B(this.f73053g, this.f73054h)) {
            return;
        }
        this.f73054h.add(i11, new c(this.f73053g, i10));
        E(this.f73053g, this.f73054h);
    }

    private void r(int i10) throws NotFoundException {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        int iD = ld.a.d(m());
        int iD2 = ld.a.d(k());
        boolean z14 = true;
        if (iD > 13) {
            z11 = true;
            z10 = false;
        } else if (iD < 4) {
            z10 = true;
            z11 = false;
        } else {
            z10 = false;
            z11 = false;
        }
        if (iD2 > 13) {
            z13 = true;
            z12 = false;
        } else if (iD2 < 4) {
            z12 = true;
            z13 = false;
        } else {
            z12 = false;
            z13 = false;
        }
        int i11 = (iD + iD2) - i10;
        boolean z15 = (iD & 1) == 1;
        boolean z16 = (iD2 & 1) == 0;
        if (i11 != -1) {
            if (i11 != 0) {
                if (i11 != 1) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (z15) {
                    if (z16) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    z11 = true;
                } else {
                    if (!z16) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    z13 = true;
                }
            } else if (z15) {
                if (!z16) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (iD < iD2) {
                    z13 = true;
                } else {
                    z12 = true;
                    z11 = true;
                }
            } else if (z16) {
                throw NotFoundException.getNotFoundInstance();
            }
            z14 = z10;
        } else if (z15) {
            if (z16) {
                throw NotFoundException.getNotFoundInstance();
            }
        } else {
            if (!z16) {
                throw NotFoundException.getNotFoundInstance();
            }
            z12 = true;
            z14 = z10;
        }
        if (z14) {
            if (z11) {
                throw NotFoundException.getNotFoundInstance();
            }
            td.a.o(m(), n());
        }
        if (z11) {
            td.a.h(m(), n());
        }
        if (z12) {
            if (z13) {
                throw NotFoundException.getNotFoundInstance();
            }
            td.a.o(k(), n());
        }
        if (z13) {
            td.a.h(k(), l());
        }
    }

    private boolean s() {
        b bVar = (b) this.f73053g.get(0);
        td.b bVarB = bVar.b();
        td.b bVarC = bVar.c();
        if (bVarC == null) {
            return false;
        }
        int iA = bVarC.a();
        int i10 = 2;
        for (int i11 = 1; i11 < this.f73053g.size(); i11++) {
            b bVar2 = (b) this.f73053g.get(i11);
            iA += bVar2.b().a();
            int i12 = i10 + 1;
            td.b bVarC2 = bVar2.c();
            if (bVarC2 != null) {
                iA += bVarC2.a();
                i10 += 2;
            } else {
                i10 = i12;
            }
        }
        return ((i10 + (-4)) * 211) + (iA % 211) == bVarB.b();
    }

    private List t(List list, int i10) throws NotFoundException {
        while (i10 < this.f73054h.size()) {
            c cVar = (c) this.f73054h.get(i10);
            this.f73053g.clear();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.f73053g.addAll(((c) it.next()).a());
            }
            this.f73053g.addAll(cVar.a());
            if (C(this.f73053g)) {
                if (s()) {
                    return this.f73053g;
                }
                ArrayList arrayList = new ArrayList(list);
                arrayList.add(cVar);
                try {
                    return t(arrayList, i10 + 1);
                } catch (NotFoundException unused) {
                    continue;
                }
            }
            i10++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private List u(boolean z10) {
        List listT = null;
        if (this.f73054h.size() > 25) {
            this.f73054h.clear();
            return null;
        }
        this.f73053g.clear();
        if (z10) {
            Collections.reverse(this.f73054h);
        }
        try {
            listT = t(new ArrayList(), 0);
        } catch (NotFoundException unused) {
        }
        if (z10) {
            Collections.reverse(this.f73054h);
        }
        return listT;
    }

    static j v(List list) {
        String strD = com.google.zxing.oned.rss.expanded.decoders.j.a(a.a(list)).d();
        k[] kVarArrA = ((b) list.get(0)).a().a();
        k[] kVarArrA2 = ((b) list.get(list.size() - 1)).a().a();
        j jVar = new j(strD, null, new k[]{kVarArrA[0], kVarArrA[1], kVarArrA2[0], kVarArrA2[1]}, BarcodeFormat.RSS_EXPANDED);
        jVar.h(ResultMetadataType.SYMBOLOGY_IDENTIFIER, "]e0");
        return jVar;
    }

    private void y(kd.a aVar, List list, int i10) throws NotFoundException {
        int[] iArrJ = j();
        iArrJ[0] = 0;
        iArrJ[1] = 0;
        iArrJ[2] = 0;
        iArrJ[3] = 0;
        int iM = aVar.m();
        if (i10 < 0) {
            i10 = list.isEmpty() ? 0 : ((b) list.get(list.size() - 1)).a().b()[1];
        }
        boolean z10 = list.size() % 2 != 0;
        if (this.f73056j) {
            z10 = !z10;
        }
        boolean z11 = false;
        while (i10 < iM) {
            boolean zI = aVar.i(i10);
            boolean z12 = !zI;
            if (zI) {
                z11 = z12;
                break;
            } else {
                i10++;
                z11 = z12;
            }
        }
        int i11 = 0;
        boolean z13 = z11;
        int i12 = i10;
        while (i10 < iM) {
            if (aVar.i(i10) != z13) {
                iArrJ[i11] = iArrJ[i11] + 1;
            } else {
                if (i11 == 3) {
                    if (z10) {
                        G(iArrJ);
                    }
                    if (td.a.p(iArrJ)) {
                        int[] iArr = this.f73055i;
                        iArr[0] = i12;
                        iArr[1] = i10;
                        return;
                    }
                    if (z10) {
                        G(iArrJ);
                    }
                    i12 += iArrJ[0] + iArrJ[1];
                    iArrJ[0] = iArrJ[2];
                    iArrJ[1] = iArrJ[3];
                    iArrJ[2] = 0;
                    iArrJ[3] = 0;
                    i11--;
                } else {
                    i11++;
                }
                iArrJ[i11] = 1;
                z13 = !z13;
            }
            i10++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int z(kd.a aVar, int i10) {
        return aVar.i(i10) ? aVar.k(aVar.l(i10)) : aVar.l(aVar.k(i10));
    }

    b F(kd.a aVar, List list, int i10) throws NotFoundException {
        td.c cVarD;
        td.b bVarW;
        boolean z10 = list.size() % 2 == 0;
        if (this.f73056j) {
            z10 = !z10;
        }
        int iZ = -1;
        boolean z11 = true;
        do {
            y(aVar, list, iZ);
            cVarD = D(aVar, i10, z10);
            if (cVarD == null) {
                iZ = z(aVar, this.f73055i[0]);
            } else {
                z11 = false;
            }
        } while (z11);
        td.b bVarW2 = w(aVar, cVarD, z10, true);
        if (!list.isEmpty() && ((b) list.get(list.size() - 1)).d()) {
            throw NotFoundException.getNotFoundInstance();
        }
        try {
            bVarW = w(aVar, cVarD, z10, false);
        } catch (NotFoundException unused) {
            bVarW = null;
        }
        return new b(bVarW2, bVarW, cVarD);
    }

    @Override
    public j c(int i10, kd.a aVar, Map map) {
        this.f73053g.clear();
        this.f73056j = false;
        try {
            return v(x(i10, aVar));
        } catch (NotFoundException unused) {
            this.f73053g.clear();
            this.f73056j = true;
            return v(x(i10, aVar));
        }
    }

    @Override
    public void reset() {
        this.f73053g.clear();
        this.f73054h.clear();
    }

    td.b w(kd.a aVar, td.c cVar, boolean z10, boolean z11) throws NotFoundException {
        int[] iArrI = i();
        Arrays.fill(iArrI, 0);
        if (z11) {
            p.g(aVar, cVar.b()[0], iArrI);
        } else {
            p.f(aVar, cVar.b()[1], iArrI);
            int i10 = 0;
            for (int length = iArrI.length - 1; i10 < length; length--) {
                int i11 = iArrI[i10];
                iArrI[i10] = iArrI[length];
                iArrI[length] = i11;
                i10++;
            }
        }
        float fD = ld.a.d(iArrI) / 17;
        float f10 = (cVar.b()[1] - cVar.b()[0]) / 15.0f;
        if (Math.abs(fD - f10) / f10 > 0.3f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int[] iArrM = m();
        int[] iArrK = k();
        float[] fArrN = n();
        float[] fArrL = l();
        for (int i12 = 0; i12 < iArrI.length; i12++) {
            float f11 = (iArrI[i12] * 1.0f) / fD;
            int i13 = (int) (0.5f + f11);
            if (i13 < 1) {
                if (f11 < 0.3f) {
                    throw NotFoundException.getNotFoundInstance();
                }
                i13 = 1;
            } else if (i13 > 8) {
                if (f11 > 8.7f) {
                    throw NotFoundException.getNotFoundInstance();
                }
                i13 = 8;
            }
            int i14 = i12 / 2;
            if ((i12 & 1) == 0) {
                iArrM[i14] = i13;
                fArrN[i14] = f11 - i13;
            } else {
                iArrK[i14] = i13;
                fArrL[i14] = f11 - i13;
            }
        }
        r(17);
        int iC = (((cVar.c() * 4) + (z10 ? 0 : 2)) + (!z11 ? 1 : 0)) - 1;
        int i15 = 0;
        int i16 = 0;
        for (int length2 = iArrM.length - 1; length2 >= 0; length2--) {
            if (A(cVar, z10, z11)) {
                i15 += iArrM[length2] * f73051o[iC][length2 * 2];
            }
            i16 += iArrM[length2];
        }
        int i17 = 0;
        for (int length3 = iArrK.length - 1; length3 >= 0; length3--) {
            if (A(cVar, z10, z11)) {
                i17 += iArrK[length3] * f73051o[iC][(length3 * 2) + 1];
            }
        }
        int i18 = i15 + i17;
        if ((i16 & 1) != 0 || i16 > 13 || i16 < 4) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i19 = (13 - i16) / 2;
        int i20 = f73047k[i19];
        return new td.b((f.b(iArrM, i20, true) * f73048l[i19]) + f.b(iArrK, 9 - i20, false) + f73049m[i19], i18);
    }

    List x(int i10, kd.a aVar) throws NotFoundException {
        boolean z10 = false;
        while (!z10) {
            try {
                List list = this.f73053g;
                list.add(F(aVar, list, i10));
            } catch (NotFoundException e10) {
                if (this.f73053g.isEmpty()) {
                    throw e10;
                }
                z10 = true;
            }
        }
        if (s()) {
            return this.f73053g;
        }
        boolean zIsEmpty = this.f73054h.isEmpty();
        H(i10);
        if (!zIsEmpty) {
            List listU = u(false);
            if (listU != null) {
                return listU;
            }
            List listU2 = u(true);
            if (listU2 != null) {
                return listU2;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
