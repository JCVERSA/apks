package defpackage;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.blankj.utilcode.util.Utils;

public abstract class jdc {
    public static boolean a() {
        return TextUtils.getLayoutDirectionFromLocale(Utils.a().getResources().getConfiguration().getLocales().get(0)) == 1;
    }

    public static View b(int i) {
        return ((LayoutInflater) Utils.a().getSystemService("layout_inflater")).inflate(i, (ViewGroup) null);
    }
}
