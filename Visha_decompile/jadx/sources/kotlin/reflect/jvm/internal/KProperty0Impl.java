package kotlin.reflect.jvm.internal;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.bf5;
import defpackage.c74;
import defpackage.ti8;
import defpackage.y45;
import defpackage.yi5;
import kotlin.LazyThreadSafetyMode;

public class KProperty0Impl extends KPropertyImpl implements bf5 {
    public final yi5 o;
    public final yi5 p;

    public static final class a extends KPropertyImpl.Getter implements bf5.a {
        public final KProperty0Impl j;

        public a(KProperty0Impl kProperty0Impl) {
            y45.j(kProperty0Impl, "property");
            this.j = kProperty0Impl;
        }

        @Override
        public KProperty0Impl h() {
            return this.j;
        }

        @Override
        public Object invoke() {
            return E().K();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty0Impl(KDeclarationContainerImpl kDeclarationContainerImpl, ti8 ti8Var) {
        super(kDeclarationContainerImpl, ti8Var);
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        y45.j(ti8Var, "descriptor");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.o = kotlin.b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final KProperty0Impl.a invoke() {
                return new KProperty0Impl.a(this.this$0);
            }
        });
        this.p = kotlin.b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final Object invoke() {
                KProperty0Impl kProperty0Impl = this.this$0;
                return kProperty0Impl.F(kProperty0Impl.D(), null, null);
            }
        });
    }

    public Object K() {
        return H().call(new Object[0]);
    }

    @Override
    public a getGetter() {
        return (a) this.o.getValue();
    }

    @Override
    public Object getDelegate() {
        return this.p.getValue();
    }

    @Override
    public Object invoke() {
        return K();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty0Impl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, Object obj) {
        super(kDeclarationContainerImpl, str, str2, obj);
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        y45.j(str, "name");
        y45.j(str2, "signature");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.o = kotlin.b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final KProperty0Impl.a invoke() {
                return new KProperty0Impl.a(this.this$0);
            }
        });
        this.p = kotlin.b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final Object invoke() {
                KProperty0Impl kProperty0Impl = this.this$0;
                return kProperty0Impl.F(kProperty0Impl.D(), null, null);
            }
        });
    }
}
