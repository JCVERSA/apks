package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.concurrent.Callable;

public final class k5h implements eeh {
    public final g8i a;
    public final Context b;
    public final enh c;
    public final View d;

    public k5h(g8i g8iVar, Context context, enh enhVar, ViewGroup viewGroup) {
        this.a = g8iVar;
        this.b = context;
        this.c = enhVar;
        this.d = viewGroup;
    }

    public static l5h a(k5h k5hVar) {
        ArrayList arrayList = new ArrayList();
        View view = k5hVar.d;
        while (view != null) {
            Object parent = view.getParent();
            if (parent == null) {
                break;
            }
            int iIndexOfChild = parent instanceof ViewGroup ? ((ViewGroup) parent).indexOfChild(view) : -1;
            Bundle bundle = new Bundle();
            bundle.putString("type", parent.getClass().getName());
            bundle.putInt("index_of_child", iIndexOfChild);
            arrayList.add(bundle);
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return new l5h(k5hVar.b, k5hVar.c.e, arrayList);
    }

    @Override
    public final int zza() {
        return 3;
    }

    @Override
    public final im5 zzb() {
        cye.a(this.b);
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return k5h.a(this.b);
            }
        });
    }
}
