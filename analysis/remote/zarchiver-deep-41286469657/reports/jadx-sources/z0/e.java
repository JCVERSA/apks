package z0;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Locale;
import ru.zdevs.zarchiver.R;

public final class e {

    public class a implements View.OnClickListener {

        public final PopupMenu f2347a;

        public a(PopupMenu popupMenu) {
            this.f2347a = popupMenu;
        }

        @Override
        public final void onClick(View view) {
            this.f2347a.show();
        }
    }

    public static Context a(Context context) {
        if (t0.b.k(768)) {
            return (Build.VERSION.SDK_INT > 19 || !t0.b.k(1024)) ? new ContextThemeWrapper(context, R.style.AppTheme_Light) : new ContextThemeWrapper(context, R.style.AppTheme_Light_Material_Color);
        }
        return context;
    }

    public static boolean b(Activity activity) {
        return Build.VERSION.SDK_INT >= 24 && activity.isInMultiWindowMode();
    }

    public static boolean c(Context context, boolean z2, Configuration configuration) {
        if (Build.VERSION.SDK_INT < 21) {
            return false;
        }
        if (configuration == null) {
            configuration = context.getResources().getConfiguration();
        }
        if ((configuration.screenLayout & 15) < 3) {
            return !z2 || configuration.orientation == 1;
        }
        return false;
    }

    public static boolean d(Context context) {
        return context != null && ((UiModeManager) context.getSystemService("uimode")).getCurrentModeType() == 4;
    }

    public static void e(Activity activity) {
        int identifier;
        ViewGroup viewGroup;
        if (Build.VERSION.SDK_INT < 24) {
            return;
        }
        try {
            TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes(new int[]{android.R.attr.actionBarSize});
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            typedArrayObtainStyledAttributes.recycle();
            if (dimensionPixelSize <= 0 || (identifier = Resources.getSystem().getIdentifier("action_bar", "id", "android")) == 0 || (viewGroup = (ViewGroup) activity.findViewById(identifier)) == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = dimensionPixelSize;
            }
            viewGroup.setMinimumHeight(dimensionPixelSize);
        } catch (Exception unused) {
        }
    }

