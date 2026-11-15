package defpackage;

import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.TypedValue;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.common.R;
import com.transsion.dbdata.beans.SkinsMenu;
import com.transsion.dbdata.beans.ThemeData;
import com.transsion.utils.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class vha {
    public static ArrayList a = new ArrayList(Arrays.asList("Purple", "Burning", "Rhythm", "Starry", "Feather", "Metal", "Sphere", "Jellyfish", "Gradient", "Household"));
    public static ArrayList b = new ArrayList(Arrays.asList("Purple", "Burning", "Rhythm", "Feather", "Metal", "Rock"));
    public static ArrayList c = new ArrayList(Arrays.asList("Purple", "Burning", "Rhythm"));
    public static volatile String d;
    public static volatile Bitmap e;

    public static void a() {
        d = null;
        e = null;
    }

    public static Bitmap b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Bitmap bitmap = e;
        if (str.equals(d) && bitmap != null && !bitmap.isRecycled()) {
            return bitmap;
        }
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
        if (bitmapDecodeFile != null) {
            d = str;
            e = bitmapDecodeFile;
        }
        return bitmapDecodeFile;
    }

    public static ThemeData c(Context context) {
        ThemeData themeDataD = d(context);
        if (themeDataD == null || themeDataD.name == null || !q(themeDataD)) {
            return null;
        }
        return themeDataD;
    }

    public static ThemeData d(Context context) {
        return (ThemeData) w6c.f(context, "skin_theme");
    }

    public static Drawable e(Context context) {
        ThemeData themeDataD = d(context);
        if (themeDataD == null) {
            return null;
        }
        int i = themeDataD.thumbType;
        if (i != 0) {
            return k(context, i);
        }
        Bitmap bitmapB = b(themeDataD.thumbPath);
        if (bitmapB == null) {
            return null;
        }
        return new BitmapDrawable(context.getResources(), bitmapB);
    }

    public static List f() {
        Application applicationA = se.a();
        ArrayList arrayList = new ArrayList();
        int i = R.drawable.icon_skin_purple;
        arrayList.add(new SkinsMenu(i, i, applicationA.getResources().getString(R.string.local_music_skin_purple), i, applicationA.getResources().getColor(R.color.music_color_purple), -1));
        int i2 = R.drawable.icon_skin_burning;
        arrayList.add(new SkinsMenu(i2, i2, applicationA.getResources().getString(R.string.local_music_skin_burning), i2, applicationA.getResources().getColor(R.color.music_color_burning), 0));
        int i3 = R.drawable.icon_skin_rhythm;
        arrayList.add(new SkinsMenu(i3, i3, applicationA.getResources().getString(R.string.local_music_skin_rhythm), i3, applicationA.getResources().getColor(R.color.music_color_rhythm), 0));
        return arrayList;
    }

    public static String g(String str) {
        return "music_theme_new_tag" + str;
    }

    public static Object h(ThemeData themeData, int i) {
        int i2 = themeData.thumbType;
        if (i2 == 0) {
            return themeData.tabPath;
        }
        if (i2 == 2) {
            return Integer.valueOf(new int[]{R.drawable.reindeer, R.drawable.santa_claus, R.drawable.snowman, R.drawable.christmas_tree}[i]);
        }
        if (i2 == 3) {
            return Integer.valueOf(new int[]{R.drawable.chimp, R.drawable.zebra, R.drawable.elephant, R.drawable.buffalo}[i]);
        }
        if (i2 == 4) {
            return Integer.valueOf(new int[]{R.drawable.starfish, R.drawable.shark, R.drawable.turtle, R.drawable.seashells}[i]);
        }
        if (i2 == 5) {
            return Integer.valueOf(new int[]{R.drawable.pumpkin, R.drawable.winebottle, R.drawable.cat, R.drawable.skull}[i]);
        }
        if (i2 == 6) {
            return Integer.valueOf(new int[]{R.drawable.castle, R.drawable.princess, R.drawable.warrior, R.drawable.dragon}[i]);
        }
        if (i2 == 7) {
            return Integer.valueOf(new int[]{R.drawable.emoji_1, R.drawable.emoji_2, R.drawable.emoji_3, R.drawable.emoji_4}[i]);
        }
        if (i2 == 8) {
            return Integer.valueOf(new int[]{R.drawable.fish_1, R.drawable.fish_2, R.drawable.fish_3, R.drawable.fish_4}[i]);
        }
        return null;
    }

    public static Object i(int i, Context context) {
        ThemeData themeDataD = d(context);
        if (themeDataD == null) {
            return null;
        }
        if (w6c.c(context, w6c.a, false) && i >= 2) {
            i--;
        }
        return h(themeDataD, i);
    }

    public static int j(int i, Context context) {
        int i2 = (!w6c.c(context, w6c.a, false) || i < 2) ? i : i - 1;
        int[] iArr = {com.transsion.playercommon.R.drawable.ic_tab_video, com.transsion.playercommon.R.drawable.ic_tab_music, com.transsion.playercommon.R.drawable.ic_tab_download, com.transsion.playercommon.R.drawable.ic_tab_tools};
        if (i <= 0 || i >= 4) {
            return -1;
        }
        return iArr[i2];
    }

    public static Drawable k(Context context, int i) {
        if (i == 2) {
            return context.getDrawable(R.drawable.bell_thumb);
        }
        if (i == 3) {
            return context.getDrawable(R.drawable.giraffe_thumb);
        }
        if (i == 4) {
            return context.getDrawable(R.drawable.globefish_thumb);
        }
        if (i == 5) {
            return context.getDrawable(R.drawable.candy);
        }
        if (i == 6) {
            return context.getDrawable(R.drawable.sword_shield);
        }
        if (i == 7) {
            return context.getDrawable(R.drawable.emoji_thumb);
        }
        if (i == 8) {
            return context.getDrawable(R.drawable.fish_thumb);
        }
        return null;
    }

    public static int l(int i, Context context) {
        if (w6c.c(context, w6c.a, false) && i >= 2) {
            i--;
        }
        return new int[]{com.transsion.playercommon.R.drawable.ic_tab_video_model, com.transsion.playercommon.R.drawable.ic_tab_music_model, com.transsion.playercommon.R.drawable.ic_tab_download_model, com.transsion.playercommon.R.drawable.ic_tab_tools_model}[i];
    }

    public static int m(Context context, ThemeData themeData, int i) {
        if (context != null && themeData != null && themeData.name != null) {
            try {
                int identifier = context.getResources().getIdentifier("AppTheme." + themeData.name, "style", context.getPackageName());
                if (identifier == 0 && themeData.description != null) {
                    identifier = context.getResources().getIdentifier(themeData.description, "style", context.getPackageName());
                }
                if (identifier == 0) {
                    return -1;
                }
                Resources.Theme themeNewTheme = context.getResources().newTheme();
                themeNewTheme.applyStyle(identifier, true);
                TypedArray typedArrayObtainStyledAttributes = themeNewTheme.obtainStyledAttributes(new int[]{i});
                if (!typedArrayObtainStyledAttributes.hasValue(0)) {
                    return -1;
                }
                try {
                    return typedArrayObtainStyledAttributes.getBoolean(0, false) ? 1 : 0;
                } finally {
                    typedArrayObtainStyledAttributes.recycle();
                }
            } catch (Resources.NotFoundException e2) {
                LogUtils.m("Theme resource not found", e2);
            } catch (Exception e3) {
                LogUtils.m("Error getting theme boolean attribute", e3);
                return -1;
            }
        }
        return -1;
    }

    public static int n(Context context, ThemeData themeData, int i) {
        if (context == null || themeData == null || themeData.name == null) {
            return -1;
        }
        int identifier = context.getResources().getIdentifier("AppTheme." + themeData.name, "style", context.getPackageName());
        Resources.Theme themeNewTheme = context.getResources().newTheme();
        if (identifier == 0 && themeData.description != null) {
            identifier = context.getResources().getIdentifier(themeData.description, "style", context.getPackageName());
        }
        if (identifier == 0) {
            return -1;
        }
        themeNewTheme.applyStyle(identifier, true);
        TypedArray typedArrayObtainStyledAttributes = themeNewTheme.obtainStyledAttributes(new int[]{i});
        int color = typedArrayObtainStyledAttributes.getColor(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return color;
    }

    public static int o(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        return typedValue.data;
    }

    public static List p(int i) {
        ArrayList arrayList = new ArrayList();
        if (i == 2) {
            arrayList.add(Integer.valueOf(R.drawable.reindeer));
            arrayList.add(Integer.valueOf(R.drawable.santa_claus));
            arrayList.add(Integer.valueOf(R.drawable.snowman));
            arrayList.add(Integer.valueOf(R.drawable.christmas_tree));
            return arrayList;
        }
        if (i == 3) {
            arrayList.add(Integer.valueOf(R.drawable.chimp));
            arrayList.add(Integer.valueOf(R.drawable.zebra));
            arrayList.add(Integer.valueOf(R.drawable.elephant));
            arrayList.add(Integer.valueOf(R.drawable.buffalo));
            return arrayList;
        }
        if (i == 4) {
            arrayList.add(Integer.valueOf(R.drawable.starfish));
            arrayList.add(Integer.valueOf(R.drawable.shark));
            arrayList.add(Integer.valueOf(R.drawable.turtle));
            arrayList.add(Integer.valueOf(R.drawable.seashells));
            return arrayList;
        }
        if (i == 5) {
            arrayList.add(Integer.valueOf(R.drawable.pumpkin));
            arrayList.add(Integer.valueOf(R.drawable.winebottle));
            arrayList.add(Integer.valueOf(R.drawable.cat));
            arrayList.add(Integer.valueOf(R.drawable.skull));
            return arrayList;
        }
        if (i == 6) {
            arrayList.add(Integer.valueOf(R.drawable.castle));
            arrayList.add(Integer.valueOf(R.drawable.princess));
            arrayList.add(Integer.valueOf(R.drawable.warrior));
            arrayList.add(Integer.valueOf(R.drawable.dragon));
            return arrayList;
        }
        if (i == 7) {
            arrayList.add(Integer.valueOf(R.drawable.emoji_1));
            arrayList.add(Integer.valueOf(R.drawable.emoji_2));
            arrayList.add(Integer.valueOf(R.drawable.emoji_3));
            arrayList.add(Integer.valueOf(R.drawable.emoji_4));
            return arrayList;
        }
        if (i != 8) {
            return null;
        }
        arrayList.add(Integer.valueOf(R.drawable.fish_1));
        arrayList.add(Integer.valueOf(R.drawable.fish_2));
        arrayList.add(Integer.valueOf(R.drawable.fish_3));
        arrayList.add(Integer.valueOf(R.drawable.fish_4));
        return arrayList;
    }

    public static boolean q(ThemeData themeData) {
        return themeData != null && r(themeData.name);
    }

    public static boolean r(String str) {
        return c.contains(str);
    }

    public static boolean s(Context context) {
        ThemeData themeDataD = d(context);
        if (themeDataD == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("AppTheme.");
        sb.append(themeDataD.name);
        return (context.getResources().getIdentifier(sb.toString(), "style", context.getPackageName()) != 0 || TextUtils.isEmpty(themeDataD.description) || themeDataD.thumbType == 1) ? false : true;
    }

    public static boolean t(ThemeData themeData) {
        return q(themeData) && !themeData.name.equals(c.get(0));
    }

    public static void u(Context context) {
        w(context);
        olb.J0(context, R.style.AppTheme_hios, R.style.AppTheme_xos, R.style.AppTheme_itel, false);
        if (context.getTheme() != null) {
            context.getTheme().applyStyle(R.style.AppThemeIndependent, true);
        }
    }

    public static void v(Context context) {
        w(context);
        olb.J0(context, R.style.AppThemeSheet_hios, R.style.AppThemeSheet_xos, R.style.AppThemeSheet_itel, false);
        if (context.getTheme() != null) {
            context.getTheme().applyStyle(R.style.AppThemeIndependentSheet, true);
        }
    }

    public static void w(Context context) {
        if (!pp3.G || a.A()) {
            return;
        }
        ia7.setCustomDensity(context);
    }

    public static boolean x(Context context, String str) {
        if (r(str)) {
            return w6c.c(context, g(str), true);
        }
        return false;
    }
}
