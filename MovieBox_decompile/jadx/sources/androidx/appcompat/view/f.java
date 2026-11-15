package androidx.appcompat.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.n;
import androidx.collection.x0;
import java.util.ArrayList;

public class f extends ActionMode {

    final Context f965a;

    final b f966b;

    public static class a implements b.a {

        final ActionMode.Callback f967a;

        final Context f968b;

        final ArrayList f969c = new ArrayList();

        final x0 f970d = new x0();

        public a(Context context, ActionMode.Callback callback) {
            this.f968b = context;
            this.f967a = callback;
        }

        private Menu f(Menu menu) {
            Menu menu2 = (Menu) this.f970d.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            n nVar = new n(this.f968b, (b1.a) menu);
            this.f970d.put(menu, nVar);
            return nVar;
        }

        @Override
        public void a(b bVar) {
            this.f967a.onDestroyActionMode(e(bVar));
        }

        @Override
        public boolean b(b bVar, Menu menu) {
            return this.f967a.onCreateActionMode(e(bVar), f(menu));
        }

        @Override
        public boolean c(b bVar, MenuItem menuItem) {
            return this.f967a.onActionItemClicked(e(bVar), new androidx.appcompat.view.menu.i(this.f968b, (b1.b) menuItem));
        }

        @Override
        public boolean d(b bVar, Menu menu) {
            return this.f967a.onPrepareActionMode(e(bVar), f(menu));
        }

        public ActionMode e(b bVar) {
            int size = this.f969c.size();
            for (int i10 = 0; i10 < size; i10++) {
                f fVar = (f) this.f969c.get(i10);
                if (fVar != null && fVar.f966b == bVar) {
                    return fVar;
                }
            }
            f fVar2 = new f(this.f968b, bVar);
            this.f969c.add(fVar2);
            return fVar2;
        }
    }

    public f(Context context, b bVar) {
        this.f965a = context;
        this.f966b = bVar;
    }

    @Override
    public void finish() {
        this.f966b.c();
    }

    @Override
    public View getCustomView() {
        return this.f966b.d();
    }

    @Override
    public Menu getMenu() {
        return new n(this.f965a, (b1.a) this.f966b.e());
    }

    @Override
    public MenuInflater getMenuInflater() {
        return this.f966b.f();
    }

    @Override
    public CharSequence getSubtitle() {
        return this.f966b.g();
    }

    @Override
    public Object getTag() {
        return this.f966b.h();
    }

    @Override
    public CharSequence getTitle() {
        return this.f966b.i();
    }

    @Override
    public boolean getTitleOptionalHint() {
        return this.f966b.j();
    }

    @Override
    public void invalidate() {
        this.f966b.k();
    }

    @Override
    public boolean isTitleOptional() {
        return this.f966b.l();
    }

    @Override
    public void setCustomView(View view) {
        this.f966b.m(view);
    }

    @Override
    public void setSubtitle(CharSequence charSequence) {
        this.f966b.o(charSequence);
    }

    @Override
    public void setTag(Object obj) {
        this.f966b.p(obj);
    }

    @Override
    public void setTitle(CharSequence charSequence) {
        this.f966b.r(charSequence);
    }

    @Override
    public void setTitleOptionalHint(boolean z10) {
        this.f966b.s(z10);
    }

    @Override
    public void setSubtitle(int i10) {
        this.f966b.n(i10);
    }

    @Override
    public void setTitle(int i10) {
        this.f966b.q(i10);
    }
}