    public static Drawable f(Activity activity, Drawable drawable, int i2) {
        View viewFindViewById = activity.findViewById(Resources.getSystem().getIdentifier("action_mode_close_button", "id", "android"));
        Drawable drawable2 = null;
        if (viewFindViewById == null) {
            return null;
        }
        try {
            if (viewFindViewById instanceof ImageView) {
                ImageView imageView = (ImageView) viewFindViewById;
                drawable2 = imageView.getDrawable();
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                }
            } else if (viewFindViewById instanceof LinearLayout) {
                LinearLayout linearLayout = (LinearLayout) viewFindViewById;
                if (linearLayout.getChildCount() > 0) {
                    ImageView imageView2 = (ImageView) linearLayout.getChildAt(0);
                    drawable2 = imageView2.getDrawable();
                    if (drawable != null) {
                        imageView2.setImageDrawable(drawable);
                    }
                    if (i2 != 0 && linearLayout.getChildCount() > 1) {
                        ((TextView) linearLayout.getChildAt(1)).setText(i2);
                    }
                }
            }
        } catch (Exception unused) {
        }
        return drawable2;
    }

    public static void g(Activity activity) {
        if (Build.VERSION.SDK_INT > 28) {
            return;
        }
        try {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(activity);
            Field fieldT = a0.c.t(ViewConfiguration.class, "sHasPermanentMenuKey");
            if (fieldT != null) {
                fieldT.setAccessible(true);
                fieldT.setBoolean(viewConfiguration, false);
            }
        } catch (Exception unused) {
        }
    }

    public static void h(Activity activity, int i2) {
        ActionBar actionBar = activity.getActionBar();
        if (actionBar == null) {
            return;
        }
        int color = (i2 == R.attr.colorPrimary && t0.b.k(1024)) ? activity.getResources().getColor(R.color.ab_background_material_dark_amoled) : c.c(activity, i2);
        boolean z2 = (t0.b.f2087h & 255) > 1;
        if (z2) {
            if (Build.VERSION.SDK_INT < 21) {
                j.a aVar = new j.a(activity);
                boolean z3 = aVar.f1139a;
                if (z3) {
                    aVar.f1141c.setVisibility(0);
                }
                boolean zL = t0.b.l(1);
                boolean z4 = aVar.f1140b;
                if (zL && z4) {
                    aVar.f1142d.setVisibility(0);
                }
                if (z3) {
                    aVar.f1141c.setBackgroundColor(color);
                }
                if (z4) {
                    aVar.f1142d.setBackgroundColor(color);
                }
            } else {
                activity.getWindow().setStatusBarColor(color);
            }
        }
        if (i2 != R.attr.colorPrimary || z2 || t0.b.k(1024)) {
            ColorDrawable colorDrawable = new ColorDrawable(color);
            actionBar.setBackgroundDrawable(colorDrawable);
            actionBar.setSplitBackgroundDrawable(colorDrawable);
        } else {
            TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes(new int[]{android.R.attr.actionBarStyle});
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
            if (resourceId == 0) {
                boolean zB = c.b(activity, R.attr.isLightActionBar);
                if (v0.b.j(activity)) {
                    resourceId = zB ? android.R.style.Widget.DeviceDefault.Light.ActionBar : android.R.style.Widget.DeviceDefault.ActionBar;
                } else {
                    resourceId = zB ? android.R.style.Widget.DeviceDefault.Light.ActionBar.Solid : android.R.style.Widget.DeviceDefault.ActionBar.Solid;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            TypedArray typedArrayObtainStyledAttributes2 = activity.obtainStyledAttributes(resourceId, new int[]{android.R.attr.background, android.R.attr.backgroundSplit});
            if (t0.b.k(256) && Build.VERSION.SDK_INT == 19 && !t0.b.l(1)) {
                actionBar.setBackgroundDrawable(new ColorDrawable(Color.parseColor("#90000000")));
            } else {
                actionBar.setBackgroundDrawable(typedArrayObtainStyledAttributes2.getDrawable(0));
            }
            actionBar.setSplitBackgroundDrawable(typedArrayObtainStyledAttributes2.getDrawable(1));
            typedArrayObtainStyledAttributes2.recycle();
        }
        if (Build.VERSION.SDK_INT < 19) {
            actionBar.setDisplayHomeAsUpEnabled(false);
            actionBar.setDisplayHomeAsUpEnabled(true);
        }
    }

    public static Menu i(AlertDialog.Builder builder, int i2, int i3, PopupMenu.OnMenuItemClickListener onMenuItemClickListener) {
        Context context = builder.getContext();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.ad_title, (ViewGroup) null, false);
        builder.setCustomTitle(viewInflate);
        ((TextView) viewInflate.findViewById(R.id.alertTitle)).setText(i2);
        View viewFindViewById = viewInflate.findViewById(R.id.titleButton);
        PopupMenu popupMenu = new PopupMenu(context, viewFindViewById, 8388661);
        popupMenu.inflate(i3);
        popupMenu.setOnMenuItemClickListener(onMenuItemClickListener);
        viewFindViewById.setOnClickListener(new a(popupMenu));
        viewFindViewById.setOnTouchListener(popupMenu.getDragToOpenListener());
        return popupMenu.getMenu();
    }

    public static void j(AlertDialog alertDialog, View.OnClickListener onClickListener) {
        Button button;
        if (Build.VERSION.SDK_INT < 21 || alertDialog == null || (button = alertDialog.getButton(-3)) == null) {
            return;
        }
        Drawable drawable = alertDialog.getContext().getDrawable(R.drawable.l_help);
        if (drawable != null) {
            drawable.setColorFilter(c.d(alertDialog.getContext()), PorterDuff.Mode.SRC_IN);
        }
        button.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        button.setText("");
        button.setOnClickListener(onClickListener);
    }

    public static void k(Context context, String str) {
        Resources resources;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 33 || context == null || v0.h.e(str) || (resources = context.getResources()) == null) {
            return;
        }
        int iLastIndexOf = str.lastIndexOf(95);
        Locale locale = iLastIndexOf > 0 ? new Locale(str.substring(0, iLastIndexOf), str.substring(iLastIndexOf + 1)) : new Locale(str);
        Configuration configuration = resources.getConfiguration();
        if (i2 < 17) {
            configuration.locale = locale;
        } else {
            configuration.setLocale(locale);
        }
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
    }

    public static void l(AbsListView absListView) {
        boolean zK = t0.b.k(1536);
        if ((zK || Build.VERSION.SDK_INT > 23) && (absListView instanceof ListView)) {
            ListView listView = (ListView) absListView;
            listView.setDividerHeight(0);
            listView.setDivider(null);
        }
        if (zK) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, new ColorDrawable(-16777216));
            stateListDrawable.addState(new int[]{android.R.attr.state_focused}, new ColorDrawable(-16777216));
            absListView.setSelector(stateListDrawable);
        }
    }

    public static void m(Menu menu) {
        String str = Build.DISPLAY;
        if (str != null && v0.h.i(str).contains("flyme")) {
            return;
        }
        try {
            if (menu.getClass().getSimpleName().equals("MenuBuilder")) {
                Method declaredMethod = menu.getClass().getDeclaredMethod("setOptionalIconsVisible", Boolean.TYPE);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(menu, Boolean.TRUE);
            }
        } catch (Exception unused) {
        }
    }

    public static void n(Context context, ProgressBar progressBar, int i2) {
        if (i2 == -3) {
            i2 = c.c(context, R.attr.colorPrimary);
        }
        if (Build.VERSION.SDK_INT < 21 || !v0.b.h()) {
            progressBar.getProgressDrawable().setColorFilter(i2, PorterDuff.Mode.SRC_IN);
            progressBar.getIndeterminateDrawable().setColorFilter(i2, PorterDuff.Mode.SRC_IN);
            return;
        }
        progressBar.setProgressTintMode(PorterDuff.Mode.SRC_ATOP);
        progressBar.setProgressTintList(ColorStateList.valueOf(i2));
        progressBar.setProgressBackgroundTintList(ColorStateList.valueOf(536870912 + i2));
        progressBar.setIndeterminateTintMode(PorterDuff.Mode.SRC_ATOP);
        progressBar.setIndeterminateTintList(ColorStateList.valueOf(i2));
    }

    public static void o(Activity activity, boolean z2) {
        if (z2 && c(activity, false, null)) {
            activity.getWindow().setFlags(134217728, 134217728);
        }
        int iC = t0.b.c();
        activity.setTheme(iC);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            activity.getSplashScreen().setSplashScreenTheme(iC);
        }
        if (i2 < 21) {
            h(activity, R.attr.colorPrimary);
        }
    }

    public static void p(Menu menu, int[] iArr, boolean z2) {
        for (int i2 : iArr) {
            MenuItem menuItemFindItem = menu.findItem(i2);
            if (menuItemFindItem != null) {
                menuItemFindItem.setVisible(z2);
            }
        }
    }
}
