package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.asynclayoutinflater.view.AsyncLayoutInflater;

public class d22 implements td8.b {
    public AsyncLayoutInflater a;
    public Resources.Theme b;

    public static final class a {
        public static final d22 a = new d22();
    }

    public static d22 d() {
        return a.a;
    }

    public static void e(td8.c cVar, View view, int i, ViewGroup viewGroup) {
        if (cVar != null) {
            cVar.a(i, view);
        }
    }

    @Override
    public void a(ViewGroup viewGroup, int i, final td8.c cVar) {
        Context context = viewGroup.getContext();
        Resources.Theme theme = context.getTheme();
        if (this.a == null || this.b != theme) {
            this.a = new AsyncLayoutInflater(new ContextThemeWrapper(context.getApplicationContext(), theme));
            this.b = theme;
        }
        this.a.inflate(i, viewGroup, new AsyncLayoutInflater.OnInflateFinishedListener() {
            @Override
            public final void onInflateFinished(View view, int i2, ViewGroup viewGroup2) {
                d22.e(cVar, view, i2, viewGroup2);
            }
        });
    }

    @Override
    public View b(ViewGroup viewGroup, int i) {
        return uz4.a(viewGroup, i);
    }

    public d22() {
    }
}
