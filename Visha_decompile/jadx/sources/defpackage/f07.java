package defpackage;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;
import kotlin.reflect.jvm.internal.impl.types.j;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;

public final class f07 extends sm9 implements rr0 {
    public final CaptureStatus c;
    public final NewCapturedTypeConstructor d;
    public final mgb e;
    public final j f;
    public final boolean g;
    public final boolean h;

    public f07(CaptureStatus captureStatus, NewCapturedTypeConstructor newCapturedTypeConstructor, mgb mgbVar, j jVar, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(captureStatus, newCapturedTypeConstructor, mgbVar, (i & 8) != 0 ? j.c.h() : jVar, (i & 16) != 0 ? false : z, (i & 32) != 0 ? false : z2);
    }

    @Override
    public List G0() {
        return y71.k();
    }

    @Override
    public j H0() {
        return this.f;
    }

    @Override
    public boolean J0() {
        return this.g;
    }

    @Override
    public sm9 O0(j jVar) {
        y45.j(jVar, "newAttributes");
        return new f07(this.c, I0(), this.e, jVar, J0(), this.h);
    }

    public final CaptureStatus R0() {
        return this.c;
    }

    @Override
    public NewCapturedTypeConstructor I0() {
        return this.d;
    }

    public final mgb T0() {
        return this.e;
    }

    public final boolean U0() {
        return this.h;
    }

    @Override
    public f07 M0(boolean z) {
        return new f07(this.c, I0(), this.e, H0(), z, false, 32, null);
    }

    @Override
    public f07 S0(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        CaptureStatus captureStatus = this.c;
        NewCapturedTypeConstructor newCapturedTypeConstructorI = I0().a(cVar);
        mgb mgbVar = this.e;
        return new f07(captureStatus, newCapturedTypeConstructorI, mgbVar != null ? cVar.a(mgbVar).L0() : null, H0(), J0(), false, 32, null);
    }

    @Override
    public MemberScope p() {
        return id3.a(ErrorScopeKind.CAPTURED_TYPE_SCOPE, true, new String[0]);
    }

    public f07(CaptureStatus captureStatus, NewCapturedTypeConstructor newCapturedTypeConstructor, mgb mgbVar, j jVar, boolean z, boolean z2) {
        y45.j(captureStatus, "captureStatus");
        y45.j(newCapturedTypeConstructor, "constructor");
        y45.j(jVar, "attributes");
        this.c = captureStatus;
        this.d = newCapturedTypeConstructor;
        this.e = mgbVar;
        this.f = jVar;
        this.g = z;
        this.h = z2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public f07(CaptureStatus captureStatus, mgb mgbVar, mcb mcbVar, hcb hcbVar) {
        y45.j(captureStatus, "captureStatus");
        y45.j(mcbVar, "projection");
        y45.j(hcbVar, "typeParameter");
        j jVar = null;
        boolean z = false;
        boolean z2 = false;
        this(captureStatus, new NewCapturedTypeConstructor(mcbVar, null, null, hcbVar, 6, null), mgbVar, jVar, z, z2, 56, null);
    }
}
