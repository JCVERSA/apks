package androidx.compose.ui.platform;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

public interface ViewCompositionStrategy {

    public static final a f5372a = a.f5375a;

    public static final class a {

        static final a f5375a = new a();

        private a() {
        }

        public final ViewCompositionStrategy a() {
            return DisposeOnDetachedFromWindowOrReleasedFromPool.f5373b;
        }
    }

    Function0 a(AbstractComposeView abstractComposeView);

    public static final class DisposeOnDetachedFromWindowOrReleasedFromPool implements ViewCompositionStrategy {

        public static final DisposeOnDetachedFromWindowOrReleasedFromPool f5373b = new DisposeOnDetachedFromWindowOrReleasedFromPool();

        private DisposeOnDetachedFromWindowOrReleasedFromPool() {
        }

        public static final void c(AbstractComposeView abstractComposeView) {
            abstractComposeView.disposeComposition();
        }

        @Override
        public Function0 a(final AbstractComposeView abstractComposeView) {
            final a aVar = new a(abstractComposeView);
            abstractComposeView.addOnAttachStateChangeListener(aVar);
            final h1.b bVar = new h1.b() {
                @Override
                public final void onRelease() {
                    ViewCompositionStrategy.DisposeOnDetachedFromWindowOrReleasedFromPool.c(abstractComposeView);
                }
            };
            h1.a.a(abstractComposeView, bVar);
            return new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m162invoke();
                    return Unit.f64096a;
                }

                public final void m162invoke() {
                    abstractComposeView.removeOnAttachStateChangeListener(aVar);
                    h1.a.g(abstractComposeView, bVar);
                }
            };
        }

        public static final class a implements View.OnAttachStateChangeListener {

            final AbstractComposeView f5374a;

            a(AbstractComposeView abstractComposeView) {
                this.f5374a = abstractComposeView;
            }

            @Override
            public void onViewDetachedFromWindow(View view) {
                if (h1.a.f(this.f5374a)) {
                    return;
                }
                this.f5374a.disposeComposition();
            }

            @Override
            public void onViewAttachedToWindow(View view) {
            }
        }
    }
}
