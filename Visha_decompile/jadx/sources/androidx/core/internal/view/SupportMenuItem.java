package androidx.core.internal.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ActionProvider;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
public interface SupportMenuItem extends MenuItem {
    public static final int SHOW_AS_ACTION_ALWAYS = 2;
    public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;
    public static final int SHOW_AS_ACTION_IF_ROOM = 1;
    public static final int SHOW_AS_ACTION_NEVER = 0;
    public static final int SHOW_AS_ACTION_WITH_TEXT = 4;

    @Override
    boolean collapseActionView();

    @Override
    boolean expandActionView();

    @Override
    @Nullable
    View getActionView();

    @Override
    int getAlphabeticModifiers();

    @Override
    @Nullable
    CharSequence getContentDescription();

    @Override
    @Nullable
    ColorStateList getIconTintList();

    @Override
    @Nullable
    PorterDuff.Mode getIconTintMode();

    @Override
    int getNumericModifiers();

    @Nullable
    ActionProvider getSupportActionProvider();

    @Override
    @Nullable
    CharSequence getTooltipText();

    @Override
    boolean isActionViewExpanded();

    boolean requiresActionButton();

    boolean requiresOverflow();

    @Override
    @NonNull
    MenuItem setActionView(int i);

    @Override
    @NonNull
    MenuItem setActionView(@Nullable View view);

    @Override
    @NonNull
    MenuItem setAlphabeticShortcut(char c, int i);

    @Override
    @NonNull
    SupportMenuItem setContentDescription(@Nullable CharSequence charSequence);

    @Override
    @NonNull
    MenuItem setIconTintList(@Nullable ColorStateList colorStateList);

    @Override
    @NonNull
    MenuItem setIconTintMode(@Nullable PorterDuff.Mode mode);

    @Override
    @NonNull
    MenuItem setNumericShortcut(char c, int i);

    @Override
    @NonNull
    MenuItem setShortcut(char c, char c2, int i, int i2);

    @Override
    void setShowAsAction(int i);

    @Override
    @NonNull
    MenuItem setShowAsActionFlags(int i);

    @NonNull
    SupportMenuItem setSupportActionProvider(@Nullable ActionProvider actionProvider);

    @Override
    @NonNull
    SupportMenuItem setTooltipText(@Nullable CharSequence charSequence);
}
