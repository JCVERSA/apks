package cb;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

class t extends r {

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            if (t.this.f16923e.isEmpty()) {
                return;
            }
            outline.setPath(t.this.f16923e);
        }
    }

    t(View view) {
        l(view);
    }

    private void l(View view) {
        view.setOutlineProvider(new a());
    }

    @Override
    void b(View view) {
        view.setClipToOutline(!j());
        if (j()) {
            view.invalidate();
        } else {
            view.invalidateOutline();
        }
    }

    @Override
    boolean j() {
        return this.f16919a;
    }
}
