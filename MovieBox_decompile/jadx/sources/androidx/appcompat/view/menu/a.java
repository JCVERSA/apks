package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.core.view.ActionProvider;

public class a implements b1.b {

    private final int f1079a;

    private final int f1080b;

    private final int f1081c;

    private CharSequence f1082d;

    private CharSequence f1083e;

    private Intent f1084f;

    private char f1085g;

    private char f1087i;

    private Drawable f1089k;

    private Context f1090l;

    private MenuItem.OnMenuItemClickListener f1091m;

    private CharSequence f1092n;

    private CharSequence f1093o;

    private int f1086h = 4096;

    private int f1088j = 4096;

    private ColorStateList f1094p = null;

    private PorterDuff.Mode f1095q = null;

    private boolean f1096r = false;

    private boolean f1097s = false;

    private int f1098t = 16;

    public a(Context context, int i10, int i11, int i12, int i13, CharSequence charSequence) {
        this.f1090l = context;
        this.f1079a = i11;
        this.f1080b = i10;
        this.f1081c = i13;
        this.f1082d = charSequence;
    }

    private void c() {
        Drawable drawable = this.f1089k;
        if (drawable != null) {
            if (this.f1096r || this.f1097s) {
                Drawable drawableR = a1.a.r(drawable);
                this.f1089k = drawableR;
                Drawable drawableMutate = drawableR.mutate();
                this.f1089k = drawableMutate;
                if (this.f1096r) {
                    a1.a.o(drawableMutate, this.f1094p);
                }
                if (this.f1097s) {
                    a1.a.p(this.f1089k, this.f1095q);
                }
            }
        }
    }

    @Override
    public ActionProvider a() {
        return null;
    }

    @Override
    public b1.b b(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean collapseActionView() {
        return false;
    }

    @Override
    public b1.b setActionView(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public b1.b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean expandActionView() {
        return false;
    }

    @Override
    public b1.b setShowAsActionFlags(int i10) {
        setShowAsAction(i10);
        return this;
    }

    @Override
    public android.view.ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override
    public View getActionView() {
        return null;
    }

    @Override
    public int getAlphabeticModifiers() {
        return this.f1088j;
    }

    @Override
    public char getAlphabeticShortcut() {
        return this.f1087i;
    }

    @Override
    public CharSequence getContentDescription() {
        return this.f1092n;
    }

    @Override
    public int getGroupId() {
        return this.f1080b;
    }

    @Override
    public Drawable getIcon() {
        return this.f1089k;
    }

    @Override
    public ColorStateList getIconTintList() {
        return this.f1094p;
    }

    @Override
    public PorterDuff.Mode getIconTintMode() {
        return this.f1095q;
    }

    @Override
    public Intent getIntent() {
        return this.f1084f;
    }

    @Override
    public int getItemId() {
        return this.f1079a;
    }

    @Override
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override
    public int getNumericModifiers() {
        return this.f1086h;
    }

    @Override
    public char getNumericShortcut() {
        return this.f1085g;
    }

    @Override
    public int getOrder() {
        return this.f1081c;
    }

    @Override
    public SubMenu getSubMenu() {
        return null;
    }

    @Override
    public CharSequence getTitle() {
        return this.f1082d;
    }

    @Override
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1083e;
        return charSequence != null ? charSequence : this.f1082d;
    }

    @Override
    public CharSequence getTooltipText() {
        return this.f1093o;
    }

    @Override
    public boolean hasSubMenu() {
        return false;
    }

    @Override
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override
    public boolean isCheckable() {
        return (this.f1098t & 1) != 0;
    }

    @Override
    public boolean isChecked() {
        return (this.f1098t & 2) != 0;
    }

    @Override
    public boolean isEnabled() {
        return (this.f1098t & 16) != 0;
    }

    @Override
    public boolean isVisible() {
        return (this.f1098t & 8) == 0;
    }

    @Override
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MenuItem setAlphabeticShortcut(char c10) {
        this.f1087i = Character.toLowerCase(c10);
        return this;
    }

    @Override
    public MenuItem setCheckable(boolean z10) {
        this.f1098t = (z10 ? 1 : 0) | (this.f1098t & (-2));
        return this;
    }

    @Override
    public MenuItem setChecked(boolean z10) {
        this.f1098t = (z10 ? 2 : 0) | (this.f1098t & (-3));
        return this;
    }

    @Override
    public MenuItem setEnabled(boolean z10) {
        this.f1098t = (z10 ? 16 : 0) | (this.f1098t & (-17));
        return this;
    }

    @Override
    public MenuItem setIcon(Drawable drawable) {
        this.f1089k = drawable;
        c();
        return this;
    }

    @Override
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1094p = colorStateList;
        this.f1096r = true;
        c();
        return this;
    }

    @Override
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1095q = mode;
        this.f1097s = true;
        c();
        return this;
    }

    @Override
    public MenuItem setIntent(Intent intent) {
        this.f1084f = intent;
        return this;
    }

    @Override
    public MenuItem setNumericShortcut(char c10) {
        this.f1085g = c10;
        return this;
    }

    @Override
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1091m = onMenuItemClickListener;
        return this;
    }

    @Override
    public MenuItem setShortcut(char c10, char c11) {
        this.f1085g = c10;
        this.f1087i = Character.toLowerCase(c11);
        return this;
    }

    @Override
    public MenuItem setTitle(CharSequence charSequence) {
        this.f1082d = charSequence;
        return this;
    }

    @Override
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1083e = charSequence;
        return this;
    }

    @Override
    public MenuItem setVisible(boolean z10) {
        this.f1098t = (this.f1098t & 8) | (z10 ? 0 : 8);
        return this;
    }

    @Override
    public MenuItem setAlphabeticShortcut(char c10, int i10) {
        this.f1087i = Character.toLowerCase(c10);
        this.f1088j = KeyEvent.normalizeMetaState(i10);
        return this;
    }

    @Override
    public b1.b setContentDescription(CharSequence charSequence) {
        this.f1092n = charSequence;
        return this;
    }

    @Override
    public MenuItem setNumericShortcut(char c10, int i10) {
        this.f1085g = c10;
        this.f1086h = KeyEvent.normalizeMetaState(i10);
        return this;
    }

    @Override
    public MenuItem setTitle(int i10) {
        this.f1082d = this.f1090l.getResources().getString(i10);
        return this;
    }

    @Override
    public b1.b setTooltipText(CharSequence charSequence) {
        this.f1093o = charSequence;
        return this;
    }

    @Override
    public MenuItem setIcon(int i10) {
        this.f1089k = androidx.core.content.b.getDrawable(this.f1090l, i10);
        c();
        return this;
    }

    @Override
    public MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.f1085g = c10;
        this.f1086h = KeyEvent.normalizeMetaState(i10);
        this.f1087i = Character.toLowerCase(c11);
        this.f1088j = KeyEvent.normalizeMetaState(i11);
        return this;
    }

    @Override
    public void setShowAsAction(int i10) {
    }
}
