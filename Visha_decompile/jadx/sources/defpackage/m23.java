package defpackage;

import android.view.MotionEvent;
import android.view.View;

public abstract class m23 {

    public static class a implements View.OnTouchListener {
        public int b;
        public int c;
        public float d;
        public float e;
        public boolean f;

        public a(int i, int i2) {
            this.b = i;
            this.c = i2;
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.d = motionEvent.getX();
                this.e = motionEvent.getY();
                this.f = false;
            } else if (action == 1) {
                p06.d0("dl_brower_rp_c_adl_move");
            } else if (action == 2) {
                float y = motionEvent.getY() - this.e;
                if (y != 0.0f) {
                    int y2 = (int) (view.getY() + y);
                    int height = view.getHeight() + y2;
                    if (y2 > this.b && height < this.c) {
                        view.setTranslationY(y + view.getTranslationY());
                        this.f = true;
                    }
                }
            }
            return this.f;
        }
    }

    public static void a(View view, int i, int i2) {
        view.setOnTouchListener(new a(i, i2));
    }
}
