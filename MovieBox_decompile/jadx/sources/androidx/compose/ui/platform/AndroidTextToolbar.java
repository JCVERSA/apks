package androidx.compose.ui.platform;

import android.view.ActionMode;
import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

public final class AndroidTextToolbar implements h2 {

    private final View f5274a;

    private ActionMode f5275b;

    private final h0.b f5276c = new h0.b(new Function0<Unit>() {
        {
            super(0);
        }

        @Override
        public Object invoke() {
            m159invoke();
            return Unit.f64096a;
        }

        public final void m159invoke() {
            this.this$0.f5275b = null;
        }
    }, null, null, null, null, null, 62, null);

    private TextToolbarStatus f5277d = TextToolbarStatus.Hidden;

    public AndroidTextToolbar(View view) {
        this.f5274a = view;
    }

    @Override
    public void a(y.i iVar, Function0 function0, Function0 function1, Function0 function2, Function0 function3) {
        this.f5276c.l(iVar);
        this.f5276c.h(function0);
        this.f5276c.i(function2);
        this.f5276c.j(function1);
        this.f5276c.k(function3);
        ActionMode actionMode = this.f5275b;
        if (actionMode == null) {
            this.f5277d = TextToolbarStatus.Shown;
            this.f5275b = i2.f5514a.b(this.f5274a, new h0.a(this.f5276c), 1);
        } else if (actionMode != null) {
            actionMode.invalidate();
        }
    }

    @Override
    public TextToolbarStatus getStatus() {
        return this.f5277d;
    }

    @Override
    public void hide() {
        this.f5277d = TextToolbarStatus.Hidden;
        ActionMode actionMode = this.f5275b;
        if (actionMode != null) {
            actionMode.finish();
        }
        this.f5275b = null;
    }
}
