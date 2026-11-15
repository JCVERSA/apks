package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ActionProvider;
import java.lang.reflect.Method;

public class i extends androidx.appcompat.view.menu.c implements MenuItem {

    private final b1.b f1187d;

    private Method f1188e;

    private class a extends ActionProvider implements android.view.ActionProvider.VisibilityListener {

        private ActionProvider.VisibilityListener f1189a;

        private final android.view.ActionProvider f1190b;

        a(Context context, android.view.ActionProvider actionProvider) {
            super(context);
            this.f1190b = actionProvider;
        }

        @Override
        public boolean hasSubMenu() {
            return this.f1190b.hasSubMenu();
        }

        @Override
        public boolean isVisible() {
            return this.f1190b.isVisible();
        }

        @Override
        public void onActionProviderVisibilityChanged(boolean z10) {
            ActionProvider.VisibilityListener visibilityListener = this.f1189a;
            if (visibilityListener != null) {
                visibilityListener.onActionProviderVisibilityChanged(z10);
            }
        }

        @Override
        public View onCreateActionView(MenuItem menuItem) {
            return this.f1190b.onCreateActionView(menuItem);
        }

        @Override
        public boolean onPerformDefaultAction() {
            return this.f1190b.onPerformDefaultAction();
        }

        @Override
        public void onPrepareSubMenu(SubMenu subMenu) {
            this.f1190b.onPrepareSubMenu(i.this.d(subMenu));
        }

        @Override
        public boolean overridesItemVisibility() {
            return this.f1190b.overridesItemVisibility();
        }

        @Override
        public void refreshVisibility() {
            this.f1190b.refreshVisibility();
        }

        @Override
        public void setVisibilityListener(ActionProvider.VisibilityListener visibilityListener) {
            this.f1189a = visibilityListener;
            this.f1190b.setVisibilityListener(visibilityListener != null ? this : null);
        }

        @Override
        public View onCreateActionView() {
            return this.f1190b.onCreateActionView();
        }
    }

    static class b extends FrameLayout implements androidx.appcompat.view.c {

        final CollapsibleActionView f1192a;

        /* JADX WARN: Multi-variable type inference failed */
        b(View view) {
            super(view.getContext());
            this.f1192a = (CollapsibleActionView) view;
            addView(view);
        }

        View a() {
            return (View) this.f1192a;
        }

        @Override
        public void onActionViewCollapsed() {
            this.f1192a.onActionViewCollapsed();
        }

        @Override
        public void onActionViewExpanded() {
            this.f1192a.onActionViewExpanded();
        }
    }

    private class c implements MenuItem.OnActionExpandListener {

        private final MenuItem.OnActionExpandListener f1193a;

        c(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.f1193a = onActionExpandListener;
        }

        @Override
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f1193a.onMenuItemActionCollapse(i.this.c(menuItem));
        }

