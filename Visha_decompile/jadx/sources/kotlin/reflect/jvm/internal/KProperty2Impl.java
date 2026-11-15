package kotlin.reflect.jvm.internal;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.c74;
import defpackage.df5;
import defpackage.ti8;
import defpackage.y45;
import defpackage.yi5;
import java.lang.reflect.Member;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.CallableReference;

public class KProperty2Impl extends KPropertyImpl implements df5 {
    public final yi5 o;
    public final yi5 p;

    public static final class a extends KPropertyImpl.Getter implements df5.a {
        public final KProperty2Impl j;

        public a(KProperty2Impl kProperty2Impl) {
            y45.j(kProperty2Impl, "property");
            this.j = kProperty2Impl;
        }

        @Override
        public KProperty2Impl h() {
            return this.j;
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            return h().K(obj, obj2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty2Impl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2) {
        super(kDeclarationContainerImpl, str, str2, CallableReference.NO_RECEIVER);
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        y45.j(str, "name");
        y45.j(str2, "signature");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.o = kotlin.b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final KProperty2Impl.a invoke() {
                return new KProperty2Impl.a(this.this$0);
            }
        });
        this.p = kotlin.b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final Member invoke() {
                return this.this$0.D();
            }
        });
    }

    public Object K(Object obj, Object obj2) {
        return getGetter().call(obj, obj2);
    }

    @Override
    public a getGetter() {
        return (a) this.o.getValue();
    }

    @Override
    public Object getDelegate(Object obj, Object obj2) {
        return F((Member) this.p.getValue(), obj, obj2);
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return K(obj, obj2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty2Impl(KDeclarationContainerImpl kDeclarationContainerImpl, ti8 ti8Var) {
        super(kDeclarationContainerImpl, ti8Var);
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        y45.j(ti8Var, "descriptor");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.o = kotlin.b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final KProperty2Impl.a invoke() {
                return new KProperty2Impl.a(this.this$0);
            }
        });
        this.p = kotlin.b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final Member invoke() {
                return this.this$0.D();
            }
        });
    }
}
