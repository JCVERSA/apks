package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public class q extends f implements SubMenu {
    private f B;
    private h C;

    public q(Context context, f fVar, h hVar) {
        super(context);
        this.B = fVar;
        this.C = hVar;
    }

    @Override
    public f F() {
        return this.B.F();
    }

    @Override
    public boolean I() {
        return this.B.I();
    }

    @Override
    public boolean J() {
        return this.B.J();
    }

    @Override
    public boolean K() {
        return this.B.K();
    }

    @Override
    public void W(f.a aVar) {
        this.B.W(aVar);
    }

    @Override
    public boolean f(h hVar) {
        return this.B.f(hVar);
    }

    @Override
    public MenuItem getItem() {
        return this.C;
    }

    @Override
    boolean h(f fVar, MenuItem menuItem) {
        return super.h(fVar, menuItem) || this.B.h(fVar, menuItem);
    }

    public Menu j0() {
        return this.B;
    }

    @Override
    public boolean m(h hVar) {
        return this.B.m(hVar);
    }

    @Override
    public void setGroupDividerEnabled(boolean z10) {
        this.B.setGroupDividerEnabled(z10);
    }

    @Override
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.a0(drawable);
    }

    @Override
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.d0(charSequence);
    }

    @Override
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.e0(view);
    }

    @Override
    public SubMenu setIcon(Drawable drawable) {
        this.C.setIcon(drawable);
        return this;
    }

    @Override
    public void setQwertyMode(boolean z10) {
        this.B.setQwertyMode(z10);
    }

    @Override
    public String v() {
        h hVar = this.C;
        int itemId = hVar != null ? hVar.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.v() + ":" + itemId;
    }

    @Override
    public SubMenu setHeaderIcon(int i10) {
        return (SubMenu) super.Z(i10);
    }

    @Override
    public SubMenu setHeaderTitle(int i10) {
        return (SubMenu) super.c0(i10);
    }

    @Override
    public SubMenu setIcon(int i10) {
        this.C.setIcon(i10);
        return this;
    }
}
