package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.R$string;
import androidx.core.view.ActionProvider;

public final class h implements b1.b {
    private View A;
    private ActionProvider B;
    private MenuItem.OnActionExpandListener C;
    private ContextMenu.ContextMenuInfo E;

    private final int f1160a;

    private final int f1161b;

    private final int f1162c;

    private final int f1163d;

    private CharSequence f1164e;

    private CharSequence f1165f;

    private Intent f1166g;

    private char f1167h;

    private char f1169j;

    private Drawable f1171l;

    f f1173n;

    private q f1174o;

    private Runnable f1175p;

    private MenuItem.OnMenuItemClickListener f1176q;

    private CharSequence f1177r;

    private CharSequence f1178s;

    private int f1185z;

    private int f1168i = 4096;

    private int f1170k = 4096;

    private int f1172m = 0;

    private ColorStateList f1179t = null;

    private PorterDuff.Mode f1180u = null;

    private boolean f1181v = false;

    private boolean f1182w = false;

    private boolean f1183x = false;

    private int f1184y = 16;
    private boolean D = false;

    class a implements ActionProvider.VisibilityListener {
        a() {
        }

        @Override
        public void onActionProviderVisibilityChanged(boolean z10) {
            h hVar = h.this;
            hVar.f1173n.M(hVar);
        }
    }

    h(f fVar, int i10, int i11, int i12, int i13, CharSequence charSequence, int i14) {
        this.f1173n = fVar;
        this.f1160a = i11;
        this.f1161b = i10;
        this.f1162c = i12;
        this.f1163d = i13;
        this.f1164e = charSequence;
        this.f1185z = i14;
    }

    private static void d(StringBuilder sb2, int i10, int i11, String str) {
        if ((i10 & i11) == i11) {
            sb2.append(str);
        }
    }

    private Drawable e(Drawable drawable) {
        if (drawable != null && this.f1183x && (this.f1181v || this.f1182w)) {
            drawable = a1.a.r(drawable).mutate();
            if (this.f1181v) {
                a1.a.o(drawable, this.f1179t);
            }
            if (this.f1182w) {
                a1.a.p(drawable, this.f1180u);
            }
            this.f1183x = false;
        }
        return drawable;
    }

    boolean A() {
        return this.f1173n.K() && g() != 0;
    }

    public boolean B() {
        return (this.f1185z & 4) == 4;
    }

    @Override
    public ActionProvider a() {
        return this.B;
    }

    @Override
    public b1.b b(ActionProvider actionProvider) {
        ActionProvider actionProvider2 = this.B;
        if (actionProvider2 != null) {
            actionProvider2.reset();
        }
        this.A = null;
        this.B = actionProvider;
        this.f1173n.N(true);
        ActionProvider actionProvider3 = this.B;
        if (actionProvider3 != null) {
            actionProvider3.setVisibilityListener(new a());
        }
        return this;
    }

    public void c() {
        this.f1173n.L(this);
    }

    @Override
    public boolean collapseActionView() {
        if ((this.f1185z & 8) == 0) {
            return false;
        }
        if (this.A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f1173n.f(this);
        }
        return false;
    }

    @Override
    public boolean expandActionView() {
        if (!j()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f1173n.m(this);
        }
        return false;
    }

    public int f() {
        return this.f1163d;
    }

    char g() {
        return this.f1173n.J() ? this.f1169j : this.f1167h;
    }

    @Override
    public android.view.ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override
    public View getActionView() {
        View view = this.A;
        if (view != null) {
            return view;
        }
        ActionProvider actionProvider = this.B;
        if (actionProvider == null) {
            return null;
        }
        View viewOnCreateActionView = actionProvider.onCreateActionView(this);
        this.A = viewOnCreateActionView;
        return viewOnCreateActionView;
    }

    @Override
    public int getAlphabeticModifiers() {
        return this.f1170k;
    }

    @Override
    public char getAlphabeticShortcut() {
        return this.f1169j;
    }

    @Override
    public CharSequence getContentDescription() {
        return this.f1177r;
    }

    @Override
    public int getGroupId() {
        return this.f1161b;
    }

    @Override
    public Drawable getIcon() {
        Drawable drawable = this.f1171l;
        if (drawable != null) {
            return e(drawable);
        }
        if (this.f1172m == 0) {
            return null;
        }
        Drawable drawableB = g.a.b(this.f1173n.w(), this.f1172m);
        this.f1172m = 0;
        this.f1171l = drawableB;
        return e(drawableB);
    }

    @Override
    public ColorStateList getIconTintList() {
        return this.f1179t;
    }

    @Override
    public PorterDuff.Mode getIconTintMode() {
        return this.f1180u;
    }

    @Override
    public Intent getIntent() {
        return this.f1166g;
    }

    @Override
    public int getItemId() {
        return this.f1160a;
    }

