package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import androidx.compose.runtime.a3;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.font.e0;
import androidx.compose.ui.text.x;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import k0.g0;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

public final class AndroidParagraphIntrinsics implements androidx.compose.ui.text.o {

    private final String f5991a;

    private final d0 f5992b;

    private final List f5993c;

    private final List f5994d;

    private final androidx.compose.ui.text.font.h.b f5995e;

    private final o0.e f5996f;

    private final AndroidTextPaint f5997g;

    private final CharSequence f5998h;

    private final g0 f5999i;

    private q f6000j;

    private final boolean f6001k;

    private final int f6002l;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.List] */
    public AndroidParagraphIntrinsics(String str, d0 d0Var, List list, List list2, androidx.compose.ui.text.font.h.b bVar, o0.e eVar) {
        this.f5991a = str;
        this.f5992b = d0Var;
        this.f5993c = list;
        this.f5994d = list2;
        this.f5995e = bVar;
        this.f5996f = eVar;
        AndroidTextPaint androidTextPaint = new AndroidTextPaint(1, eVar.getDensity());
        this.f5997g = androidTextPaint;
        this.f6001k = !d.c(d0Var) ? false : ((Boolean) k.f6019a.a().getValue()).booleanValue();
        this.f6002l = d.d(d0Var.B(), d0Var.u());
        Function4<androidx.compose.ui.text.font.h, androidx.compose.ui.text.font.p, androidx.compose.ui.text.font.n, androidx.compose.ui.text.font.o, Typeface> function4 = new Function4<androidx.compose.ui.text.font.h, androidx.compose.ui.text.font.p, androidx.compose.ui.text.font.n, androidx.compose.ui.text.font.o, Typeface>() {
            {
                super(4);
            }

            @Override
            public Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return m179invokeDPcqOEQ((androidx.compose.ui.text.font.h) obj, (androidx.compose.ui.text.font.p) obj2, ((androidx.compose.ui.text.font.n) obj3).i(), ((androidx.compose.ui.text.font.o) obj4).k());
            }

            public final Typeface m179invokeDPcqOEQ(androidx.compose.ui.text.font.h hVar, androidx.compose.ui.text.font.p pVar, int i10, int i11) {
                a3 a3VarA = this.this$0.g().a(hVar, pVar, i10, i11);
                if (a3VarA instanceof e0.a) {
                    Object value = a3VarA.getValue();
                    Intrinsics.f(value, "null cannot be cast to non-null type android.graphics.Typeface");
                    return (Typeface) value;
                }
                q qVar = new q(a3VarA, this.this$0.f6000j);
                this.this$0.f6000j = qVar;
                return qVar.a();
            }
        };
        androidx.compose.ui.text.platform.extensions.f.e(androidTextPaint, d0Var.E());
        x xVarA = androidx.compose.ui.text.platform.extensions.f.a(androidTextPaint, d0Var.L(), function4, eVar, !((Collection) list).isEmpty());
        if (xVarA != null) {
            int size = list.size() + 1;
            list = new ArrayList(size);
            int i10 = 0;
            while (i10 < size) {
                list.add(i10 == 0 ? new AnnotatedString.c(xVarA, 0, this.f5991a.length()) : (AnnotatedString.c) this.f5993c.get(i10 - 1));
                i10++;
            }
        }
        CharSequence charSequenceA = c.a(this.f5991a, this.f5997g.getTextSize(), this.f5992b, list, this.f5994d, this.f5996f, function4, this.f6001k);
        this.f5998h = charSequenceA;
        this.f5999i = new g0(charSequenceA, this.f5997g, this.f6002l);
    }

    @Override
    public float a() {
        return this.f5999i.b();
    }

    @Override
    public boolean b() {
        q qVar = this.f6000j;
        return (qVar != null ? qVar.b() : false) || (!this.f6001k && d.c(this.f5992b) && ((Boolean) k.f6019a.a().getValue()).booleanValue());
    }

    @Override
    public float c() {
        return this.f5999i.c();
    }

    public final CharSequence f() {
        return this.f5998h;
    }

    public final androidx.compose.ui.text.font.h.b g() {
        return this.f5995e;
    }

    public final g0 h() {
        return this.f5999i;
    }

    public final d0 i() {
        return this.f5992b;
    }

    public final int j() {
        return this.f6002l;
    }

    public final AndroidTextPaint k() {
        return this.f5997g;
    }
}
