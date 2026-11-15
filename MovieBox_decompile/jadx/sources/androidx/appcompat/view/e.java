package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

public class e extends b implements androidx.appcompat.view.menu.f.a {

    private Context f958c;

    private ActionBarContextView f959d;

    private b.a f960e;

    private WeakReference f961f;

    private boolean f962g;

    private boolean f963h;

    private androidx.appcompat.view.menu.f f964i;

    public e(Context context, ActionBarContextView actionBarContextView, b.a aVar, boolean z10) {
        this.f958c = context;
        this.f959d = actionBarContextView;
        this.f960e = aVar;
        androidx.appcompat.view.menu.f fVarX = new androidx.appcompat.view.menu.f(actionBarContextView.getContext()).X(1);
        this.f964i = fVarX;
        fVarX.W(this);
        this.f963h = z10;
    }

    @Override
    public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
        return this.f960e.c(this, menuItem);
    }

    @Override
    public void b(androidx.appcompat.view.menu.f fVar) {
        k();
        this.f959d.showOverflowMenu();
    }

    @Override
    public void c() {
        if (this.f962g) {
            return;
        }
        this.f962g = true;
        this.f960e.a(this);
    }

    @Override
    public View d() {
        WeakReference weakReference = this.f961f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override
    public Menu e() {
        return this.f964i;
    }

    @Override
    public MenuInflater f() {
        return new g(this.f959d.getContext());
    }

    @Override
    public CharSequence g() {
        return this.f959d.getSubtitle();
    }

    @Override
    public CharSequence i() {
        return this.f959d.getTitle();
    }

    @Override
    public void k() {
        this.f960e.d(this, this.f964i);
    }

    @Override
    public boolean l() {
        return this.f959d.isTitleOptional();
    }

    @Override
    public void m(View view) {
        this.f959d.setCustomView(view);
        this.f961f = view != null ? new WeakReference(view) : null;
    }

    @Override
    public void n(int i10) {
        o(this.f958c.getString(i10));
    }

    @Override
    public void o(CharSequence charSequence) {
        this.f959d.setSubtitle(charSequence);
    }

    @Override
    public void q(int i10) {
        r(this.f958c.getString(i10));
    }

    @Override
    public void r(CharSequence charSequence) {
        this.f959d.setTitle(charSequence);
    }

    @Override
    public void s(boolean z10) {
        super.s(z10);
        this.f959d.setTitleOptional(z10);
    }
}
