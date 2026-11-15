package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.reflect.jvm.internal.KCallableImpl;
import kotlin.reflect.jvm.internal.KDeclarationContainerImpl;
import kotlin.reflect.jvm.internal.KFunctionImpl;
import kotlin.reflect.jvm.internal.KMutableProperty0Impl;
import kotlin.reflect.jvm.internal.KMutableProperty1Impl;
import kotlin.reflect.jvm.internal.KMutableProperty2Impl;
import kotlin.reflect.jvm.internal.KProperty0Impl;
import kotlin.reflect.jvm.internal.KProperty1Impl;
import kotlin.reflect.jvm.internal.KProperty2Impl;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.impl.descriptors.e;

public class el1 extends cu1 {
    public final KDeclarationContainerImpl a;

    public el1(KDeclarationContainerImpl kDeclarationContainerImpl) {
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        this.a = kDeclarationContainerImpl;
    }

    @Override
    public KCallableImpl l(e eVar, zfb zfbVar) {
        y45.j(eVar, "descriptor");
        y45.j(zfbVar, "data");
        return new KFunctionImpl(this.a, eVar);
    }

    @Override
    public KCallableImpl i(ti8 ti8Var, zfb zfbVar) {
        y45.j(ti8Var, "descriptor");
        y45.j(zfbVar, "data");
        int i = (ti8Var.Z() != null ? 1 : 0) + (ti8Var.b0() != null ? 1 : 0);
        if (ti8Var.y()) {
            if (i == 0) {
                return new KMutableProperty0Impl(this.a, ti8Var);
            }
            if (i == 1) {
                return new KMutableProperty1Impl(this.a, ti8Var);
            }
            if (i == 2) {
                return new KMutableProperty2Impl(this.a, ti8Var);
            }
        } else {
            if (i == 0) {
                return new KProperty0Impl(this.a, ti8Var);
            }
            if (i == 1) {
                return new KProperty1Impl(this.a, ti8Var);
            }
            if (i == 2) {
                return new KProperty2Impl(this.a, ti8Var);
            }
        }
        throw new KotlinReflectionInternalError("Unsupported property: " + ti8Var);
    }
}
