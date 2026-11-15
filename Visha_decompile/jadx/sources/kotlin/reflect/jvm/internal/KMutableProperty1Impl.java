package kotlin.reflect.jvm.internal;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.c74;
import defpackage.ti8;
import defpackage.xe5;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import kotlin.LazyThreadSafetyMode;
import kotlin.reflect.full.IllegalCallableAccessException;

public final class KMutableProperty1Impl extends KProperty1Impl implements xe5 {
    public final yi5 q;

    public static final class a extends KPropertyImpl.Setter implements xe5.a {
        public final KMutableProperty1Impl j;

        public a(KMutableProperty1Impl kMutableProperty1Impl) {
            y45.j(kMutableProperty1Impl, "property");
            this.j = kMutableProperty1Impl;
        }

        @Override
        public KMutableProperty1Impl h() {
            return this.j;
        }

        public void H(Object obj, Object obj2) throws IllegalCallableAccessException {
            h().set(obj, obj2);
        }

        @Override
        public Object invoke(Object obj, Object obj2) throws IllegalCallableAccessException {
            H(obj, obj2);
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty1Impl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, Object obj) {
        super(kDeclarationContainerImpl, str, str2, obj);
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        y45.j(str, "name");
        y45.j(str2, "signature");
        this.q = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            {
                super(0);
            }

            @Override
            public final KMutableProperty1Impl.a invoke() {
                return new KMutableProperty1Impl.a(this.this$0);
            }
        });
    }

    @Override
    public a getSetter() {
        return (a) this.q.getValue();
    }

    @Override
    public void set(Object obj, Object obj2) throws IllegalCallableAccessException {
        getSetter().call(obj, obj2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty1Impl(KDeclarationContainerImpl kDeclarationContainerImpl, ti8 ti8Var) {
        super(kDeclarationContainerImpl, ti8Var);
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        y45.j(ti8Var, "descriptor");
        this.q = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            {
                super(0);
            }

            @Override
            public final KMutableProperty1Impl.a invoke() {
                return new KMutableProperty1Impl.a(this.this$0);
            }
        });
    }
}
