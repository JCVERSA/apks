package androidx.compose.ui.text.input;

import android.graphics.Matrix;
import android.os.Build;
import android.view.inputmethod.CursorAnchorInfo;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.ranges.RangesKt;

public abstract class j {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [int] */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r17v0, types: [android.view.inputmethod.CursorAnchorInfo$Builder] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v9 */
    private static final CursorAnchorInfo.Builder a(CursorAnchorInfo.Builder builder, int i10, int i11, v vVar, androidx.compose.ui.text.z zVar, y.i iVar) {
        ?? r10;
        int i12 = i10;
        int iA = vVar.a(i12);
        int iA2 = vVar.a(i11);
        float[] fArr = new float[(iA2 - iA) * 4];
        zVar.v().a(androidx.compose.ui.text.c0.b(iA, iA2), fArr, 0);
        while (i12 < i11) {
            int iA3 = vVar.a(i12);
            int i13 = (iA3 - iA) * 4;
            y.i iVar2 = new y.i(fArr[i13], fArr[i13 + 1], fArr[i13 + 2], fArr[i13 + 3]);
            boolean zO = iVar.o(iVar2);
            if (!c(iVar, iVar2.f(), iVar2.i()) || !c(iVar, iVar2.g(), iVar2.c())) {
                r10 = zO;
                r10 = (zO ? 1 : 0) | 2;
            }
            r10 = zO;
            builder.addCharacterBounds(i12, iVar2.f(), iVar2.i(), iVar2.g(), iVar2.c(), zVar.c(iA3) == ResolvedTextDirection.Rtl ? r10 | 4 : r10);
            i12++;
        }
        return builder;
    }

    public static final CursorAnchorInfo b(CursorAnchorInfo.Builder builder, TextFieldValue textFieldValue, v vVar, androidx.compose.ui.text.z zVar, Matrix matrix, y.i iVar, y.i iVar2, boolean z10, boolean z11, boolean z12, boolean z13) {
        builder.reset();
        builder.setMatrix(matrix);
        int iJ = androidx.compose.ui.text.b0.j(textFieldValue.e());
        builder.setSelectionRange(iJ, androidx.compose.ui.text.b0.i(textFieldValue.e()));
        if (z10) {
            d(builder, iJ, vVar, zVar, iVar);
        }
        if (z11) {
            androidx.compose.ui.text.b0 b0VarD = textFieldValue.d();
            int iJ2 = b0VarD != null ? androidx.compose.ui.text.b0.j(b0VarD.n()) : -1;
            androidx.compose.ui.text.b0 b0VarD2 = textFieldValue.d();
            int i10 = b0VarD2 != null ? androidx.compose.ui.text.b0.i(b0VarD2.n()) : -1;
            if (iJ2 >= 0 && iJ2 < i10) {
                builder.setComposingText(iJ2, textFieldValue.f().subSequence(iJ2, i10));
                a(builder, iJ2, i10, vVar, zVar, iVar);
            }
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 33 && z12) {
            g.a(builder, iVar2);
        }
        if (i11 >= 34 && z13) {
            i.a(builder, zVar, iVar);
        }
        return builder.build();
    }

    private static final boolean c(y.i iVar, float f10, float f11) {
        float f12 = iVar.f();
        if (f10 <= iVar.g() && f12 <= f10) {
            float fI = iVar.i();
            if (f11 <= iVar.c() && fI <= f11) {
                return true;
            }
        }
        return false;
    }

    private static final CursorAnchorInfo.Builder d(CursorAnchorInfo.Builder builder, int i10, v vVar, androidx.compose.ui.text.z zVar, y.i iVar) {
        if (i10 < 0) {
            return builder;
        }
        int iA = vVar.a(i10);
        y.i iVarE = zVar.e(iA);
        float fK = RangesKt.k(iVarE.f(), 0.0f, o0.t.g(zVar.y()));
        boolean zC = c(iVar, fK, iVarE.i());
        boolean zC2 = c(iVar, fK, iVarE.c());
        boolean z10 = zVar.c(iA) == ResolvedTextDirection.Rtl;
        int i11 = (zC || zC2) ? 1 : 0;
        if (!zC || !zC2) {
            i11 |= 2;
        }
        builder.setInsertionMarkerLocation(fK, iVarE.i(), iVarE.c(), iVarE.c(), z10 ? i11 | 4 : i11);
        return builder;
    }
}
