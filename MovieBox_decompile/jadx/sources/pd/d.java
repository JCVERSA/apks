package pd;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.vungle.ads.internal.protos.Sdk$SDKError;

public class d {

    static final d[] f69137i;

    private static d[] f69138j;

    private final boolean f69139a;

    private final int f69140b;

    private final int f69141c;

    public final int f69142d;

    public final int f69143e;

    private final int f69144f;

    private final int f69145g;

    private final int f69146h;

    static {
        d[] dVarArr = {new d(false, 3, 5, 8, 8, 1), new d(false, 5, 7, 10, 10, 1), new d(true, 5, 7, 16, 6, 1), new d(false, 8, 10, 12, 12, 1), new d(true, 10, 11, 14, 6, 2), new d(false, 12, 12, 14, 14, 1), new d(true, 16, 14, 24, 10, 1), new d(false, 18, 14, 16, 16, 1), new d(false, 22, 18, 18, 18, 1), new d(true, 22, 18, 16, 10, 2), new d(false, 30, 20, 20, 20, 1), new d(true, 32, 24, 16, 14, 2), new d(false, 36, 24, 22, 22, 1), new d(false, 44, 28, 24, 24, 1), new d(true, 49, 28, 22, 14, 2), new d(false, 62, 36, 14, 14, 4), new d(false, 86, 42, 16, 16, 4), new d(false, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 48, 18, 18, 4), new d(false, 144, 56, 20, 20, 4), new d(false, 174, 68, 22, 22, 4), new d(false, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, 84, 24, 24, 4, 102, 42), new d(false, 280, 112, 14, 14, 16, 140, 56), new d(false, 368, 144, 16, 16, 16, 92, 36), new d(false, 456, PsExtractor.AUDIO_STREAM, 18, 18, 16, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 48), new d(false, 576, 224, 20, 20, 16, 144, 56), new d(false, 696, 272, 22, 22, 16, 174, 68), new d(false, 816, 336, 24, 24, 16, Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE, 56), new d(false, 1050, TTAdConstant.DOWNLOAD_URL_CODE, 18, 18, 36, 175, 68), new d(false, 1304, 496, 20, 20, 36, 163, 62), new a()};
        f69137i = dVarArr;
        f69138j = dVarArr;
    }

    public d(boolean z10, int i10, int i11, int i12, int i13, int i14) {
        this(z10, i10, i11, i12, i13, i14, i10, i11);
    }

    private int e() {
        int i10 = this.f69144f;
        int i11 = 1;
        if (i10 != 1) {
            i11 = 2;
            if (i10 != 2 && i10 != 4) {
                if (i10 == 16) {
                    return 4;
                }
                if (i10 == 36) {
                    return 6;
                }
                throw new IllegalStateException("Cannot handle this number of data regions");
            }
        }
        return i11;
    }

    private int k() {
        int i10 = this.f69144f;
        if (i10 == 1 || i10 == 2) {
            return 1;
        }
        if (i10 == 4) {
            return 2;
        }
        if (i10 == 16) {
            return 4;
        }
        if (i10 == 36) {
            return 6;
        }
        throw new IllegalStateException("Cannot handle this number of data regions");
    }

    public static d l(int i10, SymbolShapeHint symbolShapeHint, com.google.zxing.c cVar, com.google.zxing.c cVar2, boolean z10) {
        for (d dVar : f69138j) {
            if (!(symbolShapeHint == SymbolShapeHint.FORCE_SQUARE && dVar.f69139a) && ((symbolShapeHint != SymbolShapeHint.FORCE_RECTANGLE || dVar.f69139a) && i10 <= dVar.f69140b)) {
                return dVar;
            }
        }
        if (!z10) {
            return null;
        }
        throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: " + i10);
    }

    public final int a() {
        return this.f69140b;
    }

    public int b(int i10) {
        return this.f69145g;
    }

    public final int c() {
        return this.f69141c;
    }

    public final int d(int i10) {
        return this.f69146h;
    }

    public int f() {
        return this.f69140b / this.f69145g;
    }

    public final int g() {
        return k() * this.f69143e;
    }

    public final int h() {
        return e() * this.f69142d;
    }

    public final int i() {
        return g() + (k() * 2);
    }

    public final int j() {
        return h() + (e() * 2);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f69139a ? "Rectangular Symbol:" : "Square Symbol:");
        sb2.append(" data region ");
        sb2.append(this.f69142d);
        sb2.append('x');
        sb2.append(this.f69143e);
        sb2.append(", symbol size ");
        sb2.append(j());
        sb2.append('x');
        sb2.append(i());
        sb2.append(", symbol data size ");
        sb2.append(h());
        sb2.append('x');
        sb2.append(g());
        sb2.append(", codewords ");
        sb2.append(this.f69140b);
        sb2.append('+');
        sb2.append(this.f69141c);
        return sb2.toString();
    }

    d(boolean z10, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f69139a = z10;
        this.f69140b = i10;
        this.f69141c = i11;
        this.f69142d = i12;
        this.f69143e = i13;
        this.f69144f = i14;
        this.f69145g = i15;
        this.f69146h = i16;
    }
}
