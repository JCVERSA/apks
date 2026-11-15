package kotlinx.serialization.json;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    private boolean f65273a;

    private boolean f65274b;

    private boolean f65275c;

    private boolean f65276d;

    private boolean f65277e;

    private boolean f65278f;

    private String f65279g;

    private boolean f65280h;

    private boolean f65281i;

    private String f65282j;

    private boolean f65283k;

    private boolean f65284l;

    private ty.c f65285m;

    public d(a json) {
        Intrinsics.h(json, "json");
        this.f65273a = json.e().e();
        this.f65274b = json.e().f();
        this.f65275c = json.e().g();
        this.f65276d = json.e().l();
        this.f65277e = json.e().b();
        this.f65278f = json.e().h();
        this.f65279g = json.e().i();
        this.f65280h = json.e().d();
        this.f65281i = json.e().k();
        this.f65282j = json.e().c();
        this.f65283k = json.e().a();
        this.f65284l = json.e().j();
        this.f65285m = json.a();
    }

    public final f a() {
        if (this.f65281i && !Intrinsics.c(this.f65282j, NativeComponentConstants.KEY_COMPONENT_TYPE)) {
            throw new IllegalArgumentException("Class discriminator should not be specified when array polymorphism is specified");
        }
        if (this.f65278f) {
            if (!Intrinsics.c(this.f65279g, "    ")) {
                String str = this.f65279g;
                for (int i10 = 0; i10 < str.length(); i10++) {
                    char cCharAt = str.charAt(i10);
                    if (cCharAt != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n') {
                        throw new IllegalArgumentException(("Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had " + this.f65279g).toString());
                    }
                }
            }
        } else if (!Intrinsics.c(this.f65279g, "    ")) {
            throw new IllegalArgumentException("Indent should not be specified when default printing mode is used");
        }
        return new f(this.f65273a, this.f65275c, this.f65276d, this.f65277e, this.f65278f, this.f65274b, this.f65279g, this.f65280h, this.f65281i, this.f65282j, this.f65283k, this.f65284l);
    }

    public final ty.c b() {
        return this.f65285m;
    }

    public final void c(boolean z10) {
        this.f65277e = z10;
    }

    public final void d(boolean z10) {
        this.f65273a = z10;
    }

    public final void e(boolean z10) {
        this.f65274b = z10;
    }

    public final void f(boolean z10) {
        this.f65275c = z10;
    }
}
