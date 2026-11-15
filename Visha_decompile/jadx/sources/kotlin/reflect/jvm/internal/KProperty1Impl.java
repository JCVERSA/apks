package kotlin.reflect.jvm.internal;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.c74;
import defpackage.cf5;
import defpackage.ti8;
import defpackage.y45;
import defpackage.yi5;
import java.lang.reflect.Member;
import kotlin.LazyThreadSafetyMode;

public class KProperty1Impl extends KPropertyImpl implements cf5 {
    public final yi5 o;
    public final yi5 p;

    public static final class a extends KPropertyImpl.Getter implements cf5.a {
        public final KProperty1Impl j;

        public a(KProperty1Impl kProperty1Impl) {
            y45.j(kProperty1Impl, "property");
            this.j = kProperty1Impl;
        }

        @Override
        public KProperty1Impl h() {
            return this.j;
        }

        @Override
        public Object invoke(Object obj) {
            return h().get(obj);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty1Impl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, Object obj) {
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
            public final KProperty1Impl.a invoke() {
                return new KProperty1Impl.a(this.this$0);
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

    @Override
    public a getGetter() {
        return (a) this.o.getValue();
    }

    @Override
    public Object get(Object obj) {
        return getGetter().call(obj);
    }

    @Override
    public Object getDelegate(Object obj) {
        return F((Member) this.p.getValue(), obj, null);
    }

    @Override
    public Object invoke(Object obj) {
        return get(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty1Impl(KDeclarationContainerImpl kDeclarationContainerImpl, ti8 ti8Var) {
        super(kDeclarationContainerImpl, ti8Var);
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        y45.j(ti8Var, "descriptor");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.o = kotlin.b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final KProperty1Impl.a invoke() {
                return new KProperty1Impl.a(this.this$0);
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
