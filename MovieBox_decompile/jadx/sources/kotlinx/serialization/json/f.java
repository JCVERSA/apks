package kotlinx.serialization.json;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.tools.zip.UnixStat;

public final class f {

    private final boolean f65286a;

    private final boolean f65287b;

    private final boolean f65288c;

    private final boolean f65289d;

    private final boolean f65290e;

    private final boolean f65291f;

    private final String f65292g;

    private final boolean f65293h;

    private final boolean f65294i;

    private final String f65295j;

    private final boolean f65296k;

    private final boolean f65297l;

    public f() {
        this(false, false, false, false, false, false, null, false, false, null, false, false, UnixStat.PERM_MASK, null);
    }

    public final boolean a() {
        return this.f65296k;
    }

    public final boolean b() {
        return this.f65289d;
    }

    public final String c() {
        return this.f65295j;
    }

    public final boolean d() {
        return this.f65293h;
    }

    public final boolean e() {
        return this.f65286a;
    }

    public final boolean f() {
        return this.f65291f;
    }

    public final boolean g() {
        return this.f65287b;
    }

    public final boolean h() {
        return this.f65290e;
    }

    public final String i() {
        return this.f65292g;
    }

    public final boolean j() {
        return this.f65297l;
    }

    public final boolean k() {
        return this.f65294i;
    }

    public final boolean l() {
        return this.f65288c;
    }

    public String toString() {
        return "JsonConfiguration(encodeDefaults=" + this.f65286a + ", ignoreUnknownKeys=" + this.f65287b + ", isLenient=" + this.f65288c + ", allowStructuredMapKeys=" + this.f65289d + ", prettyPrint=" + this.f65290e + ", explicitNulls=" + this.f65291f + ", prettyPrintIndent='" + this.f65292g + "', coerceInputValues=" + this.f65293h + ", useArrayPolymorphism=" + this.f65294i + ", classDiscriminator='" + this.f65295j + "', allowSpecialFloatingPointValues=" + this.f65296k + ')';
    }

    public f(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, String prettyPrintIndent, boolean z16, boolean z17, String classDiscriminator, boolean z18, boolean z19) {
        Intrinsics.h(prettyPrintIndent, "prettyPrintIndent");
        Intrinsics.h(classDiscriminator, "classDiscriminator");
        this.f65286a = z10;
        this.f65287b = z11;
        this.f65288c = z12;
        this.f65289d = z13;
        this.f65290e = z14;
        this.f65291f = z15;
        this.f65292g = prettyPrintIndent;
        this.f65293h = z16;
        this.f65294i = z17;
        this.f65295j = classDiscriminator;
        this.f65296k = z18;
        this.f65297l = z19;
    }

    public f(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, String str, boolean z16, boolean z17, String str2, boolean z18, boolean z19, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11, (i10 & 4) != 0 ? false : z12, (i10 & 8) != 0 ? false : z13, (i10 & 16) != 0 ? false : z14, (i10 & 32) != 0 ? true : z15, (i10 & 64) != 0 ? "    " : str, (i10 & 128) != 0 ? false : z16, (i10 & 256) != 0 ? false : z17, (i10 & 512) != 0 ? NativeComponentConstants.KEY_COMPONENT_TYPE : str2, (i10 & 1024) == 0 ? z18 : false, (i10 & 2048) == 0 ? z19 : true);
    }
}
