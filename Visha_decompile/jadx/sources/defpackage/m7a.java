package defpackage;

import android.content.Context;
import android.widget.ImageView;
import com.transsion.tools.R;
import com.transsion.utils.BaseConstant;

public abstract class m7a {
    public static void a(int i, Context context, ImageView imageView, int i2, boolean z) {
        b(i, context, imageView, i2, z);
    }

    public static void b(int i, Context context, ImageView imageView, int i2, boolean z) {
        boolean z2 = false;
        boolean z3 = b39.a(context) == BaseConstant.SCREEN_TYPE.FOLD;
        boolean z4 = i2 == R.drawable.ic_skeleton_tablet || i2 == R.drawable.ic_skeleton_day_tablet;
        if (z && !z4) {
            z2 = true;
        }
        iob iobVar = new iob(context, i2, imageView);
        int color = context.getColor(R.color.transparent);
        kob.b bVarA = iobVar.a("theme_path_1");
        if (bVarA != null) {
            bVarA.g(i);
        }
        kob.b bVarA2 = iobVar.a("theme_path_2");
        if (bVarA2 != null) {
            bVarA2.g((z4 && z) ? color : i);
        }
        kob.b bVarA3 = iobVar.a("theme_path_3");
        if (bVarA3 != null) {
            bVarA3.g(z2 ? color : i);
        }
        kob.b bVarA4 = iobVar.a("theme_path_4");
        if (bVarA4 != null) {
            bVarA4.g(i);
        }
        kob.b bVarA5 = iobVar.a("theme_path_5");
        if (bVarA5 != null) {
            bVarA5.g(z2 ? color : i);
        }
        kob.b bVarA6 = iobVar.a("theme_path_6");
        if (bVarA6 != null) {
            bVarA6.g(z2 ? color : i);
        }
        kob.b bVarA7 = iobVar.a("theme_path_7");
        if (bVarA7 != null) {
            bVarA7.g(z2 ? color : i);
        }
        kob.b bVarA8 = iobVar.a("theme_path_8");
        if (bVarA8 != null) {
            bVarA8.g(z2 ? color : i);
        }
        kob.b bVarA9 = iobVar.a("theme_path_9");
        if (bVarA9 != null) {
            bVarA9.g((z3 && z) ? color : i);
        }
        kob.b bVarA10 = iobVar.a("theme_path_10");
        if (bVarA10 != null) {
            bVarA10.g((z3 && z) ? color : i);
        }
        kob.b bVarA11 = iobVar.a("theme_path_11");
        if (bVarA11 != null) {
            if (z3 && z) {
                i = color;
            }
            bVarA11.g(i);
        }
    }
}
