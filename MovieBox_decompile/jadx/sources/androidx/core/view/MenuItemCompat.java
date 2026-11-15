package androidx.core.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;

public final class MenuItemCompat {

    @Deprecated
    public static final int SHOW_AS_ACTION_ALWAYS = 2;

    @Deprecated
    public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;

    @Deprecated
    public static final int SHOW_AS_ACTION_IF_ROOM = 1;

    @Deprecated
    public static final int SHOW_AS_ACTION_NEVER = 0;

    @Deprecated
    public static final int SHOW_AS_ACTION_WITH_TEXT = 4;
    private static final String TAG = "MenuItemCompat";

    @Deprecated
    public interface OnActionExpandListener {
        boolean onMenuItemActionCollapse(MenuItem menuItem);

        boolean onMenuItemActionExpand(MenuItem menuItem);
    }

    class a implements MenuItem.OnActionExpandListener {

        final OnActionExpandListener f7983a;

        a(OnActionExpandListener onActionExpandListener) {
            this.f7983a = onActionExpandListener;
        }

        @Override
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f7983a.onMenuItemActionCollapse(menuItem);
        }

        @Override
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f7983a.onMenuItemActionExpand(menuItem);
        }
    }

    static class b {
        static int a(MenuItem menuItem) {
            return menuItem.getAlphabeticModifiers();
        }

        static CharSequence b(MenuItem menuItem) {
            return menuItem.getContentDescription();
        }

        static ColorStateList c(MenuItem menuItem) {
            return menuItem.getIconTintList();
        }

        static PorterDuff.Mode d(MenuItem menuItem) {
            return menuItem.getIconTintMode();
        }

        static int e(MenuItem menuItem) {
            return menuItem.getNumericModifiers();
        }

        static CharSequence f(MenuItem menuItem) {
            return menuItem.getTooltipText();
        }

        static MenuItem g(MenuItem menuItem, char c10, int i10) {
            return menuItem.setAlphabeticShortcut(c10, i10);
        }

        static MenuItem h(MenuItem menuItem, CharSequence charSequence) {
            return menuItem.setContentDescription(charSequence);
        }

        static MenuItem i(MenuItem menuItem, ColorStateList colorStateList) {
            return menuItem.setIconTintList(colorStateList);
        }

        static MenuItem j(MenuItem menuItem, PorterDuff.Mode mode) {
            return menuItem.setIconTintMode(mode);
        }

        static MenuItem k(MenuItem menuItem, char c10, int i10) {
            return menuItem.setNumericShortcut(c10, i10);
        }

        static MenuItem l(MenuItem menuItem, char c10, char c11, int i10, int i11) {
            return menuItem.setShortcut(c10, c11, i10, i11);
        }

        static MenuItem m(MenuItem menuItem, CharSequence charSequence) {
            return menuItem.setTooltipText(charSequence);
        }
    }

    private MenuItemCompat() {
    }

    @Deprecated
    public static boolean collapseActionView(MenuItem menuItem) {
        return menuItem.collapseActionView();
    }

    @Deprecated
    public static boolean expandActionView(MenuItem menuItem) {
        return menuItem.expandActionView();
    }

    public static ActionProvider getActionProvider(MenuItem menuItem) {
        if (menuItem instanceof b1.b) {
            return ((b1.b) menuItem).a();
        }
        Log.w(TAG, "getActionProvider: item does not implement SupportMenuItem; returning null");
        return null;
    }

    @Deprecated
    public static View getActionView(MenuItem menuItem) {
        return menuItem.getActionView();
    }

    public static int getAlphabeticModifiers(MenuItem menuItem) {
        if (menuItem instanceof b1.b) {
            return ((b1.b) menuItem).getAlphabeticModifiers();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return b.a(menuItem);
        }
        return 0;
    }

    public static CharSequence getContentDescription(MenuItem menuItem) {
        if (menuItem instanceof b1.b) {
            return ((b1.b) menuItem).getContentDescription();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return b.b(menuItem);
        }
        return null;
    }

    public static ColorStateList getIconTintList(MenuItem menuItem) {
        if (menuItem instanceof b1.b) {
            return ((b1.b) menuItem).getIconTintList();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return b.c(menuItem);
        }
        return null;
    }

    public static PorterDuff.Mode getIconTintMode(MenuItem menuItem) {
        if (menuItem instanceof b1.b) {
            return ((b1.b) menuItem).getIconTintMode();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return b.d(menuItem);
        }
        return null;
    }

    public static int getNumericModifiers(MenuItem menuItem) {
        if (menuItem instanceof b1.b) {
            return ((b1.b) menuItem).getNumericModifiers();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return b.e(menuItem);
        }
        return 0;
    }

    public static CharSequence getTooltipText(MenuItem menuItem) {
        if (menuItem instanceof b1.b) {
            return ((b1.b) menuItem).getTooltipText();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return b.f(menuItem);
        }
        return null;
    }

    @Deprecated
    public static boolean isActionViewExpanded(MenuItem menuItem) {
        return menuItem.isActionViewExpanded();
    }

    public static MenuItem setActionProvider(MenuItem menuItem, ActionProvider actionProvider) {
        if (menuItem instanceof b1.b) {
            return ((b1.b) menuItem).b(actionProvider);
        }
        Log.w(TAG, "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    @Deprecated
    public static MenuItem setActionView(MenuItem menuItem, View view) {
        return menuItem.setActionView(view);
    }

    public static void setAlphabeticShortcut(MenuItem menuItem, char c10, int i10) {
        if (menuItem instanceof b1.b) {
            ((b1.b) menuItem).setAlphabeticShortcut(c10, i10);
        } else if (Build.VERSION.SDK_INT >= 26) {
            b.g(menuItem, c10, i10);
        }
    }

    public static void setContentDescription(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof b1.b) {
            ((b1.b) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            b.h(menuItem, charSequence);
        }
    }

    public static void setIconTintList(MenuItem menuItem, ColorStateList colorStateList) {
        if (menuItem instanceof b1.b) {
            ((b1.b) menuItem).setIconTintList(colorStateList);
        } else if (Build.VERSION.SDK_INT >= 26) {
            b.i(menuItem, colorStateList);
        }
    }

    public static void setIconTintMode(MenuItem menuItem, PorterDuff.Mode mode) {
        if (menuItem instanceof b1.b) {
            ((b1.b) menuItem).setIconTintMode(mode);
        } else if (Build.VERSION.SDK_INT >= 26) {
            b.j(menuItem, mode);
        }
    }

    public static void setNumericShortcut(MenuItem menuItem, char c10, int i10) {
        if (menuItem instanceof b1.b) {
            ((b1.b) menuItem).setNumericShortcut(c10, i10);
        } else if (Build.VERSION.SDK_INT >= 26) {
            b.k(menuItem, c10, i10);
        }
    }

    @Deprecated
    public static MenuItem setOnActionExpandListener(MenuItem menuItem, OnActionExpandListener onActionExpandListener) {
        return menuItem.setOnActionExpandListener(new a(onActionExpandListener));
    }

    public static void setShortcut(MenuItem menuItem, char c10, char c11, int i10, int i11) {
        if (menuItem instanceof b1.b) {
            ((b1.b) menuItem).setShortcut(c10, c11, i10, i11);
        } else if (Build.VERSION.SDK_INT >= 26) {
            b.l(menuItem, c10, c11, i10, i11);
        }
    }

    @Deprecated
    public static void setShowAsAction(MenuItem menuItem, int i10) {
        menuItem.setShowAsAction(i10);
    }

    public static void setTooltipText(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof b1.b) {
            ((b1.b) menuItem).setTooltipText(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            b.m(menuItem, charSequence);
        }
    }

    @Deprecated
    public static MenuItem setActionView(MenuItem menuItem, int i10) {
        return menuItem.setActionView(i10);
    }
}
