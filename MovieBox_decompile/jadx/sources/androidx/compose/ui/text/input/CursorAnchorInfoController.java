package androidx.compose.ui.text.input;

import android.graphics.Matrix;
import android.view.inputmethod.CursorAnchorInfo;
import androidx.compose.ui.graphics.i4;
import androidx.compose.ui.graphics.r0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class CursorAnchorInfoController {

    private final androidx.compose.ui.input.pointer.i0 f5871a;

    private final r f5872b;

    private boolean f5874d;

    private boolean f5875e;

    private boolean f5876f;

    private boolean f5877g;

    private boolean f5878h;

    private boolean f5879i;

    private TextFieldValue f5880j;

    private androidx.compose.ui.text.z f5881k;

    private v f5882l;

    private y.i f5884n;

    private y.i f5885o;

    private final Object f5873c = new Object();

    private Function1 f5883m = new Function1<i4, Unit>() {
        @Override
        public Object invoke(Object obj) {
            m177invoke58bKbWc(((i4) obj).r());
            return Unit.f64096a;
        }

        public final void m177invoke58bKbWc(float[] fArr) {
        }
    };

    private final CursorAnchorInfo.Builder f5886p = new CursorAnchorInfo.Builder();

    private final float[] f5887q = i4.c(null, 1, null);

    private final Matrix f5888r = new Matrix();

    public CursorAnchorInfoController(androidx.compose.ui.input.pointer.i0 i0Var, r rVar) {
        this.f5871a = i0Var;
        this.f5872b = rVar;
    }

    private final void b() {
        if (this.f5872b.isActive()) {
            this.f5883m.invoke(i4.a(this.f5887q));
            this.f5871a.mo115localToScreen58bKbWc(this.f5887q);
            r0.a(this.f5888r, this.f5887q);
            r rVar = this.f5872b;
            CursorAnchorInfo.Builder builder = this.f5886p;
            TextFieldValue textFieldValue = this.f5880j;
            Intrinsics.e(textFieldValue);
            v vVar = this.f5882l;
            Intrinsics.e(vVar);
            androidx.compose.ui.text.z zVar = this.f5881k;
            Intrinsics.e(zVar);
            Matrix matrix = this.f5888r;
            y.i iVar = this.f5884n;
            Intrinsics.e(iVar);
            y.i iVar2 = this.f5885o;
            Intrinsics.e(iVar2);
            rVar.a(j.b(builder, textFieldValue, vVar, zVar, matrix, iVar, iVar2, this.f5876f, this.f5877g, this.f5878h, this.f5879i));
            this.f5875e = false;
        }
    }

    public final void a(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
        synchronized (this.f5873c) {
            try {
                this.f5876f = z12;
                this.f5877g = z13;
                this.f5878h = z14;
                this.f5879i = z15;
                if (z10) {
                    this.f5875e = true;
                    if (this.f5880j != null) {
                        b();
                    }
                }
                this.f5874d = z11;
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
