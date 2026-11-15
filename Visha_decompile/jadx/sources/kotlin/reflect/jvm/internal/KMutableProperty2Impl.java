package kotlin.reflect.jvm.internal;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.c74;
import defpackage.ti8;
import defpackage.y45;
import defpackage.ye5;
import defpackage.yi5;
import defpackage.zfb;
import kotlin.LazyThreadSafetyMode;
import kotlin.reflect.full.IllegalCallableAccessException;

public final class KMutableProperty2Impl extends KProperty2Impl implements ye5 {
    public final yi5 q;

    public static final class a extends KPropertyImpl.Setter implements ye5.a {
        public final KMutableProperty2Impl j;

        public a(KMutableProperty2Impl kMutableProperty2Impl) {
            y45.j(kMutableProperty2Impl, "property");
            this.j = kMutableProperty2Impl;
        }

        @Override
        public KMutableProperty2Impl h() {
            return this.j;
        }

        public void H(Object obj, Object obj2, Object obj3) throws IllegalCallableAccessException {
            h().N(obj, obj2, obj3);
        }

        @Override
        public Object invoke(Object obj, Object obj2, Object obj3) throws IllegalCallableAccessException {
            H(obj, obj2, obj3);
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty2Impl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2) {
        super(kDeclarationContainerImpl, str, str2);
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        y45.j(str, "name");
        y45.j(str2, "signature");
        this.q = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            {
                super(0);
            }

            @Override
            public final KMutableProperty2Impl.a invoke() {
                return new KMutableProperty2Impl.a(this.this$0);
            }
        });
    }

    @Override
    public a getSetter() {
        return (a) this.q.getValue();
    }

    public void N(Object obj, Object obj2, Object obj3) throws IllegalCallableAccessException {
        getSetter().call(obj, obj2, obj3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty2Impl(KDeclarationContainerImpl kDeclarationContainerImpl, ti8 ti8Var) {
        super(kDeclarationContainerImpl, ti8Var);
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        y45.j(ti8Var, "descriptor");
        this.q = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            {
                super(0);
            }

            @Override
            public final KMutableProperty2Impl.a invoke() {
                return new KMutableProperty2Impl.a(this.this$0);
            }
        });
    }
}
