package g0;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.widget.Button;
import ru.zdevs.zarchiver.R;

public final class j implements DialogInterface.OnShowListener {

    public final Context f968a;

    public final k f969b;

    public class a implements View.OnClickListener {

        public final Button f970a;

        public a(Button button) {
            this.f970a = button;
        }

        @Override
        public final void onClick(View view) {
            j jVar = j.this;
            try {
                k kVar = jVar.f969b;
                Context context = jVar.f968a;
                kVar.f973h = new z0.d(context, view, 48, context.getString(R.string.HELP_GET_PASSWORD), z0.c.a(8), this.f970a.getPaddingTop());
                z0.d dVar = jVar.f969b.f973h;
                dVar.f2343f.showAtLocation(dVar.f2338a, dVar.f2339b, 0, 0);
                dVar.f2342e.getViewTreeObserver().addOnPreDrawListener(dVar);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public j(k kVar, Context context) {
        this.f969b = kVar;
        this.f968a = context;
    }

    @Override
    public final void onShow(DialogInterface dialogInterface) {
        k kVar = this.f969b;
        i.i(kVar.f972g);
        if (Build.VERSION.SDK_INT < 21 || kVar.f972g == null) {
            return;
        }
        Context context = this.f968a;
        Drawable drawable = context.getDrawable(R.drawable.l_help);
        if (drawable != null) {
            drawable.setColorFilter(z0.c.d(context), PorterDuff.Mode.SRC_IN);
        }
        Button button = kVar.f972g.getButton(-3);
        if (button != null) {
            button.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
            button.setText("");
            button.setOnClickListener(new a(button));
        }
    }
}