    @Override
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.E;
    }

    @Override
    public int getNumericModifiers() {
        return this.f1168i;
    }

    @Override
    public char getNumericShortcut() {
        return this.f1167h;
    }

    @Override
    public int getOrder() {
        return this.f1162c;
    }

    @Override
    public SubMenu getSubMenu() {
        return this.f1174o;
    }

    @Override
    public CharSequence getTitle() {
        return this.f1164e;
    }

    @Override
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1165f;
        return charSequence != null ? charSequence : this.f1164e;
    }

    @Override
    public CharSequence getTooltipText() {
        return this.f1178s;
    }

    String h() {
        char cG = g();
        if (cG == 0) {
            return "";
        }
        Resources resources = this.f1173n.w().getResources();
        StringBuilder sb2 = new StringBuilder();
        if (ViewConfiguration.get(this.f1173n.w()).hasPermanentMenuKey()) {
            sb2.append(resources.getString(R$string.abc_prepend_shortcut_label));
        }
        int i10 = this.f1173n.J() ? this.f1170k : this.f1168i;
        d(sb2, i10, 65536, resources.getString(R$string.abc_menu_meta_shortcut_label));
        d(sb2, i10, 4096, resources.getString(R$string.abc_menu_ctrl_shortcut_label));
        d(sb2, i10, 2, resources.getString(R$string.abc_menu_alt_shortcut_label));
        d(sb2, i10, 1, resources.getString(R$string.abc_menu_shift_shortcut_label));
        d(sb2, i10, 4, resources.getString(R$string.abc_menu_sym_shortcut_label));
        d(sb2, i10, 8, resources.getString(R$string.abc_menu_function_shortcut_label));
        if (cG == '\b') {
            sb2.append(resources.getString(R$string.abc_menu_delete_shortcut_label));
        } else if (cG == '\n') {
            sb2.append(resources.getString(R$string.abc_menu_enter_shortcut_label));
        } else if (cG != ' ') {
            sb2.append(cG);
        } else {
            sb2.append(resources.getString(R$string.abc_menu_space_shortcut_label));
        }
        return sb2.toString();
    }

    @Override
    public boolean hasSubMenu() {
        return this.f1174o != null;
    }

    CharSequence i(m.a aVar) {
        return (aVar == null || !aVar.prefersCondensedTitle()) ? getTitle() : getTitleCondensed();
    }

    @Override
    public boolean isActionViewExpanded() {
        return this.D;
    }

    @Override
    public boolean isCheckable() {
        return (this.f1184y & 1) == 1;
    }

    @Override
    public boolean isChecked() {
        return (this.f1184y & 2) == 2;
    }

    @Override
    public boolean isEnabled() {
        return (this.f1184y & 16) != 0;
    }

    @Override
    public boolean isVisible() {
        ActionProvider actionProvider = this.B;
        if (actionProvider == null || !actionProvider.overridesItemVisibility()) {
            return (this.f1184y & 8) == 0;
        }
        return (this.f1184y & 8) == 0 && this.B.isVisible();
    }

    public boolean j() {
        ActionProvider actionProvider;
        if ((this.f1185z & 8) == 0) {
            return false;
        }
        if (this.A == null && (actionProvider = this.B) != null) {
            this.A = actionProvider.onCreateActionView(this);
        }
        return this.A != null;
    }

    public boolean k() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f1176q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        f fVar = this.f1173n;
        if (fVar.h(fVar, this)) {
            return true;
        }
        Runnable runnable = this.f1175p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f1166g != null) {
            try {
                this.f1173n.w().startActivity(this.f1166g);
                return true;
            } catch (ActivityNotFoundException e10) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e10);
            }
        }
        ActionProvider actionProvider = this.B;
        return actionProvider != null && actionProvider.onPerformDefaultAction();
    }

    public boolean l() {
        return (this.f1184y & 32) == 32;
    }

    public boolean m() {
        return (this.f1184y & 4) != 0;
    }

    public boolean n() {
        return (this.f1185z & 1) == 1;
    }

    public boolean o() {
        return (this.f1185z & 2) == 2;
    }

    @Override
    public b1.b setActionView(int i10) {
        Context contextW = this.f1173n.w();
        setActionView(LayoutInflater.from(contextW).inflate(i10, (ViewGroup) new LinearLayout(contextW), false));
        return this;
    }

    @Override
    public b1.b setActionView(View view) {
        int i10;
        this.A = view;
        this.B = null;
        if (view != null && view.getId() == -1 && (i10 = this.f1160a) > 0) {
            view.setId(i10);
        }
        this.f1173n.L(this);
        return this;
    }

    public void r(boolean z10) {
        this.D = z10;
        this.f1173n.N(false);
    }

    void s(boolean z10) {
        int i10 = this.f1184y;
        int i11 = (z10 ? 2 : 0) | (i10 & (-3));
        this.f1184y = i11;
        if (i10 != i11) {
            this.f1173n.N(false);
        }
    }

    @Override
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override
    public MenuItem setAlphabeticShortcut(char c10) {
        if (this.f1169j == c10) {
            return this;
        }
        this.f1169j = Character.toLowerCase(c10);
        this.f1173n.N(false);
        return this;
    }

    @Override
    public MenuItem setCheckable(boolean z10) {
        int i10 = this.f1184y;
        int i11 = (z10 ? 1 : 0) | (i10 & (-2));
        this.f1184y = i11;
        if (i10 != i11) {
            this.f1173n.N(false);
        }
        return this;
    }

    @Override
    public MenuItem setChecked(boolean z10) {
        if ((this.f1184y & 4) != 0) {
            this.f1173n.Y(this);
        } else {
            s(z10);
        }
        return this;
    }

    @Override
    public MenuItem setEnabled(boolean z10) {
        if (z10) {
            this.f1184y |= 16;
        } else {
            this.f1184y &= -17;
        }
        this.f1173n.N(false);
        return this;
    }

    @Override
    public MenuItem setIcon(Drawable drawable) {
        this.f1172m = 0;
        this.f1171l = drawable;
        this.f1183x = true;
        this.f1173n.N(false);
        return this;
    }

    @Override
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1179t = colorStateList;
        this.f1181v = true;
        this.f1183x = true;
        this.f1173n.N(false);
        return this;
    }

    @Override
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1180u = mode;
        this.f1182w = true;
        this.f1183x = true;
        this.f1173n.N(false);
        return this;
    }

    @Override
    public MenuItem setIntent(Intent intent) {
        this.f1166g = intent;
        return this;
    }

    @Override
    public MenuItem setNumericShortcut(char c10) {
        if (this.f1167h == c10) {
            return this;
        }
        this.f1167h = c10;
        this.f1173n.N(false);
        return this;
    }

    @Override
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.C = onActionExpandListener;
        return this;
    }

    @Override
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1176q = onMenuItemClickListener;
        return this;
    }

    @Override
    public MenuItem setShortcut(char c10, char c11) {
        this.f1167h = c10;
        this.f1169j = Character.toLowerCase(c11);
        this.f1173n.N(false);
        return this;
    }

    @Override
    public void setShowAsAction(int i10) {
        int i11 = i10 & 3;
        if (i11 != 0 && i11 != 1 && i11 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f1185z = i10;
        this.f1173n.L(this);
    }

    @Override
    public MenuItem setTitle(CharSequence charSequence) {
        this.f1164e = charSequence;
        this.f1173n.N(false);
        q qVar = this.f1174o;
        if (qVar != null) {
            qVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1165f = charSequence;
        this.f1173n.N(false);
        return this;
    }

    @Override
    public MenuItem setVisible(boolean z10) {
        if (y(z10)) {
            this.f1173n.M(this);
        }
        return this;
    }

    public void t(boolean z10) {
        this.f1184y = (z10 ? 4 : 0) | (this.f1184y & (-5));
    }

    public String toString() {
        CharSequence charSequence = this.f1164e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public void u(boolean z10) {
        if (z10) {
            this.f1184y |= 32;
        } else {
            this.f1184y &= -33;
        }
    }

    void v(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.E = contextMenuInfo;
    }

    @Override
    public b1.b setShowAsActionFlags(int i10) {
        setShowAsAction(i10);
        return this;
    }

    public void x(q qVar) {
        this.f1174o = qVar;
        qVar.setHeaderTitle(getTitle());
    }

    boolean y(boolean z10) {
        int i10 = this.f1184y;
        int i11 = (z10 ? 0 : 8) | (i10 & (-9));
        this.f1184y = i11;
        return i10 != i11;
    }

    public boolean z() {
        return this.f1173n.C();
    }

    @Override
    public b1.b setContentDescription(CharSequence charSequence) {
        this.f1177r = charSequence;
        this.f1173n.N(false);
        return this;
    }

    @Override
    public b1.b setTooltipText(CharSequence charSequence) {
        this.f1178s = charSequence;
        this.f1173n.N(false);
        return this;
    }

    @Override
    public MenuItem setAlphabeticShortcut(char c10, int i10) {
        if (this.f1169j == c10 && this.f1170k == i10) {
            return this;
        }
        this.f1169j = Character.toLowerCase(c10);
        this.f1170k = KeyEvent.normalizeMetaState(i10);
        this.f1173n.N(false);
        return this;
    }

    @Override
    public MenuItem setNumericShortcut(char c10, int i10) {
        if (this.f1167h == c10 && this.f1168i == i10) {
            return this;
        }
        this.f1167h = c10;
        this.f1168i = KeyEvent.normalizeMetaState(i10);
        this.f1173n.N(false);
        return this;
    }

    @Override
    public MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.f1167h = c10;
        this.f1168i = KeyEvent.normalizeMetaState(i10);
        this.f1169j = Character.toLowerCase(c11);
        this.f1170k = KeyEvent.normalizeMetaState(i11);
        this.f1173n.N(false);
        return this;
    }

    @Override
    public MenuItem setIcon(int i10) {
        this.f1171l = null;
        this.f1172m = i10;
        this.f1183x = true;
        this.f1173n.N(false);
        return this;
    }

    @Override
    public MenuItem setTitle(int i10) {
        return setTitle(this.f1173n.w().getString(i10));
    }
}
