package defpackage;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import com.transsion.widgets.RoundImageView;

public abstract class pcc {

    public class a extends ViewOutlineProvider {
        @Override
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), com.transsion.utils.a.d(se.a(), 2.0f));
        }
    }

    public class b extends ViewOutlineProvider {
        public final RoundImageView a;

        public b(RoundImageView roundImageView) {
            this.a = roundImageView;
        }

        @Override
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.a.getCornerRadius());
        }
    }

    public class c extends ViewOutlineProvider {
        public final RoundImageView a;

        public c(RoundImageView roundImageView) {
            this.a = roundImageView;
        }

        @Override
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight() + 20, this.a.getCornerRadius());
        }
    }

    public class d extends ViewOutlineProvider {
        public final int a;
        public final float b;

        public d(int i, float f) {
            this.a = i;
            this.b = f;
        }

        @Override
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight() + this.a, this.b);
            outline.setAlpha(0.15f);
        }
    }

    public static void a(View view, float f, int i, float f2) {
        e(view, new d(i, f2), f);
    }

    public static void b(RoundImageView roundImageView) {
        e(roundImageView, new c(roundImageView), 50.0f);
    }

    public static void c(RoundImageView roundImageView) {
        e(roundImageView, new b(roundImageView), 135.0f);
    }

    public static void d(ImageView imageView) {
        e(imageView, new a(), 8.0f);
    }

    public static void e(View view, ViewOutlineProvider viewOutlineProvider, float f) {
        view.setElevation(f);
        view.setClipToOutline(true);
        view.setOutlineProvider(viewOutlineProvider);
    }
}
