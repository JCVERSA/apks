package defpackage;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.PopupMenu;
import com.yandex.div.R;

public class zt7 {
    public final Context a;
    public final View b;
    public final ViewGroup c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public a i;
    public View[] j;
    public View[] k;
    public boolean l;
    public final int m;
    public final int n;
    public PopupMenu o;

    public interface a {

        public static class C0466a implements a {
            @Override
            public void b() {
            }
        }

        void a(PopupMenu popupMenu);

        void b();
    }

    public zt7(Context context, View view, ViewGroup viewGroup) {
        this(context, view, viewGroup, R.dimen.overflow_menu_margin_horizontal, R.dimen.overflow_menu_margin_vertical);
    }

    public void b() {
        PopupMenu popupMenu = this.o;
        if (popupMenu != null) {
            popupMenu.dismiss();
            this.o = null;
        }
    }

    public View.OnClickListener c() {
        return new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.d(view);
            }
        };
    }

    public final void d(View view) {
        PopupMenu popupMenu = new PopupMenu(view.getContext(), view, this.g);
        a aVar = this.i;
        if (aVar != null) {
            aVar.a(popupMenu);
        }
        popupMenu.show();
        a aVar2 = this.i;
        if (aVar2 != null) {
            aVar2.b();
        }
        this.o = popupMenu;
    }

    public zt7 e(a aVar) {
        this.i = aVar;
        return this;
    }

    public zt7 f(int i) {
        this.d = i;
        return this;
    }

    public zt7(Context context, View view, ViewGroup viewGroup, int i, int i2) {
        this.d = 51;
        this.e = -1;
        this.f = 255;
        this.g = 83;
        this.h = R.drawable.ic_more_vert_white_24dp;
        this.j = null;
        this.k = null;
        this.l = false;
        this.a = context;
        this.b = view;
        this.c = viewGroup;
        this.m = i;
        this.n = i2;
    }
}
