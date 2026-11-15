package kotlin.reflect.jvm.internal;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.c74;
import defpackage.ti8;
import defpackage.we5;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import kotlin.LazyThreadSafetyMode;
import kotlin.reflect.full.IllegalCallableAccessException;

public final class KMutableProperty0Impl extends KProperty0Impl implements we5 {
    public final yi5 q;

    public static final class a extends KPropertyImpl.Setter implements we5.a {
        public final KMutableProperty0Impl j;

        public a(KMutableProperty0Impl kMutableProperty0Impl) {
            y45.j(kMutableProperty0Impl, "property");
            this.j = kMutableProperty0Impl;
        }

        @Override
        public KMutableProperty0Impl h() {
            return this.j;
        }

        public void H(Object obj) throws IllegalCallableAccessException {
            h().N(obj);
        }

        @Override
        public Object invoke(Object obj) throws IllegalCallableAccessException {
            H(obj);
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty0Impl(KDeclarationContainerImpl kDeclarationContainerImpl, ti8 ti8Var) {
        super(kDeclarationContainerImpl, ti8Var);
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        y45.j(ti8Var, "descriptor");
        this.q = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            {
                super(0);
            }

            @Override
            public final KMutableProperty0Impl.a invoke() {
                return new KMutableProperty0Impl.a(this.this$0);
            }
        });
    }

    @Override
    public a getSetter() {
        return (a) this.q.getValue();
    }

    public void N(Object obj) throws IllegalCallableAccessException {
        getSetter().call(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty0Impl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, Object obj) {
        super(kDeclarationContainerImpl, str, str2, obj);
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        y45.j(str, "name");
        y45.j(str2, "signature");
        this.q = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            {
                super(0);
            }

            @Override
            public final KMutableProperty0Impl.a invoke() {
                return new KMutableProperty0Impl.a(this.this$0);
            }
        });
    }
}
