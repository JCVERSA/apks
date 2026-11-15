package androidx.compose.material3;

import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import androidx.compose.runtime.s1;
import androidx.compose.ui.graphics.u1;
import kotlin.jvm.functions.Function0;
import org.mvel2.ast.ASTNode;

public abstract class ColorSchemeKt {

    private static final s1 f3204a = CompositionLocalKt.f(new Function0<androidx.compose.material3.a>() {
        @Override
        public final a invoke() {
            return ColorSchemeKt.e(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -1, 15, null);
        }
    });

    private static final s1 f3205b = CompositionLocalKt.f(new Function0<Boolean>() {
        @Override
        public final Boolean invoke() {
            return Boolean.TRUE;
        }
    });

    public class a {

        public static final int[] f3206a;

        static {
            int[] iArr = new int[ColorSchemeKeyTokens.values().length];
            try {
                iArr[ColorSchemeKeyTokens.Background.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Error.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ColorSchemeKeyTokens.ErrorContainer.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InverseOnSurface.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InversePrimary.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InverseSurface.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnBackground.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnError.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnErrorContainer.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimary.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimaryContainer.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondary.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondaryContainer.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSurface.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSurfaceVariant.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceTint.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiary.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiaryContainer.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Outline.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OutlineVariant.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Primary.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[ColorSchemeKeyTokens.PrimaryContainer.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Scrim.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Secondary.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SecondaryContainer.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Surface.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceVariant.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceBright.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainer.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerHigh.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerHighest.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerLow.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerLowest.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceDim.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Tertiary.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[ColorSchemeKeyTokens.TertiaryContainer.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            f3206a = iArr;
        }
    }

    public static final long a(androidx.compose.material3.a aVar, ColorSchemeKeyTokens colorSchemeKeyTokens) {
        switch (a.f3206a[colorSchemeKeyTokens.ordinal()]) {
            case 1:
                return aVar.a();
            case 2:
                return aVar.b();
            case 3:
                return aVar.c();
            case 4:
                return aVar.d();
            case 5:
                return aVar.e();
            case 6:
                return aVar.f();
            case 7:
                return aVar.g();
            case 8:
                return aVar.h();
            case 9:
                return aVar.i();
            case 10:
                return aVar.j();
            case 11:
                return aVar.k();
            case 12:
                return aVar.l();
            case 13:
                return aVar.m();
            case 14:
                return aVar.n();
            case 15:
                return aVar.o();
            case 16:
                return aVar.G();
            case 17:
                return aVar.p();
            case 18:
                return aVar.q();
            case 19:
                return aVar.r();
            case 20:
                return aVar.s();
            case 21:
                return aVar.t();
            case 22:
                return aVar.u();
            case 23:
                return aVar.v();
            case 24:
                return aVar.w();
            case 25:
                return aVar.x();
            case 26:
                return aVar.y();
            case 27:
                return aVar.H();
            case 28:
                return aVar.z();
            case NOTIFICATION_REDIRECT_VALUE:
                return aVar.A();
            case 30:
                return aVar.B();
            case TEMPLATE_HTML_SIZE_VALUE:
                return aVar.C();
            case 32:
                return aVar.D();
            case 33:
                return aVar.E();
            case 34:
                return aVar.F();
            case 35:
                return aVar.I();
            case 36:
                return aVar.J();
            default:
                return u1.f4349b.e();
        }
    }

    public static final s1 b() {
        return f3204a;
    }

    public static final long c(ColorSchemeKeyTokens colorSchemeKeyTokens, i iVar, int i10) {
        if (k.H()) {
            k.Q(-810780884, i10, -1, "androidx.compose.material3.<get-value> (ColorScheme.kt:945)");
        }
        long jA = a(e.f3239a.a(iVar, 6), colorSchemeKeyTokens);
        if (k.H()) {
            k.P();
        }
        return jA;
    }

    public static final androidx.compose.material3.a d(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45) {
        return new androidx.compose.material3.a(j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, j35, j36, j37, j38, j39, j45, j40, j41, j42, j43, j44, null);
    }

    public static androidx.compose.material3.a e(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, int i10, int i11, Object obj) {
        long jT = (i10 & 1) != 0 ? r.a.f70285a.t() : j10;
        return d(jT, (i10 & 2) != 0 ? r.a.f70285a.j() : j11, (i10 & 4) != 0 ? r.a.f70285a.u() : j12, (i10 & 8) != 0 ? r.a.f70285a.k() : j13, (i10 & 16) != 0 ? r.a.f70285a.e() : j14, (i10 & 32) != 0 ? r.a.f70285a.w() : j15, (i10 & 64) != 0 ? r.a.f70285a.l() : j16, (i10 & 128) != 0 ? r.a.f70285a.x() : j17, (i10 & 256) != 0 ? r.a.f70285a.m() : j18, (i10 & 512) != 0 ? r.a.f70285a.H() : j19, (i10 & 1024) != 0 ? r.a.f70285a.p() : j20, (i10 & 2048) != 0 ? r.a.f70285a.I() : j21, (i10 & 4096) != 0 ? r.a.f70285a.q() : j22, (i10 & 8192) != 0 ? r.a.f70285a.a() : j23, (i10 & 16384) != 0 ? r.a.f70285a.g() : j24, (i10 & 32768) != 0 ? r.a.f70285a.y() : j25, (i10 & 65536) != 0 ? r.a.f70285a.n() : j26, (i10 & 131072) != 0 ? r.a.f70285a.G() : j27, (i10 & 262144) != 0 ? r.a.f70285a.o() : j28, (i10 & 524288) != 0 ? jT : j29, (i10 & 1048576) != 0 ? r.a.f70285a.f() : j30, (i10 & 2097152) != 0 ? r.a.f70285a.d() : j31, (i10 & 4194304) != 0 ? r.a.f70285a.b() : j32, (i10 & 8388608) != 0 ? r.a.f70285a.h() : j33, (i10 & 16777216) != 0 ? r.a.f70285a.c() : j34, (i10 & ASTNode.PCTX_STORED) != 0 ? r.a.f70285a.i() : j35, (i10 & 67108864) != 0 ? r.a.f70285a.r() : j36, (i10 & ASTNode.NOJIT) != 0 ? r.a.f70285a.s() : j37, (i10 & ASTNode.DEOP) != 0 ? r.a.f70285a.v() : j38, (i10 & ASTNode.DISCARD) != 0 ? r.a.f70285a.z() : j39, (i10 & 1073741824) != 0 ? r.a.f70285a.A() : j40, (i10 & Integer.MIN_VALUE) != 0 ? r.a.f70285a.B() : j41, (i11 & 1) != 0 ? r.a.f70285a.C() : j42, (i11 & 2) != 0 ? r.a.f70285a.D() : j43, (i11 & 4) != 0 ? r.a.f70285a.E() : j44, (i11 & 8) != 0 ? r.a.f70285a.F() : j45);
    }
}