        @Override
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f1193a.onMenuItemActionExpand(i.this.c(menuItem));
        }
    }

    private class d implements MenuItem.OnMenuItemClickListener {

        private final MenuItem.OnMenuItemClickListener f1195a;

        d(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.f1195a = onMenuItemClickListener;
        }

        @Override
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f1195a.onMenuItemClick(i.this.c(menuItem));
        }
    }

    public i(Context context, b1.b bVar) {
        super(context);
        if (bVar == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f1187d = bVar;
    }

    @Override
    public boolean collapseActionView() {
        return this.f1187d.collapseActionView();
    }

    @Override
    public boolean expandActionView() {
        return this.f1187d.expandActionView();
    }

    @Override
    public android.view.ActionProvider getActionProvider() {
        ActionProvider actionProviderA = this.f1187d.a();
        if (actionProviderA instanceof a) {
            return ((a) actionProviderA).f1190b;
        }
        return null;
    }

    @Override
    public View getActionView() {
        View actionView = this.f1187d.getActionView();
        return actionView instanceof b ? ((b) actionView).a() : actionView;
    }

    @Override
    public int getAlphabeticModifiers() {
        return this.f1187d.getAlphabeticModifiers();
    }

    @Override
    public char getAlphabeticShortcut() {
        return this.f1187d.getAlphabeticShortcut();
    }

    @Override
    public CharSequence getContentDescription() {
        return this.f1187d.getContentDescription();
    }

    @Override
    public int getGroupId() {
        return this.f1187d.getGroupId();
    }

    @Override
    public Drawable getIcon() {
        return this.f1187d.getIcon();
    }

    @Override
    public ColorStateList getIconTintList() {
        return this.f1187d.getIconTintList();
    }

    @Override
    public PorterDuff.Mode getIconTintMode() {
        return this.f1187d.getIconTintMode();
    }

    @Override
    public Intent getIntent() {
        return this.f1187d.getIntent();
    }

    @Override
    public int getItemId() {
        return this.f1187d.getItemId();
    }

    @Override
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f1187d.getMenuInfo();
    }

    @Override
    public int getNumericModifiers() {
        return this.f1187d.getNumericModifiers();
    }

    @Override
    public char getNumericShortcut() {
        return this.f1187d.getNumericShortcut();
    }

    @Override
    public int getOrder() {
        return this.f1187d.getOrder();
    }

    @Override
    public SubMenu getSubMenu() {
        return d(this.f1187d.getSubMenu());
    }

    @Override
    public CharSequence getTitle() {
        return this.f1187d.getTitle();
    }

    @Override
    public CharSequence getTitleCondensed() {
        return this.f1187d.getTitleCondensed();
    }

    @Override
    public CharSequence getTooltipText() {
        return this.f1187d.getTooltipText();
    }

    public void h(boolean z10) {
        try {
            if (this.f1188e == null) {
                this.f1188e = this.f1187d.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f1188e.invoke(this.f1187d, Boolean.valueOf(z10));
        } catch (Exception e10) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e10);
        }
    }

    @Override
    public boolean hasSubMenu() {
        return this.f1187d.hasSubMenu();
    }

    @Override
    public boolean isActionViewExpanded() {
        return this.f1187d.isActionViewExpanded();
    }

    @Override
    public boolean isCheckable() {
        return this.f1187d.isCheckable();
    }

    @Override
    public boolean isChecked() {
        return this.f1187d.isChecked();
    }

    @Override
    public boolean isEnabled() {
        return this.f1187d.isEnabled();
    }

    @Override
    public boolean isVisible() {
        return this.f1187d.isVisible();
    }

    @Override
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        a aVar = new a(this.f1109a, actionProvider);
        b1.b bVar = this.f1187d;
        if (actionProvider == null) {
            aVar = null;
        }
        bVar.b(aVar);
        return this;
    }

    @Override
    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new b(view);
        }
        this.f1187d.setActionView(view);
        return this;
    }

    @Override
    public MenuItem setAlphabeticShortcut(char c10) {
        this.f1187d.setAlphabeticShortcut(c10);
        return this;
    }

    @Override
    public MenuItem setCheckable(boolean z10) {
        this.f1187d.setCheckable(z10);
        return this;
    }

    @Override
    public MenuItem setChecked(boolean z10) {
        this.f1187d.setChecked(z10);
        return this;
    }

    @Override
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f1187d.setContentDescription(charSequence);
        return this;
    }

    @Override
    public MenuItem setEnabled(boolean z10) {
        this.f1187d.setEnabled(z10);
        return this;
    }

    @Override
    public MenuItem setIcon(Drawable drawable) {
        this.f1187d.setIcon(drawable);
        return this;
    }

    @Override
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1187d.setIconTintList(colorStateList);
        return this;
    }

    @Override
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1187d.setIconTintMode(mode);
        return this;
    }

    @Override
    public MenuItem setIntent(Intent intent) {
        this.f1187d.setIntent(intent);
        return this;
    }

    @Override
    public MenuItem setNumericShortcut(char c10) {
        this.f1187d.setNumericShortcut(c10);
        return this;
    }

    @Override
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f1187d.setOnActionExpandListener(onActionExpandListener != null ? new c(onActionExpandListener) : null);
        return this;
    }

    @Override
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1187d.setOnMenuItemClickListener(onMenuItemClickListener != null ? new d(onMenuItemClickListener) : null);
        return this;
    }

    @Override
    public MenuItem setShortcut(char c10, char c11) {
        this.f1187d.setShortcut(c10, c11);
        return this;
    }

    @Override
    public void setShowAsAction(int i10) {
        this.f1187d.setShowAsAction(i10);
    }

    @Override
    public MenuItem setShowAsActionFlags(int i10) {
        this.f1187d.setShowAsActionFlags(i10);
        return this;
    }

    @Override
    public MenuItem setTitle(CharSequence charSequence) {
        this.f1187d.setTitle(charSequence);
        return this;
    }

    @Override
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1187d.setTitleCondensed(charSequence);
        return this;
    }

    @Override
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f1187d.setTooltipText(charSequence);
        return this;
    }

    @Override
    public MenuItem setVisible(boolean z10) {
        return this.f1187d.setVisible(z10);
    }

    @Override
    public MenuItem setAlphabeticShortcut(char c10, int i10) {
        this.f1187d.setAlphabeticShortcut(c10, i10);
        return this;
    }

    @Override
    public MenuItem setIcon(int i10) {
        this.f1187d.setIcon(i10);
        return this;
    }

    @Override
    public MenuItem setNumericShortcut(char c10, int i10) {
        this.f1187d.setNumericShortcut(c10, i10);
        return this;
    }

    @Override
    public MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.f1187d.setShortcut(c10, c11, i10, i11);
        return this;
    }

    @Override
    public MenuItem setTitle(int i10) {
        this.f1187d.setTitle(i10);
        return this;
    }

    @Override
    public MenuItem setActionView(int i10) {
        this.f1187d.setActionView(i10);
        View actionView = this.f1187d.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f1187d.setActionView(new b(actionView));
        }
        return this;
    }
}
