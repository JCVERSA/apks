package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import com.hunantv.media.player.subtitle.MediaFormat;
import defpackage.abb;
import defpackage.by6;
import defpackage.e74;
import defpackage.eh5;
import defpackage.fb3;
import defpackage.gd;
import defpackage.ld;
import defpackage.o54;
import defpackage.qq6;
import defpackage.s0a;
import defpackage.sm9;
import defpackage.vh;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import kotlin.Pair;
import kotlin.collections.a;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.types.Variance;

public abstract class AnnotationUtilKt {
    public static final by6 a;
    public static final by6 b;
    public static final by6 c;
    public static final by6 d;
    public static final by6 e;

    static {
        by6 by6VarG = by6.g("message");
        y45.i(by6VarG, "identifier(\"message\")");
        a = by6VarG;
        by6 by6VarG2 = by6.g("replaceWith");
        y45.i(by6VarG2, "identifier(\"replaceWith\")");
        b = by6VarG2;
        by6 by6VarG3 = by6.g(MediaFormat.KEY_LEVEL);
        y45.i(by6VarG3, "identifier(\"level\")");
        c = by6VarG3;
        by6 by6VarG4 = by6.g("expression");
        y45.i(by6VarG4, "identifier(\"expression\")");
        d = by6VarG4;
        by6 by6VarG5 = by6.g("imports");
        y45.i(by6VarG5, "identifier(\"imports\")");
        e = by6VarG5;
    }

    public static final gd a(final d dVar, String str, String str2, String str3) {
        y45.j(dVar, "<this>");
        y45.j(str, "message");
        y45.j(str2, "replaceWith");
        y45.j(str3, MediaFormat.KEY_LEVEL);
        BuiltInAnnotationDescriptor builtInAnnotationDescriptor = new BuiltInAnnotationDescriptor(dVar, e.a.B, a.p(abb.a(d, new s0a(str2)), abb.a(e, new vh(y71.k(), new e74() {
            {
                super(1);
            }

            @Override
            public final eh5 invoke(qq6 qq6Var) {
                y45.j(qq6Var, "module");
                sm9 sm9VarL = qq6Var.o().l(Variance.INVARIANT, dVar.W());
                y45.i(sm9VarL, "module.builtIns.getArray…ce.INVARIANT, stringType)");
                return sm9VarL;
            }
        }))));
        o54 o54Var = e.a.y;
        Pair pairA = abb.a(a, new s0a(str));
        Pair pairA2 = abb.a(b, new ld(builtInAnnotationDescriptor));
        by6 by6Var = c;
        xw0 xw0VarM = xw0.m(e.a.A);
        y45.i(xw0VarM, "topLevel(StandardNames.FqNames.deprecationLevel)");
        by6 by6VarG = by6.g(str3);
        y45.i(by6VarG, "identifier(level)");
        return new BuiltInAnnotationDescriptor(dVar, o54Var, a.p(pairA, pairA2, abb.a(by6Var, new fb3(xw0VarM, by6VarG))));
    }

    public static gd b(d dVar, String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        if ((i & 4) != 0) {
            str3 = "WARNING";
        }
        return a(dVar, str, str2, str3);
    }
}
